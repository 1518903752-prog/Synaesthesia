"""Prepare once, replay locally. Reuses source-verified semantic analysis."""
from __future__ import annotations
import argparse,hashlib,json,os,re,shutil,subprocess,sys,time
from pathlib import Path
from score_timeline_1111 import source_identity,fingerprint,compile_score,save_json
from visual_features_1111 import extract, load_mixed_fry

ROOT=Path(__file__).resolve().parents[1]
def matching_timeline(video):
    ident=source_identity(video);candidates=[]
    for source in (ROOT/'analysis/auto_timelines').glob('*/source.json'):
        try:
            meta=json.loads(source.read_text(encoding='utf-8-sig'))
            normalized=str(meta.get('source','')).replace('\\\\','\\')
            if (Path(normalized).resolve()==Path(ident['path']) and meta.get('source_size')==ident['size']
                and abs(float(meta.get('source_mtime_ms',0))-ident['mtime_ns']/1e6)<2):
                p=source.with_name('timeline.json')
                data=json.loads(p.read_text(encoding='utf-8-sig'))
                if data.get('events'):candidates.append((p.stat().st_mtime,p))
        except (OSError,ValueError,TypeError):continue
    return max(candidates)[1] if candidates else None

def run_preanalysis(node, video):
    command = [node, str(ROOT/'scripts/preanalyze_video.mjs'), '--video', str(video)]
    ready = None
    recent_output = []
    with subprocess.Popen(command, cwd=ROOT, stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
                          text=True, encoding='utf-8', creationflags=0x08000000) as process:
        for line in process.stdout:
            text = line.strip()
            if re.fullmatch(r'TOKEN_USAGE \d+', text):
                print(text, flush=True)
            elif text.startswith('TIMELINE_READY '):
                ready = Path(text[len('TIMELINE_READY '):])
            recent_output.append(line)
            recent_output = recent_output[-8:]
        code = process.wait()
    if code or ready is None:
        raise RuntimeError('Full-video analysis failed: ' + ''.join(recent_output)[-500:])
    return ready

def main():
    parser=argparse.ArgumentParser();parser.add_argument('--video',required=True);parser.add_argument('--timeline');parser.add_argument('--skip-visual',action='store_true');parser.add_argument('--mapping')
    args=parser.parse_args();video=Path(args.video).resolve();started=time.monotonic();source_identity(video)
    bundled_source = ROOT/'analysis/bundled_source.json'
    if video == ROOT/'demo.mp4' and not args.timeline and not args.skip_visual and not args.mapping and bundled_source.is_file():
        metadata = json.loads(bundled_source.read_text(encoding='utf-8'))
        if video.stat().st_size == metadata['size'] and hashlib.file_digest(video.open('rb'), 'sha256').hexdigest() == metadata['sha256']:
            score = json.loads((ROOT/'analysis/bundled_score.json').read_text(encoding='utf-8'))
            score['source'] = source_identity(video)
            score['semantic_timeline'] = str(ROOT/'analysis/timeline.json')
            score['preparation_seconds'] = round(time.monotonic()-started, 3)
            out = ROOT/'analysis/score.json'
            save_json(out, score)
            save_json(ROOT/'analysis/timeline_1111/latest_score.json', {'score':str(out),'video':str(video),'prepared_seconds':score['preparation_seconds'],'visual_status':score['visual_status']})
            print('SCORE_READY '+str(out), flush=True)
            return
    timeline=Path(args.timeline) if args.timeline else matching_timeline(video)
    if timeline is None:
        print('[Preparation] Analyzing the new video. The API is used only during preparation.',flush=True)
        node=str(ROOT/'tools/node.exe')
        timeline=run_preanalysis(node, video)
    else:print('[Preparation] Reusing the timeline for this video.',flush=True)
    payload=json.loads(timeline.read_text(encoding='utf-8-sig'))
    folder=ROOT/'analysis/scores_1111'/fingerprint({'source':source_identity(video),'events':payload['events']})[:16]
    features = {'references': []}
    if not args.skip_visual:
        reference_folder = folder / 'references'
        existing = extract(video, payload, reference_folder, ROOT)
        mixed = load_mixed_fry(video, payload, reference_folder)
        features['references'] = existing['references'] + mixed['references']
    mapping=json.loads(Path(args.mapping).read_text(encoding='utf-8')) if args.mapping else None
    score=compile_score(payload,video,features,mapping)
    score.update(semantic_timeline=str(timeline),visual_status='skipped' if args.skip_visual else 'complete',preparation_seconds=round(time.monotonic()-started,3))
    name='score_without_visual.json' if args.skip_visual else 'score.json';out=folder/name;save_json(out,score)
    save_json(ROOT/'analysis/timeline_1111/latest_score.json',{'score':str(out),'video':str(video),'prepared_seconds':score['preparation_seconds'],'visual_status':score['visual_status']})
    print('SCORE_READY '+str(out),flush=True)
if __name__=='__main__':
    try:main()
    except Exception as exc:print('Preparation failed: '+str(exc),file=sys.stderr);sys.exit(1)
