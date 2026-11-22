"""One-time food-region measurements. Nothing here runs during performance."""
from __future__ import annotations
import base64, concurrent.futures, json, os, subprocess, time
from pathlib import Path
from PIL import Image, ImageStat
import requests
from score_timeline_1111 import FOODS, FORM_VALUES, action, names, finite, unit, fingerprint, source_identity, save_json
from startup_frame import find_ffmpeg
from token_usage import report_usage

PROMPT_VERSION = 1
PROMPT = '''Inspect the numbered cooking-video reference images independently.
Locate ONLY the requested food in each image, not the plate, board, hand or pan.
IDs: pork=meat, egg=egg/egg liquid/scrambled egg, garlic, small_chili=small red chili,
green_pepper=green pepper. Return JSON {"references":[{"id":0,"visible":true,
"bbox":[x0,y0,x1,y1],"form":"whole","confidence":0.9}]}.
bbox uses 0..1000 relative to image width/height and tightly encloses visible food.
form: whole,halved,pieces,sliced,strips,minced,liquid,unknown. A pile may contain
many pieces. For egg liquid use liquid; do not invent a solid particle size.
If occluded, absent or too ambiguous: visible=false,bbox=null,form=unknown.
Do not infer actual mass/portion from image size. No explanation.'''

def references(payload):
    result=[]
    for f in FOODS:
        es=[e for e in payload.get('events',[]) if f in (names(e.get('target_ingredients')) or names(e.get('ingredient')))]
        if not es: continue
        first=min(es,key=lambda e:e['start'])
        times=[float(first['start'])+min(1.,(first['end']-first['start'])*.25)]
        cuts=[e for e in es if action(e)=='chop']
        if cuts:times.append(float(cuts[0]['end'])-.7)
        else:
            heat=[e for e in es if action(e)=='stir_fry' and len(names(e.get('target_ingredients')))==1]
            if heat:times.append(float(heat[0]['end'])-1.)
        for t in times:
            if not any(v['ingredient']==f and abs(v['seconds']-t)<.5 for v in result):
                result.append({'id':len(result),'ingredient':f,'seconds':round(max(0,t),3)})
    return result

MIXED_FRY_INTERVAL = 2.


def load_mixed_fry(video, payload, directory):
    """Load measurements made locally for this exact video and event list."""
    path = Path(directory) / 'mixed_fry_local.json'
    if not path.is_file():
        return {'references': []}
    data = json.loads(path.read_text(encoding='utf-8'))
    identity = {'source': source_identity(video), 'events': fingerprint(payload['events']),
                'sample_interval': MIXED_FRY_INTERVAL}
    if data.get('identity') != identity:
        return {'references': []}
    return data


def extract(video, payload, directory, project, model=None):
    directory=Path(directory);directory.mkdir(parents=True,exist_ok=True)
    model=model or os.environ.get('QWEN_MODEL','qwen3.7-flash')
    identity={'source':source_identity(video),'events':fingerprint(payload['events']),
              'model':model,'prompt_version':PROMPT_VERSION,'prompt_sha256':fingerprint(PROMPT)}
    path=directory/'visual_features.json'
    cache_ok=False
    if path.exists():
        cached=json.loads(path.read_text(encoding='utf-8'))
        cache_ok=cached.get('identity')==identity
        if cached.get('identity')==identity and cached.get('complete'):
            print('[Preparation] Reusing cached ingredient features.',flush=True);return cached
    key=os.environ.get('DASHSCOPE_API_KEY')
    if not key:raise RuntimeError('Initial ingredient-region analysis requires DASHSCOPE_API_KEY')
    ffmpeg=find_ffmpeg(Path(project));refs=references(payload)
    for ref in refs:
        image=directory/f"reference_{ref['id']:02d}_{ref['ingredient']}.jpg"
        if not image.exists():
            subprocess.run([ffmpeg,'-hide_banner','-loglevel','error','-ss',str(ref['seconds']),'-i',str(video),'-frames:v','1','-vf','scale=640:-2','-q:v','3','-y',str(image)],check=True,capture_output=True,creationflags=0x08000000)
        ref['image']=str(image)
    base=os.environ.get('DASHSCOPE_BASE_URL','').rstrip('/')
    if not base:
        workspace=os.environ.get('DASHSCOPE_WORKSPACE_ID')
        base=f'https://{workspace}.cn-beijing.maas.aliyuncs.com/compatible-mode/v1' if workspace else 'https://dashscope.aliyuncs.com/compatible-mode/v1'
    metrics=[]
    save_json(path,{'identity':identity,'complete':False})
    def batch(items):
        response_path=directory/f"response_{items[0]['id']:02d}.json"
        if cache_ok and response_path.exists():
            old=json.loads(response_path.read_text(encoding='utf-8'))
            if old.get('ids')==[r['id'] for r in items] and old.get('prompt_version',1)==PROMPT_VERSION:
                parsed=old['response'];records=parsed if isinstance(parsed,list) else parsed.get('references',[])
                return items,records,{'ids':old['ids'],'cached':True,'seconds':old['seconds'],'usage':old['usage']}
        content=[]
        for r in items:
            content += [{'type':'text','text':f"id={r['id']}; requested food={r['ingredient']}; time={r['seconds']}s"},
                        {'type':'image_url','image_url':{'url':'data:image/jpeg;base64,'+base64.b64encode(Path(r['image']).read_bytes()).decode()}}]
        started=time.monotonic()
        res=requests.post(base+'/chat/completions',headers={'Authorization':'Bearer '+key},json={
            'model':model,'enable_thinking':False,'temperature':0,'max_tokens':1000,
            'response_format':{'type':'json_object'},
            'messages':[{'role':'system','content':PROMPT},{'role':'user','content':content}]},timeout=(15,90))
        if res.status_code!=200:raise RuntimeError(f'Visual analysis failed with HTTP {res.status_code}')
        raw=res.json()
        report_usage(raw.get('usage'))
        s=raw['choices'][0]['message']['content'].strip()
        save_json(directory/f"raw_{items[0]['id']:02d}.json",{'content':s,'usage':raw.get('usage',{}),'finish_reason':raw['choices'][0].get('finish_reason')})
        if s.startswith('```'):s=s.split('\n',1)[1].rsplit('```',1)[0]
        parsed=json.loads(s)
        save_json(response_path,{'ids':[r['id'] for r in items],'prompt_version':PROMPT_VERSION,'response':parsed,'usage':raw.get('usage',{}),'seconds':round(time.monotonic()-started,3)})
        records=parsed if isinstance(parsed,list) else parsed.get('references',[])
        return items,records,{'ids':[r['id'] for r in items],'seconds':round(time.monotonic()-started,3),'usage':raw.get('usage',{})}
    output=[]
    with concurrent.futures.ThreadPoolExecutor(max_workers=2) as pool:
        futures=[pool.submit(batch,refs[i:i+2]) for i in range(0,len(refs),2)]
        for future in concurrent.futures.as_completed(futures):
            items,records,metric=future.result();metrics.append(metric)
            byid={r.get('id'):r for r in records if isinstance(r,dict)}
            for ref in items:
                row={**ref,'valid':False,'brightness':None,'saturation':None,'fragmentation':None,'area':None,'form':'unknown','bbox':None,'confidence':0.}
                rec=byid.get(ref['id'],{});box=rec.get('bbox');confidence=unit(rec.get('confidence'),0)
                if rec.get('visible') is True and confidence>=.65 and isinstance(box,list) and len(box)==4 and all(finite(v) is not None for v in box):
                    x0,y0,x1,y1=[max(0,min(1000,float(v))) for v in box]
                    if x1>x0 and y1>y0:
                        im=Image.open(ref['image']).convert('RGB');w,h=im.size
                        bounds=(int(x0*w/1000),int(y0*h/1000),max(1,int(x1*w/1000)),max(1,int(y1*h/1000)))
                        crop=im.crop(bounds);stats=ImageStat.Stat(crop.convert('HSV')).mean
                        form=rec.get('form','unknown');frag=FORM_VALUES.get(form)
                        if ref['ingredient']=='egg' and form=='liquid':frag=None
                        row.update(valid=True,bbox=[x0,y0,x1,y1],confidence=confidence,form=form,
                                   brightness=round(stats[2]/255,4),saturation=round(stats[1]/255,4),
                                   fragmentation=frag,area=round((x1-x0)*(y1-y0)/1e6,4))
                        crop.save(directory/f"crop_{ref['id']:02d}_{ref['ingredient']}.jpg")
                output.append(row)
            print(f"[Preparation] Analyzed ingredient reference frames {len(output)}/{len(refs)}",flush=True)
    result={'identity':identity,'complete':True,'references':sorted(output,key=lambda r:r['id']),
            'metrics':metrics,'measurement':'HSV value/saturation means within AI bounding rectangle; background and lighting can affect measurements; area is screen fraction, not food mass.'}
    save_json(path,result);return result
