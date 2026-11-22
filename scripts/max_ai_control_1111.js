// 1111: cloud analysis happens once while preparing; playback reads local score.
const Max = require('max-api');
const fs = require('fs');
const path = require('path');
const {spawn} = require('child_process');
const {StringDecoder} = require('string_decoder');
const root = path.resolve(__dirname, '..');
const {TokenUsage} = require('./token_usage.js');
const tokenUsage = new TokenUsage(path.join(root, 'analysis', 'token_usage.json'), (total, current) => {
  Max.outlet('/token/current', current);
  Max.outlet('/token/total', total);
});
function consumeTokenUsage(text) {
  try { return tokenUsage.consumeLine(text); }
  catch (error) { Max.post('Could not record the cumulative token count: ' + error.message); return true; }
}
const python = path.join(root, 'runtime', 'python.exe');
let worker = null, preparation = null, requested = false, generation = 0;
let source = '', signature = '', score = '', selection = [0, 1], restarting = false, workerReady = false;
const playbackState = {running:false,progress:0};
function report(text) { Max.outlet('status', text); Max.post('[1111] ' + text); }
function lines(stream, fn) {
  const decoder = new StringDecoder('utf8'); let rest = '';
  stream.on('data', c => { const all = (rest + decoder.write(c)).split(/\r?\n/); rest = all.pop(); all.filter(Boolean).forEach(fn); });
  stream.on('end', () => { rest += decoder.end(); if (rest.trim()) fn(rest.trim()); });
}
function send(message) {
  if (worker && worker.exitCode === null && worker.stdin.writable && (workerReady || message.type==='stop')) worker.stdin.write(JSON.stringify(message) + '\n');
}
function restorePlayer() {
  send({type:'restore',selection,progress:playbackState.progress,running:playbackState.running});
}
function stopWorker() {
  if (!worker || worker.exitCode !== null) return;
  const old = worker; send({type: 'stop'}); workerReady=false;
  const timer = setTimeout(() => { if (old.exitCode === null) old.kill(); }, 1600);
  old.once('exit', () => clearTimeout(timer));
}
function stopPreparation() {
  if (!preparation || preparation.exitCode !== null) return;
  // The preparer can own the full-video Node analyzer. Stop that process tree
  // when changing sources so obsolete API work cannot keep running invisibly.
  if (process.platform === 'win32') spawn('taskkill', ['/PID',String(preparation.pid),'/T','/F'], {windowsHide:true,stdio:'ignore'});
  else preparation.kill();
}
function launch() {
  if (!requested || preparation || !score) return;
  if (worker && worker.exitCode === null) return;
  restarting = false; workerReady=false;
  const child = spawn(python, ['-X', 'utf8', '-u', path.join(__dirname, 'play_score_1111.py'), '--score', score, '--selection', ...selection.map(String)],
    {cwd: root, env: {...process.env, PYTHONDONTWRITEBYTECODE:'1'}, windowsHide: true, stdio: ['pipe','pipe','pipe']});
  worker = child; child.stdin.on('error', () => {});
  lines(child.stdout, text => {
    if (child !== worker) return;
    if (text === 'SCORE_READY') {
      if (!requested) return;
      workerReady=true;restorePlayer();report('Timeline ready. Playback runs locally.');
    }
    else Max.post(text);
  });
  lines(child.stderr, text => Max.post('[1111 error] ' + text));
  child.on('error', error => report('Could not start the player: ' + error.message));
  child.on('exit', code => {
    if (worker !== child) return; worker = null; workerReady=false;
    if (code && requested && !restarting) report('Timeline player exited: ' + code);
    if (requested && restarting) launch();
  });
}
function prepare(video, force = false) {
  video=path.resolve(video);
  const stat = fs.statSync(video); const sig = video.toLowerCase() + '|' + stat.size + '|' + stat.mtimeMs;
  if (sig === signature && !force) { launch(); return; }
  source = video; signature = sig; score = ''; generation++; const gen = generation;
  restarting = requested; stopWorker();
  stopPreparation();
  report('Preparing ' + path.basename(video) + ': analyzing the timeline and reference frames before playback.');
  const child = spawn(python, ['-X','utf8','-u',path.join(__dirname,'prepare_score_1111.py'),'--video',video],
    {cwd:root, env:process.env, windowsHide:true, stdio:['ignore','pipe','pipe']});
  preparation = child; let result = '';
  lines(child.stdout, text => {
    if (consumeTokenUsage(text)) return;
    if (gen !== generation) return;
    if (text.startsWith('SCORE_READY ')) result = text.slice(12).trim();
    else Max.post(text);
  });
  lines(child.stderr, text => { if (gen === generation) Max.post('[1111 preparation error] ' + text); });
  child.on('error', error => { if (gen === generation) { preparation = null; signature = ''; report('Preparation failed: '+error.message); } });
  child.on('exit', code => {
    if (gen !== generation) return; preparation = null;
    if (code === 0 && result && fs.existsSync(result)) { score = result; report('Timeline prepared: '+path.basename(video)); launch(); }
    else { signature = ''; report('Preparation failed. Check the error details for this video.'); }
  });
}
function selectClip(clip) {
  if (!clip) return;
  const value = String(clip.absolutepath || clip.filename || '').replace(/^([A-Za-z]):\//,'$1:/');
  if (!value) return;
  const video = path.resolve(root,value);
  if (!fs.existsSync(video)) { report('Video not found: '+path.basename(video)); return; }
  const sel = Array.isArray(clip.selection) ? clip.selection.map(Number) : [0,1];
  if (sel.length === 2 && sel.every(Number.isFinite) && sel[0]>=0 && sel[0]<sel[1] && sel[1]<=1) {
    if (selection[0]!==sel[0] || selection[1]!==sel[1]) {
      selection = sel; send({type:'selection',selection});
    }
  }
  prepare(video);
}
Max.addHandler('start_ai', () => { requested = true; if (score) launch(); else if (!preparation && source) prepare(source,true); else report('The timeline will be ready when preparation finishes.'); });
Max.addHandler('stop_ai', () => { requested = false; restarting = false; stopWorker(); report('Timeline playback stopped.'); });
Max.addHandler('prepare_score', () => { if (source) prepare(source,true); });
// Playback state is cached in this existing script, rather than in Max i/f/t
// bootstrap objects. UDP remains the live transport; restore runs once on start.
Max.addHandler('/playback/state', value => {
  const n=Number(value);if (Number.isFinite(n)) playbackState.running=Boolean(n);
});
Max.addHandler('/playback/progress', value => {
  const n=Number(value);if (Number.isFinite(n)&&n>=0&&n<=1) playbackState.progress=n;
});
Max.addHandler('/playback/restart', () => {playbackState.progress=0;});
Max.addHandler('playback', (status,...values) => {
  if (status !== 'start') return;
  const file = values.find(v => typeof v === 'string' && /\.(mp4|mov|m4v|avi|mkv)$/i.test(v));
  if (file) selectClip({absolutepath:file,selection});
});
Max.addHandler(Max.MESSAGE_TYPES.DICT, async name => {
  try { const data = typeof name === 'object' ? name : await Max.getDict(String(name));
    const clips = Array.isArray(data.clips) ? data.clips : Object.values(data.clips || {}); selectClip(clips.at(-1));
  } catch (error) { report('Could not read the video: '+error.message); }
});
process.on('exit', () => { if (worker) worker.kill(); stopPreparation(); });
process.on('SIGTERM', () => { requested=false; stopWorker(); stopPreparation(); setTimeout(()=>process.exit(0),700); });
report('1111 timeline controller loaded.');
try { tokenUsage.emitTotal(); }
catch (error) { Max.post('Could not read the cumulative token count: ' + error.message); }
Max.outlet('controller_ready',1);
try { const saved=JSON.parse(fs.readFileSync(path.join(root,'Synaesthesia.maxpat'),'utf8')); const playlist=saved.patcher.boxes.find(b=>b.box.id==='obj-11'); selectClip(playlist.box.data.clips.at(-1)); }
catch(error) { report('Import a video to prepare the timeline: '+error.message); }
