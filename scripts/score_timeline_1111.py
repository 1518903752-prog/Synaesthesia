"""Compile semantic video analysis into a deterministic, seekable musical score.

No API calls or audio processing occur in this module. Times are SOURCE-video
seconds; playlist selection is applied by the playback adapter, never twice.
"""
from __future__ import annotations

import bisect
import hashlib
import json
import math
import re
from pathlib import Path

VERSION = 1
FOODS = ('pork', 'egg', 'garlic', 'small_chili', 'green_pepper')
INSTRUMENTS = {'pork':'vocal', 'egg':'bass', 'garlic':'pluck',
               'small_chili':'lead', 'green_pepper':'pad'}
FOOD_LABELS = {'pork':'Pork','egg':'Egg','garlic':'Garlic','small_chili':'Chili','green_pepper':'Green pepper'}
HEAT = {'stir_fry','frying','cooking','boil','boiling','steam','steaming','bake','baking'}
SERVE = {'transfer','plate','plating','serve_out'}
FORM_VALUES = {'whole':0.,'halved':.25,'pieces':.5,'sliced':.65,'strips':.65,'minced':1.}
FEATURES = ('brightness', 'saturation', 'area')
COLOR_FEATURES = ('brightness', 'saturation')
# At 640 x 360, 0.06% is about 138 selected pixels. Smaller regions are
# too sensitive to a sliver of exposed food, pan reflections or a neighbour.
MIN_COOKING_COLOR_AREA = .0006
COLOR_FADE_SECONDS = 2.
FEATURE_DEFAULTS = {'brightness': .5, 'saturation': .5, 'area': 0.}

def finite(value, default=None):
    try:
        value = float(value)
        return value if math.isfinite(value) else default
    except (ValueError,TypeError): return default

def unit(value, default=None):
    v=finite(value)
    return default if v is None else max(0.,min(1.,v))

def source_identity(path):
    p=Path(path).resolve();s=p.stat()
    return {'path':str(p),'size':s.st_size,'mtime_ns':s.st_mtime_ns}

def source_matches(identity, path):
    try:
        now=source_identity(path)
        return (str(identity['path']).casefold()==now['path'].casefold()
                and identity['size']==now['size'] and identity['mtime_ns']==now['mtime_ns'])
    except (OSError,KeyError,TypeError): return False

def fingerprint(value):
    return hashlib.sha256(json.dumps(value,sort_keys=True,ensure_ascii=False,separators=(',',':')).encode()).hexdigest()

def action(event):
    a=str(event.get('action_group') or event.get('action') or 'unknown').lower()
    if a in {'cut','cutting','chopping'}:a='chop'
    if a=='chop':
        # Prefer an explicit non-cutting description over a coarse action
        # label, without excluding any ingredient by name.
        description=str(event.get('description','')).casefold()
        cutting=re.search(r'\b(?:cut(?:ting)?|chop(?:ping)?|slic(?:e|ing)|dic(?:e|ing)|minc(?:e|ing))\b(?!\s+board)|切|剁',description)
        cracking=re.search(r'\b(?:crack(?:ing|ed)?|break(?:ing)?)\b|敲开|敲破',description)
        mixing=re.search(r'\b(?:whisk(?:ing)?|beat(?:ing)?|mix(?:ing)?)\b|打蛋|打散|搅拌',description)
        if not cutting and (cracking or mixing):return 'crack' if cracking else 'mix'
    if a in HEAT:return 'stir_fry'
    if a in {'washing'}:return 'wash'
    if a in {'marinating','marinated'}:return 'marinate'
    return a

def names(value):
    if isinstance(value,str):value=[value]
    if not isinstance(value,list):return []
    chosen={v.get('name') if isinstance(v,dict) else v for v in value}
    return [f for f in FOODS if f in chosen]

def windows(payload, field, events, act=None):
    result={}
    for w in payload.get(field,[]) or []:
        if not isinstance(w,dict) or w.get('ingredient') not in FOODS:continue
        a,b=finite(w.get('start')),finite(w.get('end'))
        if a is not None and b is not None and 0 <= a < b:
            f=w['ingredient']
            if act=='chop':
                source_ids=set(w.get('source_events',[]) or [])
                sources=[e for e in events if e['id'] in source_ids]
                if sources and not any(e['action']=='chop' and f in e['targets'] for e in sources):continue
            if f not in result or a<result[f][0]:result[f]=[a,b]
    if act:
        for e in events:
            if e['action']!=act:continue
            targets=e['targets']
            if field=='solo_fry_windows' and (len(targets)!=1 or e.get('scope')=='mixed'):continue
            for f in targets:
                result.setdefault(f,[e['start'],e['end']])
    if act=='marinate':
        # Mixing in seasonings does not end a marinating episode. Use the
        # complete first preparation block up to the next cooking/work stage.
        for f in FOODS:
            first=next((i for i,e in enumerate(events) if e['action']=='marinate' and f in e['targets']),None)
            if first is None:continue
            start=events[first]['start'];end=events[first]['end']
            for e in events[first+1:]:
                if e['action']in {'stir_fry','wash','chop'}:break
                if e['action']=='marinate':
                    if f not in e['targets']:break
                    end=max(end,e['end'])
            if not payload.get(field):result[f]=[start,end]
    return result

def verified_egg_cracks(payload, video, duration):
    plan = payload.get('egg_crack_plan')
    if not isinstance(plan, dict) or not source_matches(plan.get('source', {}), video):
        return []
    times = plan.get('seconds')
    if not isinstance(times, list):
        return []
    return sorted({seconds for value in times
                   if (seconds := finite(value)) is not None and 0 <= seconds <= duration})


def compile_score(payload, video, features=None, mapping=None):
    duration=finite(payload.get('source_duration_seconds'))
    if duration is None or duration<=0:raise ValueError('The video timeline has no valid duration')
    events=[]
    for i,e in enumerate(payload.get('events',[])):
        if not isinstance(e,dict):continue
        a,b=finite(e.get('start')),finite(e.get('end'))
        if a is None or b is None or not 0<=a<b<=duration+.05:continue
        if finite(e.get('confidence'),0)<.55:continue
        visible=names(e.get('visible_ingredients',[]))
        targets=names(e.get('target_ingredients',[])) or names(e.get('ingredient'))
        pan=names(e.get('pan_ingredients',[]))
        counts={v.get('name'):int(v['whole_count']) for v in e.get('visible_ingredients',[])
                if isinstance(v,dict) and v.get('name') in FOODS
                and isinstance(v.get('whole_count'),int) and 0<v['whole_count']<1000}
        events.append({'id':str(e.get('id',i)),'start':a,'end':min(duration,b),
            'action':action(e),'targets':targets,'pan':pan,'visible':visible,
            'counts':counts,'scope':e.get('cooking_scope','unknown'),
            'confidence':unit(e.get('confidence'),0)})
    events.sort(key=lambda e:(e['start'],e['end']))
    if not events:raise ValueError('No ingredient or cooking events are available')
    plan=payload.get('serving_plan',{})
    # Trust only annotation IDs tied to this exact event list.
    plan_valid=(isinstance(plan,dict) and plan.get('schema_version')==1 and plan.get('complete') is True
                and source_matches(plan.get('source',{}),video)
                and plan.get('events_sha256')==fingerprint(payload.get('events',[])))
    final_ids=set(plan.get('finished_display_event_ids',[])) if plan_valid else set()
    last_heat=max((e['end'] for e in events if e['action']=='stir_fry'),default=0.)
    displays=[e['start'] for e in events if e['id'] in final_ids and e['start']>=last_heat]
    final_time=min(displays) if displays else None
    if final_time is None:
        explicit=[e['start'] for e in events if e['action'] in {'finished','final_reveal','presentation'} and e['start']>=last_heat]
        if explicit:final_time=min(explicit)
    # End fallback is a known video boundary, not a guessed finished dish. It
    # only fires with actual progress reaching the end, never from wall time.
    final_source='confirmed_display' if final_time is not None else 'video_end'
    if final_time is None:final_time=duration
    final_serving=[]
    if plan_valid:
        known={e['id']:e for e in events}
        for w in plan.get('windows',[]):
            e=known.get(w.get('event_id')) if isinstance(w,dict) else None
            if e and w.get('role')=='final' and e['start']>=last_heat:final_serving.append(e['start'])
    plating=min(final_serving) if final_serving else min((e['start'] for e in events if e['action'] in SERVE and e['start']>=last_heat),default=final_time)
    for e in events:
        a=e['action']
        if a in {'wash','chop','crack','mix'}:stage='preparation'
        elif a=='marinate':stage='marinating'
        elif a=='stir_fry':stage='cooking'
        elif a in SERVE:stage='plating' if e['start']>=plating else 'cooking'
        elif e['start']>=final_time:stage='plating'
        else:stage=None
        e['stage']=stage
        e['active_foods'] = e['visible'].copy()
    feature_map={}
    for item in (features or {}).get('references',[]):
        f=item.get('ingredient')
        if f not in FOODS or not item.get('valid'):continue
        fields = ('seconds', 'brightness', 'saturation', 'area', 'form', 'fragmentation',
                  'image', 'bbox', 'confidence')
        if 'mixed_fry_start' in item:
            fields += ('mixed_fry_start', 'previous_sample')
        fields += tuple(key for key in ('color_only', 'color_reliable') if key in item)
        item = {key: item.get(key) for key in fields}
        if finite(item['seconds']) is not None:feature_map.setdefault(f,[]).append(item)
    for v in feature_map.values():v.sort(key=lambda x:x['seconds'])
    assignments={**INSTRUMENTS,**(mapping or {})}
    if any(assignments[f] not in INSTRUMENTS.values() for f in FOODS):raise ValueError('The instrument mapping contains an unsupported instrument')
    if assignments!=INSTRUMENTS:
        raise ValueError('Version 1111 uses the ingredient-to-instrument switches in Max. Update the Max routing when changing the instrument mapping.')
    dish_ingredients = names(plan.get('final_dish_ingredients')) if plan_valid else []
    return {'schema_version':VERSION,'source':source_identity(video),'duration_seconds':duration,
        'final_dish_ingredients':dish_ingredients,
        'events':events,'analysis_fingerprint':fingerprint(payload),'instrument_map':assignments,
        'solo_fry':windows(payload,'solo_fry_windows',events,'stir_fry'),
        'chop':windows(payload,'chop_windows',events,'chop'),
        'egg_cracks':verified_egg_cracks(payload,video,duration),
        'marinate':windows(payload,'marinate_windows',events,'marinate'),
        'features':feature_map,'final_event':{'seconds':final_time,'basis':final_source},
        'presence_policy':('visible_ingredients_with_final_dish' if dish_ingredients else 'visible_ingredients'),
        'notes':['Cooking progress measures the relative progress of a step in the edit.',
                 'Unknown visual features are stored as null. Normalized outputs use 0.5 as the neutral default.',
                 'Instrument switches follow visible ingredients. During final plating they also retain the confirmed final-dish ingredients.']}

def progress(window,t):
    if not window:return 0.
    return round(max(0.,min(1.,(t-window[0])/(window[1]-window[0]))),4)

class Score:
    def __init__(self,payload):
        if payload.get('schema_version')!=VERSION:raise ValueError('Unsupported 1111 timeline version')
        self.data=payload;self.events=payload['events'];self.starts=[e['start'] for e in self.events]
        self.duration=float(payload['duration_seconds'])
        self.egg_cracks = payload.get('egg_cracks') or []
        self.final_dish_ingredients = set(names(payload.get('final_dish_ingredients')))
        self.first_visible = {}
        for event in self.events:
            for food in event.get('visible', ()):
                self.first_visible.setdefault(food, event['start'])

        self.cooking_colors = {
            food: [
                ref for ref in refs
                if 'mixed_fry_start' in ref
                and ref.get('color_reliable', True)
                and finite(ref.get('area'), 0.) >= MIN_COOKING_COLOR_AREA
                and all(0. <= finite(ref.get(key), -1.) <= 1. for key in COLOR_FEATURES)
            ]
            for food, refs in payload.get('features', {}).items()
        }

    def feature(self,food,key,t):
        if t < self.first_visible.get(food, math.inf):
            return 0.
        refs = [ref for ref in self.data.get('features', {}).get(food, [])
                if unit(ref.get(key)) is not None]
        if key in COLOR_FEATURES:
            preparation = [ref for ref in refs if 'mixed_fry_start' not in ref]
            cooking = self.cooking_colors.get(food, [])
            if cooking and t >= cooking[0]['seconds']:
                return self._cooking_color(preparation, cooking, key, t)
            refs = preparation
        else:
            refs = [ref for ref in refs if not ref.get('color_only')]
            if food == 'garlic' and key == 'area':
                # Keep the established coverage instead of replacing it with
                # a cooking mask that measures only a few exposed pieces.
                before_cooking = [ref for ref in refs if 'mixed_fry_start' not in ref]
                refs = before_cooking or refs
        return self._reference_feature(refs, key, t)

    @staticmethod
    def _cooking_color(preparation, cooking, key, t):
        # Start each fade at a usable sample time. Obscured frames have no
        # target of their own, and a seek reconstructs the same held value.
        current = target = (unit(preparation[-1][key]) if preparation else FEATURE_DEFAULTS[key])
        start = cooking[0]['seconds']
        for ref in cooking:
            seconds = ref['seconds']
            if seconds > t:
                break
            fraction = min(1., (seconds - start) / COLOR_FADE_SECONDS)
            current += (target - current) * fraction
            target = unit(ref[key])
            start = seconds
        fraction = min(1., (t - start) / COLOR_FADE_SECONDS)
        return current + (target - current) * fraction

    @staticmethod
    def _reference_feature(refs, key, t):
        if not refs:return None
        if t < refs[0]['seconds'] and 'mixed_fry_start' in refs[0]:
            return None
        if len(refs)==1 or t<=refs[0]['seconds']:return unit(refs[0][key])
        if t>=refs[-1]['seconds']:return unit(refs[-1][key])
        for a,b in zip(refs,refs[1:]):
            if a['seconds']<=t<=b['seconds']:
                if t == b['seconds']:
                    return unit(b[key])
                start = a['seconds']
                if 'mixed_fry_start' in b:
                    if a.get('mixed_fry_start') != b['mixed_fry_start']:
                        return unit(a[key])
                    # Hold at a sample where the ingredient was obscured.
                    start = max(start, finite(b.get('previous_sample'), start))
                    if t <= start:
                        return unit(a[key])
                q = (t - start) / max(.0001, b['seconds'] - start)
                return unit(a[key]+(b[key]-a[key])*q)
        return None

    def chop_progress(self, food, seconds):
        if food == 'egg' and self.egg_cracks:
            count = bisect.bisect_right(self.egg_cracks, seconds)
            return round(count / len(self.egg_cracks), 4)
        return progress(self.data['chop'].get(food), seconds)

    def sample(self,seconds):
        t=finite(seconds)
        if t is None:raise ValueError('Invalid playback position')
        t=max(0.,min(self.duration,t));i=bisect.bisect_right(self.starts,t)-1
        e=self.events[i] if i>=0 else None
        visible = e.get('visible', e.get('active_foods', [])) if e else []
        previous=[v for v in self.events[:i+1] if v.get('stage')]
        stage=previous[-1]['stage'] if previous else 'preparation'
        action_name=e['action'] if e else 'idle'
        if t>=self.data['final_event']['seconds']:stage='plating'
        if stage == 'cooking' and self.final_dish_ingredients:
            pan_foods = set()
            for event in reversed(self.events[:i+1]):
                # Emptying or serving the pan ends the previous pan contents.
                if event['action'] in SERVE or ('pan' in event and not event['pan'] and not event.get('visible')):
                    break
                if event.get('stage') == 'cooking' or event['action'] == 'add_liquid':
                    pan_foods.update(event.get('pan', ()))
            visible = set(visible).union(pan_foods & self.final_dish_ingredients)
        if stage == 'plating':
            visible = self.final_dish_ingredients.union(visible)
        tracks={}
        for f in FOODS:
            features={k:self.feature(f,k,t) for k in FEATURES}
            tracks[f]={'present':int(f in visible),'instrument':self.data['instrument_map'][f],
                'count':(e.get('counts',{}).get(f,0) if e else 0),
                'solo_fry':progress(self.data['solo_fry'].get(f),t),
                'chop':self.chop_progress(f,t),
                'marinate':progress(self.data['marinate'].get(f),t),**features}
        return {'seconds':t,'stage':stage,'action':action_name,'tracks':tracks,
                'final_due':t>=self.data['final_event']['seconds']}

class Emitter:
    """Change-only OSC adapter. A seek re-samples state, never replays backlog."""
    def __init__(self,score,client):
        self.score=score;self.client=client;self.sent={};self.last_seconds=None;self.final_sent=False

    def changed(self,address,key,values):
        signature=tuple(round(v,3) if isinstance(v,float) else v for v in values)
        tag=(address,key)
        if self.sent.get(tag)!=signature:
            self.client.send_message(address,values);self.sent[tag]=signature

    def reset(self):
        self.sent.clear();self.last_seconds=None;self.final_sent=False
        for f in FOODS:
            self.client.send_message('/ingredient',[f,0,'untouched',0])
            self.client.send_message('/progress/solo_fry',[f,0.])
            self.client.send_message('/progress/chop',[f,0.])
            for key in FEATURES:
                self.client.send_message('/score1111/feature',[f,key,0.])
        self.client.send_message('/score1111/progress',['marinate','pork',0.])

    def emit_features(self,sample):
        # Values describe food, independent of presets and synthesis units.
        # Score.feature returns zero until the ingredient first appears.
        # Once visible, absent reference data uses the feature-specific default.
        for food,track in sample['tracks'].items():
            for key in FEATURES:
                value=unit(track.get(key),FEATURE_DEFAULTS[key])
                self.changed('/score1111/feature',(food,key),[food,key,round(value,4)])

    def emit(self,seconds,running=True):
        s=self.score.sample(seconds)
        if self.last_seconds is not None and s['seconds']<self.last_seconds:
            self.sent.clear()
            if s['seconds']<self.score.data['final_event']['seconds']-1:self.final_sent=False
        self.last_seconds=s['seconds']
        self.changed('/stage','stage',[s['stage'],1])
        self.changed('/process','action',[s['action'],int(s['action'] not in {'idle','unknown'})])
        for f,v in s['tracks'].items():
            food_stage='cooking' if s['stage'] in {'cooking','plating'} else ('marinating' if s['stage']=='marinating' else 'untouched')
            # /ingredient carries only name, count, stage and presence; progress has its own address.
            self.changed('/ingredient',f,[f,v['count'],food_stage,v['present']])
            self.changed('/progress/solo_fry',f,[f,v['solo_fry']])
            self.changed('/progress/chop',f,[f,v['chop']])
            if f=='pork':self.changed('/score1111/progress','marinate',['marinate',f,v['marinate']])
        self.emit_features(s)
        s['triggered_events']=[]
        if running and s['final_due'] and not self.final_sent:
            self.client.send_message('/event','final_reveal_pulse')
            s['triggered_events'].append('final_reveal_pulse')
            self.final_sent=True
        return s

def save_json(path,payload):
    path=Path(path);path.parent.mkdir(parents=True,exist_ok=True)
    temp=path.with_name(path.name+'.tmp');temp.write_text(json.dumps(payload,ensure_ascii=False,indent=2),encoding='utf-8');temp.replace(path)
