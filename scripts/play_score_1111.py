"""Play an analyzed score against Max playback OSC. Never calls a model API."""
from __future__ import annotations
import argparse,json,signal,sys,threading,time
from pathlib import Path
from pythonosc.dispatcher import Dispatcher
from pythonosc.osc_server import BlockingOSCUDPServer
from pythonosc.udp_client import SimpleUDPClient
from score_timeline_1111 import Score,Emitter,source_matches,finite,FOOD_LABELS
ACTION_LABELS={'wash':'Washing','chop':'Chopping','crack':'Cracking eggs','mix':'Mixing','marinate':'Marinating','stir_fry':'Stir-frying','plate':'Plating','transfer':'Transferring','none':'Observing','idle':'Waiting','unknown':'Unconfirmed','seasoning':'Adding seasoning','add_liquid':'Adding ingredients'}
STAGE_LABELS={'preparation':'Preparation','marinating':'Marinating','cooking':'Cooking','plating':'Final plating'}

def main():
    p=argparse.ArgumentParser();p.add_argument('--score',required=True);p.add_argument('--port',type=int,default=9001);p.add_argument('--out-port',type=int,default=9000);p.add_argument('--selection',type=float,nargs=2,default=[0,1]);p.add_argument('--snapshot',type=float)
    args=p.parse_args();data=json.loads(Path(args.score).read_text(encoding='utf-8'));score=Score(data)
    if args.snapshot is not None:print(json.dumps(score.sample(args.snapshot),ensure_ascii=False,indent=2));return
    if not source_matches(data['source'],data['source']['path']):raise ValueError('The video has changed. Prepare its 1111 timeline again.')
    client=SimpleUDPClient('127.0.0.1',args.out_port);emitter=Emitter(score,client)
    lock=threading.RLock();stop=threading.Event();state={'running':False,'progress':0.,'selection':args.selection,'dirty':False,'last_received':0.,'last_report':-99.}
    def update_state(_address,*values):
        if not values:return
        v=finite(values[0])
        if v is None:return
        with lock:
            state['running']=bool(v)
            if not state['running']:emitter.reset();state['dirty']=False
            else:state['dirty']=True
    def update_progress(_address,*values):
        if not values:return
        v=finite(values[0])
        if v is None or not 0<=v<=1:return
        with lock:state.update(progress=v,dirty=True,last_received=time.monotonic())
    def restart(_address,*_values):
        with lock:emitter.reset();state.update(progress=0.,dirty=True)
    def stdin_loop():
        for line in sys.stdin:
            try:
                msg=json.loads(line)
                if msg.get('type')=='stop':stop.set();return
                if msg.get('type')=='selection':
                    a,b=msg['selection']
                    if 0<=a<b<=1:
                        with lock:
                            if state['selection']!=[a,b]:state.update(selection=[float(a),float(b)],dirty=True)
                elif msg.get('type')=='restore':
                    a,b=map(float,msg['selection']);v=float(msg['progress'])
                    if not(0<=a<b<=1 and 0<=v<=1):raise ValueError('Invalid saved playback position')
                    with lock:
                        state.update(selection=[a,b],progress=v,running=bool(msg['running']),dirty=True)
            except (ValueError,TypeError,KeyError) as exc:
                print('Ignored control message: '+str(exc),file=sys.stderr,flush=True)
    dispatch=Dispatcher();dispatch.map('/playback/state',update_state);dispatch.map('/playback/progress',update_progress);dispatch.map('/playback/restart',restart)
    server=BlockingOSCUDPServer(('127.0.0.1',args.port),dispatch)
    threading.Thread(target=server.serve_forever,daemon=True).start();threading.Thread(target=stdin_loop,daemon=True).start()
    def halt(*_):stop.set()
    signal.signal(signal.SIGTERM,halt);signal.signal(signal.SIGINT,halt)
    emitter.reset();print('SCORE_READY',flush=True)
    try:
        while not stop.wait(.05):
            with lock:
                # No autonomous extrapolation: paused video cannot advance a score.
                a,b=state['selection'];seconds=score.duration*(a+(b-a)*state['progress'])
                if not state['running'] or not state['dirty']:continue
                state['dirty']=False
                sample=emitter.emit(seconds,running=True)
                if 'final_reveal_pulse' in sample.get('triggered_events',[]):
                    print(f'[Ending] Triggered at {seconds:.2f}s',flush=True)
                if abs(seconds-state['last_report'])>=1.5:
                    state['last_report']=seconds
                    active=', '.join(FOOD_LABELS[f] for f,v in sample['tracks'].items() if v['present']) or 'None'
                    mar=sample['tracks']['pork']['marinate'];green=sample['tracks']['green_pepper']['solo_fry'];egg=sample['tracks']['egg']['solo_fry']
                    print(f"[Timeline] {seconds:.1f}s | Action: {ACTION_LABELS.get(sample['action'],sample['action'])} | Ingredients: {active} | Stage: {STAGE_LABELS.get(sample['stage'],sample['stage'])} | Marinating: {mar:.0%} | Solo frying: green pepper {green:.0%} / egg {egg:.0%}",flush=True)
    finally:
        emitter.reset();server.shutdown();server.server_close();client._sock.close()

if __name__=='__main__':main()
