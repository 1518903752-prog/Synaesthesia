import crypto from "node:crypto";
import fs from "node:fs";
import fsp from "node:fs/promises";
import path from "node:path";
import process from "node:process";
import { spawn } from "node:child_process";
import { fileURLToPath } from "node:url";
import { addChopWindows } from "./solo_fry_timeline.mjs";

const scriptDir = path.dirname(fileURLToPath(import.meta.url));
const projectDir = path.resolve(scriptDir, "..");
const videoPath = readArgument("--video");
if (!videoPath) throw new Error("The --video argument is required.");

const resolvedVideo = await fsp.realpath(path.resolve(videoPath));
const videoStat = await fsp.stat(resolvedVideo);
const model = process.env.QWEN_MODEL || "qwen3.7-flash";
const cacheVersion = "ingredient-first-solo-fry-v1";
const videoFps = process.env.QWEN_VIDEO_FPS || "2";
const cacheKey = crypto
  .createHash("sha1")
  .update(`${cacheVersion}|${model}|${videoFps}|${resolvedVideo}|${videoStat.size}|${videoStat.mtimeMs}`)
  .digest("hex")
  .slice(0, 16);
const autoTimelineRoot = process.env.QWEN_AUTO_TIMELINE_ROOT
  ? path.resolve(process.env.QWEN_AUTO_TIMELINE_ROOT)
  : path.join(projectDir, "analysis", "auto_timelines");
const analysisDir = path.join(autoTimelineRoot, cacheKey);
const timelinePath = path.join(analysisDir, "timeline.json");
const metadataPath = path.join(analysisDir, "source.json");
const manifestPath = path.join(analysisDir, "video_chunks", "manifest.json");

if (await isUsableJson(timelinePath)) {
  const cached = JSON.parse(await fsp.readFile(timelinePath, "utf8"));
  if (addChopWindows(cached)) {
    const temporary = timelinePath + ".chop.tmp";
    await fsp.writeFile(temporary, JSON.stringify(cached, null, 2), "utf8");
    await fsp.rename(temporary, timelinePath);
  }
  await verifySoloFryFrames();
  await annotateServingPlan();
  console.log(`Reusing the timeline: ${timelinePath}`);
  console.log(`TIMELINE_READY ${timelinePath}`);
  process.exit(0);
}

const ffmpegPath = findFfmpeg();
if (!ffmpegPath) {
  throw new Error("ffmpeg.exe was not found. Set FFMPEG_PATH to its location.");
}

await fsp.mkdir(path.dirname(manifestPath), { recursive: true });
const durationSeconds = await probeDuration(ffmpegPath, resolvedVideo);
const manifest = await buildVideoChunks(ffmpegPath, resolvedVideo, durationSeconds, manifestPath);
await fsp.writeFile(manifestPath, JSON.stringify(manifest, null, 2), "utf8");
await fsp.writeFile(
  metadataPath,
  JSON.stringify(
    {
      cache_version: cacheVersion,
      source: resolvedVideo,
      source_size: videoStat.size,
      source_mtime_ms: videoStat.mtimeMs,
      model,
      generated_at: new Date().toISOString()
    },
    null,
    2
  ),
  "utf8"
);

if (process.argv.includes("--prepare-only")) {
  console.log(`PREPARE_READY ${manifestPath}`);
  process.exit(0);
}

const analysisEnvironment = {
  ...process.env,
  QWEN_MANIFEST_PATH: manifestPath,
  QWEN_ANALYSIS_DIR: analysisDir,
  QWEN_DISABLE_VERIFIED_CORRECTIONS: "1",
  QWEN_VIDEO_FPS: videoFps
};

await runProcess(process.execPath, [path.join(scriptDir, "analyze_qwen.mjs")], analysisEnvironment);
await runProcess(process.execPath, [path.join(scriptDir, "merge_timeline.mjs")], analysisEnvironment);

if (!(await isUsableJson(timelinePath))) {
  throw new Error("Analysis finished without a usable timeline.json.");
}
await verifySoloFryFrames();
await annotateServingPlan();
console.log(`TIMELINE_READY ${timelinePath}`);

async function annotateServingPlan() {
  const python = path.join(projectDir, "runtime", "python.exe");
  await runProcess(python, ["-B", "-X", "utf8", path.join(scriptDir, "annotate_serving_plan.py"),
    "--video", resolvedVideo, "--timeline", timelinePath, "--model", model], process.env);
}

async function verifySoloFryFrames() {
  const python = path.join(projectDir, "runtime", "python.exe");
  const verifier = path.join(scriptDir, "refine_solo_fry.py");
  await runProcess(python, [verifier, "--video", resolvedVideo, "--timeline", timelinePath, "--model", model], process.env);
}

function readArgument(name) {
  const index = process.argv.indexOf(name);
  return index >= 0 ? process.argv[index + 1] : "";
}

async function isUsableJson(filePath) {
  try {
    const payload = JSON.parse(await fsp.readFile(filePath, "utf8"));
    return Array.isArray(payload.events) && Number(payload.source_duration_seconds) > 0 &&
      payload.solo_fry_schema_version === 1 && Array.isArray(payload.solo_fry_windows);
  } catch {
    return false;
  }
}

function findFfmpeg() {
  const candidates = [
    process.env.FFMPEG_PATH,
    path.join(projectDir, "tools", "ffmpeg.exe"),
    "C:\\Program Files (x86)\\FormatFactory\\ffmpeg.exe",
    "C:\\Program Files\\FormatFactory\\ffmpeg.exe",
    "D:\\MAX MCP\\.tools\\ffmpeg-npm\\node_modules\\@ffmpeg-installer\\win32-x64\\ffmpeg.exe"
  ].filter(Boolean);
  for (const candidate of candidates) {
    if (fs.existsSync(candidate)) return candidate;
  }
  return "";
}

async function probeDuration(ffmpeg, source) {
  const result = await runProcess(ffmpeg, ["-hide_banner", "-i", source], process.env, true);
  const match = result.match(/Duration:\s*(\d+):(\d+):(\d+(?:\.\d+)?)/i);
  if (!match) throw new Error("Could not read the video duration.");
  const seconds = Number(match[1]) * 3600 + Number(match[2]) * 60 + Number(match[3]);
  if (!Number.isFinite(seconds) || seconds <= 0) throw new Error("Invalid video duration.");
  return Math.round(seconds * 1000) / 1000;
}

async function buildVideoChunks(ffmpeg, source, duration, destinationManifest) {
  const chunkDuration = 60;
  const overlap = 3;
  const step = chunkDuration - overlap;
  const outputDir = path.join(path.dirname(destinationManifest), "qwen_proxy");
  await fsp.mkdir(outputDir, { recursive: true });
  const chunks = [];

  for (let start = 0, id = 1; start < duration; start += step, id += 1) {
    const end = Math.min(duration, start + chunkDuration);
    const length = Math.max(0.1, end - start);
    const fileName = `chunk_${String(id).padStart(2, "0")}_${String(Math.floor(start)).padStart(4, "0")}s.mp4`;
    const outputPath = path.join(outputDir, fileName);
    const outputStat = await fsp.stat(outputPath).catch(() => null);
    if (!outputStat || outputStat.size < 1024) {
      console.log(`Preparing video segment ${id}: ${start.toFixed(1)}s-${end.toFixed(1)}s`);
      await runProcess(
        ffmpeg,
        [
          "-hide_banner",
          "-loglevel", "error",
          "-y",
          "-ss", String(start),
          "-i", source,
          "-t", String(length),
          "-map", "0:v:0",
          "-an",
          "-vf", "scale=1280:-2:force_original_aspect_ratio=decrease,fps=6",
          "-c:v", "libx264",
          "-preset", "veryfast",
          "-crf", "24",
          "-pix_fmt", "yuv420p",
          "-movflags", "+faststart",
          outputPath
        ],
        process.env
      );
    }
    chunks.push({
      id,
      start: round(start),
      end: round(end),
      duration: round(length),
      file: path.relative(path.dirname(destinationManifest), outputPath).replaceAll("\\", "/")
    });
  }

  return {
    source,
    source_duration_seconds: duration,
    chunk_duration_seconds: chunkDuration,
    overlap_seconds: overlap,
    chunks
  };
}

function round(value) {
  return Math.round(value * 1000) / 1000;
}

function runProcess(command, args, environment, allowFailure = false) {
  return new Promise((resolve, reject) => {
    const child = spawn(command, args, {
      cwd: projectDir,
      env: environment,
      windowsHide: true,
      stdio: ["ignore", "pipe", "pipe"]
    });
    let combined = "";
    child.stdout.on("data", (chunk) => {
      const text = chunk.toString("utf8");
      combined += text;
      process.stdout.write(text);
    });
    child.stderr.on("data", (chunk) => {
      const text = chunk.toString("utf8");
      combined += text;
      if (!allowFailure) process.stderr.write(text);
    });
    child.on("error", reject);
    child.on("exit", (code) => {
      if (code === 0 || allowFailure) resolve(combined);
      else reject(new Error(`${path.basename(command)} exited with code ${code}`));
    });
  });
}
