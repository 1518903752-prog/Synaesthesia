const Max = require("max-api");
const path = require("path");
const fs = require("fs");
const { spawn } = require("child_process");
const { StringDecoder } = require("string_decoder");

const projectRoot = path.resolve(__dirname, "..");
const pythonPath = path.join(
  projectRoot,
  "runtime",
  "python.exe"
);
const watcherPath = path.join(projectRoot, "scripts", "watch_images_to_max.py");
const preanalysisPath = path.join(projectRoot, "scripts", "preanalyze_video.mjs");
const nodePath = fs.existsSync("C:\\Program Files\\nodejs\\node.exe")
  ? "C:\\Program Files\\nodejs\\node.exe"
  : process.execPath;

let worker = null;
let preanalysisWorker = null;
let stopping = false;
let workerReady = false;
let aiRequested = false;
let activeTimelinePath = "";
let lastVideoSignature = "";
let queuedVideoPath = "";
let restartAfterExit = false;
let playlistSignature = "";
let activePlaybackClip = null;

function playbackClip(clip) {
  const filename = path.basename(String(clip.absolutepath || clip.filename || ""));
  if (!filename) return null;
  const selection = Array.isArray(clip.selection) ? clip.selection.map(Number) : [0, 1];
  if (selection.length !== 2 || !selection.every(Number.isFinite)
      || selection[0] < 0 || selection[0] >= selection[1] || selection[1] > 1) return null;
  return { filename, selection };
}

function sendLivePlaylist() {
  if (!workerReady || !worker || worker.exitCode !== null || stopping || !activePlaybackClip) return;
  worker.stdin.write(JSON.stringify({ type: "playback_clip", clip: activePlaybackClip }) + "\n");
}

function report(message) {
  Max.outlet("status", message);
  Max.post(`[识别控制] ${message}`);
}

// Each stream has its own decoder and line buffer. Chinese characters and
// summary lines can cross a child-process chunk boundary.
function relayOutput(prefix, onLine = () => {}) {
  const decoder = new StringDecoder("utf8");
  let pending = "";
  function postLine(line) {
    const text = line.trim();
    if (!text) return;
    onLine(text);
    if (prefix === "识别" && !text.startsWith("1.识别动作：")
        && !text.startsWith("5.结束事件：")
        && !text.startsWith("分析失败：")) return;
    Max.post(`[${prefix}] ${text}`);
  }
  const receive = (chunk) => {
    pending += decoder.write(chunk);
    const lines = pending.split(/\r?\n/);
    pending = lines.pop();
    lines.forEach(postLine);
  };
  receive.finish = () => {
    pending += decoder.end();
    postLine(pending);
    pending = "";
  };
  return receive;
}

function startAI() {
  aiRequested = true;
  if (preanalysisWorker && preanalysisWorker.exitCode === null) {
    report("新视频时间线正在生成，完成后会自动开始实时识别");
    return;
  }
  if (worker && worker.exitCode === null) {
    if (stopping) restartAfterExit = true;
    report("识别已经启动");
    return;
  }

  if (!fs.existsSync(pythonPath)) {
    report("启动失败：找不到Python虚拟环境");
    return;
  }
  if (!fs.existsSync(watcherPath)) {
    report("启动失败：找不到识别脚本");
    return;
  }
  if (!process.env.DASHSCOPE_API_KEY) {
    report("启动失败：没有读取到DASHSCOPE_API_KEY");
    return;
  }

  stopping = false;
  workerReady = false;
  const watcherArguments = ["-u", watcherPath, "--folder", projectRoot, "--new-only",
    "--interval", "0.1", "--analysis-interval", "1.5", "--fast-events",
    "--live-playlist"];
  const mainPatch = path.join(projectRoot, "Main_Patcher_0918.maxpat");
  if (fs.existsSync(mainPatch)) watcherArguments.push("--max-patch", mainPatch);
  if (queuedVideoPath) watcherArguments.push("--video", queuedVideoPath);
  if (activePlaybackClip && queuedVideoPath
      && activePlaybackClip.filename.toLowerCase() === path.basename(queuedVideoPath).toLowerCase()) {
    watcherArguments.push("--playlist-selection", ...activePlaybackClip.selection.map(String));
  }
  if (activeTimelinePath && fs.existsSync(activeTimelinePath)) {
    watcherArguments.push("--timeline", activeTimelinePath);
  } else {
    watcherArguments.push("--disable-timeline");
  }

  worker = spawn(
    pythonPath,
    watcherArguments,
    {
      cwd: projectRoot,
      env: {...process.env, PYTHONDONTWRITEBYTECODE:'1'},
      windowsHide: true,
      stdio: ["pipe", "pipe", "pipe"],
    }
  );

  const currentWorker = worker;
  const stdoutRelay = relayOutput("识别", (line) => {
    if (line !== "识别已就绪" || worker !== currentWorker
        || currentWorker.exitCode !== null || !aiRequested || stopping || workerReady) return;
    workerReady = true;
    sendLivePlaylist();
    // Readiness is reported as status; capture follows the existing Max clock.
    report("识别已就绪");
  });
  const stderrRelay = relayOutput("识别错误");
  worker.stdout.on("data", stdoutRelay);
  worker.stdout.on("end", stdoutRelay.finish);
  worker.stderr.on("data", stderrRelay);
  worker.stderr.on("end", stderrRelay.finish);
  worker.stdin.on("error", () => {}); // A stopped child can close its pipe before exiting.

  worker.on("spawn", () => report("识别已启动"));
  worker.on("error", (error) => {
    if (worker !== currentWorker) return;
    workerReady = false;
    report(`启动失败：${error.message}`);
    worker = null;
  });
  worker.on("exit", (code) => {
    if (worker !== currentWorker) return;
    worker = null;
    workerReady = false;
    if (stopping || code === 0) {
      report("识别已停止");
    } else {
      report(`识别意外停止，退出码${code}`);
    }
    stopping = false;
    if (restartAfterExit && aiRequested) {
      restartAfterExit = false;
      startAI();
    }
  });
}

function stopAI() {
  aiRequested = false;
  workerReady = false;
  restartAfterExit = false;
  if (!worker || worker.exitCode !== null) {
    worker = null;
    report("识别已停止");
    return;
  }

  stopping = true;
  worker.kill();
}

function stopWorkerForTimelineRefresh() {
  workerReady = false;
  if (!worker || worker.exitCode !== null) return;
  stopping = true;
  restartAfterExit = aiRequested;
  worker.kill();
}

async function receivePlaylistDictionary(dictionaryName) {
  try {
    const content = typeof dictionaryName === "object"
      ? dictionaryName
      : await Max.getDict(String(dictionaryName));
    const rawClips = content && content.clips;
    const clips = Array.isArray(rawClips)
      ? rawClips
      : rawClips && typeof rawClips === "object"
        ? Object.values(rawClips)
        : [];
    if (clips.length === 0) return;
    const newestClip = clips[clips.length - 1] || {};
    const currentClip = playbackClip(newestClip);
    if (currentClip && JSON.stringify(currentClip) !== JSON.stringify(activePlaybackClip)) {
      activePlaybackClip = currentClip;
      sendLivePlaylist();
    }
    const contentSignature = JSON.stringify(clips.map(c => c.absolutepath || c.filename || ""));
    if (contentSignature === playlistSignature) return;
    playlistSignature = contentSignature;
    const rawPath = String(newestClip.absolutepath || newestClip.filename || "").trim();
    if (!rawPath) return;
    const videoPath = path.isAbsolute(rawPath) ? rawPath : path.resolve(projectRoot, rawPath);
    if (!fs.existsSync(videoPath)) {
      report(`时间线未更新：找不到视频 ${path.basename(rawPath)}`);
      return;
    }
    const stat = fs.statSync(videoPath);
    const signature = `${path.resolve(videoPath).toLowerCase()}|${stat.size}|${stat.mtimeMs}`;
    if (signature === lastVideoSignature) return;
    lastVideoSignature = signature;
    queuedVideoPath = videoPath;
    refreshTimeline(videoPath);
  } catch (error) {
    report(`读取播放列表失败：${error.message}`);
  }
}

function refreshTimeline(videoPath) {
  if (!fs.existsSync(preanalysisPath)) {
    report("时间线更新失败：找不到预分析脚本");
    return;
  }
  if (preanalysisWorker && preanalysisWorker.exitCode === null) {
    preanalysisWorker.kill();
  }
  activeTimelinePath = "";
  stopWorkerForTimelineRefresh();
  report(`检测到新视频：${path.basename(videoPath)}；正在更新预分析时间线`);

  let capturedOutput = "";
  preanalysisWorker = spawn(nodePath, [preanalysisPath, "--video", videoPath], {
    cwd: projectRoot,
    env: {...process.env, PYTHONDONTWRITEBYTECODE:'1'},
    windowsHide: true,
    stdio: ["ignore", "pipe", "pipe"]
  });
  const currentPreanalysis = preanalysisWorker;
  preanalysisWorker.stdout.on("data", (chunk) => {
    capturedOutput += chunk.toString("utf8");

  });
  const preanalysisErrors = relayOutput("预分析错误");
  preanalysisWorker.stderr.on("data", preanalysisErrors);
  preanalysisWorker.stderr.on("end", preanalysisErrors.finish);
  preanalysisWorker.on("error", (error) => {
    if (preanalysisWorker !== currentPreanalysis) return;
    report(`时间线更新失败：${error.message}`);
    preanalysisWorker = null;
    if (aiRequested) startAI();
  });
  preanalysisWorker.on("exit", (code) => {
    if (preanalysisWorker !== currentPreanalysis) return;
    preanalysisWorker = null;
    const matches = [...capturedOutput.matchAll(/^TIMELINE_READY\s+(.+)$/gm)];
    const timelinePath = matches.length ? matches[matches.length - 1][1].trim() : "";
    if (code === 0 && timelinePath && fs.existsSync(timelinePath)) {
      activeTimelinePath = timelinePath;
      report(`时间线已更新：${path.basename(queuedVideoPath)}`);
    } else {
      report(`时间线更新失败，退出码${code}; 实时识别将不使用旧时间线`);
    }
    if (aiRequested) startAI();
  });
}

Max.addHandler("start_ai", startAI);
Max.addHandler("stop_ai", stopAI);
Max.addHandler("playback", (status, ...values) => {
  if (status !== "start") return;
  const source = values.find(v => typeof v === "string" && /\.(mp4|mov|m4v|avi|mkv)$/i.test(v));
  if (!source) return;
  const videoPath = path.resolve(projectRoot, source);
  if (!fs.existsSync(videoPath)) return;
  const stat = fs.statSync(videoPath);
  const signature = `${videoPath.toLowerCase()}|${stat.size}|${stat.mtimeMs}`;
  if (signature === lastVideoSignature) return;
  lastVideoSignature = signature;
  queuedVideoPath = videoPath;
  refreshTimeline(videoPath);
});
Max.addHandler(Max.MESSAGE_TYPES.DICT, receivePlaylistDictionary);

process.on("exit", () => {
  if (worker && worker.exitCode === null) worker.kill();
  if (preanalysisWorker && preanalysisWorker.exitCode === null) preanalysisWorker.kill();
});

process.on("SIGTERM", () => {
  stopAI();
  process.exit(0);
});
report("识别控制器已就绪");
