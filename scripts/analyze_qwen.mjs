import fs from "node:fs/promises";
import tokenUsage from "./token_usage.js";
import path from "node:path";
import process from "node:process";
import { fileURLToPath } from "node:url";
import { SOLO_FRY_SCHEMA_VERSION, cookingEvidence } from "./solo_fry_timeline.mjs";

const scriptDir = path.dirname(fileURLToPath(import.meta.url));
const projectDir = path.resolve(scriptDir, "..");
const manifestPath = process.env.QWEN_MANIFEST_PATH
  ? path.resolve(process.env.QWEN_MANIFEST_PATH)
  : path.join(projectDir, "video_chunks", "manifest.json");
const outputVariant = sanitizeVariant(process.env.QWEN_OUTPUT_VARIANT || "");
const analysisDir = process.env.QWEN_ANALYSIS_DIR
  ? path.resolve(process.env.QWEN_ANALYSIS_DIR)
  : outputVariant
    ? path.join(projectDir, "analysis", "variants", outputVariant)
    : path.join(projectDir, "analysis");
const chunkOutputDir = path.join(analysisDir, "chunks");
const rawOutputDir = path.join(analysisDir, "raw");

const apiKey = process.env.DASHSCOPE_API_KEY;
if (!apiKey) {
  throw new Error("缺少 DASHSCOPE_API_KEY 环境变量。");
}

const model = process.env.QWEN_MODEL || "qwen3.7-flash";
const videoFps = Number(process.env.QWEN_VIDEO_FPS || 3);
if (!Number.isFinite(videoFps) || videoFps < 0.1 || videoFps > 10) {
  throw new Error("QWEN_VIDEO_FPS 必须在 0.1 到 10 之间。");
}
const baseUrl = (process.env.DASHSCOPE_BASE_URL ||
  (process.env.DASHSCOPE_WORKSPACE_ID
    ? `https://${process.env.DASHSCOPE_WORKSPACE_ID}.cn-beijing.maas.aliyuncs.com/compatible-mode/v1`
    : "https://dashscope.aliyuncs.com/compatible-mode/v1")
).replace(/\/$/, "");

const manifest = JSON.parse(await fs.readFile(manifestPath, "utf8"));
await fs.mkdir(chunkOutputDir, { recursive: true });
await fs.mkdir(rawOutputDir, { recursive: true });

const requestedChunk = readChunkArgument(process.argv.slice(2));
const chunks = requestedChunk
  ? manifest.chunks.filter((chunk) => chunk.id === requestedChunk)
  : manifest.chunks;

if (chunks.length === 0) {
  throw new Error(`找不到片段 ${requestedChunk}。`);
}

for (const chunk of chunks) {
  await analyzeChunk(chunk);
}

function readChunkArgument(args) {
  const index = args.indexOf("--chunk");
  if (index === -1) return null;
  const value = Number(args[index + 1]);
  if (!Number.isInteger(value) || value < 1) {
    throw new Error("--chunk 后面必须是正整数。");
  }
  return value;
}

function sanitizeVariant(value) {
  return value.replace(/[^a-zA-Z0-9._-]/g, "_").replace(/^\.+/, "");
}

async function analyzeChunk(chunk) {
  const outputPath = path.join(chunkOutputDir, `chunk_${String(chunk.id).padStart(2, "0")}.json`);
  try {
    const cached = JSON.parse(await fs.readFile(outputPath, "utf8"));
    if (cached.chunk_id === chunk.id && cached.solo_fry_schema_version === SOLO_FRY_SCHEMA_VERSION && Array.isArray(cached.events)) {
      console.log(`片段 ${chunk.id} 已有结果，跳过重复API调用。`);
      return;
    }
  } catch {
    // Missing or incomplete cache: analyze this chunk normally.
  }
  const videoPath = path.resolve(path.dirname(manifestPath), chunk.file);
  const videoBytes = await fs.readFile(videoPath);
  const videoDataUrl = `data:video/mp4;base64,${videoBytes.toString("base64")}`;
  const prompt = buildPrompt(chunk);

  console.log(`正在分析片段 ${chunk.id}/${manifest.chunks.length}（原视频 ${chunk.start}s-${chunk.end}s）...`);

  const response = await fetch(`${baseUrl}/chat/completions`, {
    method: "POST",
    headers: {
      Authorization: `Bearer ${apiKey}`,
      "Content-Type": "application/json"
    },
    body: JSON.stringify({
      model,
      messages: [
        {
          role: "system",
          content: "你是做菜视频动作、食材与完整个数标注器。只根据视频中可见内容和前后帧判断，不要臆测画面外信息。完整个数指原始完整食材数量，不是切片数或切块数；两个半块仍然合计为1个，同一食材切成多片仍然只算原来的1个。无法从视频前后帧可靠还原时必须写null，禁止猜测。画面出现食材名称、重量或配料字幕时，必须优先把字幕作为食材身份和用量依据，但字幕不能代替视觉计数。严格输出JSON，不要Markdown。"
        },
        {
          role: "user",
          content: [
            {
              type: "video_url",
              video_url: { url: videoDataUrl },
              fps: videoFps
            },
            { type: "text", text: prompt }
          ]
        }
      ],
      enable_thinking: false,
      temperature: 0.1,
      max_tokens: 4000
    }),
    signal: AbortSignal.timeout(300000)
  });

  const responseText = await response.text();
  if (!response.ok) {
    throw new Error(`Qwen API ${response.status}: ${responseText.slice(0, 1500)}`);
  }

  const envelope = JSON.parse(responseText);
  tokenUsage.reportUsage(envelope.usage);
  await fs.writeFile(
    path.join(rawOutputDir, `chunk_${String(chunk.id).padStart(2, "0")}_response.json`),
    JSON.stringify(envelope, null, 2),
    "utf8"
  );

  const content = normalizeContent(envelope?.choices?.[0]?.message?.content);
  const parsed = extractJson(content);
  const normalized = normalizeResult(parsed, chunk);
  await fs.writeFile(outputPath, JSON.stringify(normalized, null, 2), "utf8");
  console.log(`片段 ${chunk.id} 完成：${normalized.events.length} 个动作，结果写入 ${path.relative(projectDir, outputPath)}`);
}

function buildPrompt(chunk) {
  return `分析这段${chunk.duration}秒的做菜视频片段。时间必须相对于本片段，从0秒开始。

本作品只跟踪以下菜单食材：pork、green_pepper、garlic、egg、small_chili。食材名称只能使用这5个英文标签或unknown，禁止输出其他名称，也禁止把外观相似的菜单外食材硬匹配进来。

small_chili表示小米辣/小米椒，通常是细小尖椒，可以是红色或绿色；green_pepper表示较大的青椒。保留切成段或圈后仍能确认的身份；不要只凭颜色猜成小米辣，无法区分时写unknown。egg表示带壳鸡蛋、蛋液、煎蛋或炒蛋。菜单里存在一种食材，不代表当前画面一定有它。

食材被切成片、丝、块或碎末后仍保持原来的身份。炒锅中发生遮挡、翻动、变色时，要结合本片段前后帧追踪已经明确出现的食材；某一帧暂时看不见不能单独证明它已经离开锅。时间线只记录有当前视频证据的结果，不得凭菜单猜测。

只标记明确可见、可能用于驱动声音效果的动作。action使用以下英文值之一：
wash, chop, marinate, stir_fry, plate, seasoning, add_liquid, idle, unknown.

不要为无动作镜头创建事件。相邻的同一动作应合并成一个时间段。食材不确定时ingredient写unknown，不要猜测。

每个事件必须额外返回target_ingredients、pan_ingredients、cooking_scope：
- target_ingredients只列出此动作正在处理的主体食材；pan_ingredients只列出当时确实在锅中的食材。砧板、台面、旁边碗里的待用食材不属于锅内食材。
- cooking_scope只能是solo、mixed或unknown。单独煸炒一种主体食材时写solo，target_ingredients恰好一个；两种或更多主体食材共同翻炒时写mixed，target_ingredients列出这些主体食材。少量油、调味料或辅助香料不会自动把单炒改成合炒。
- 炒过后盛出的食材，要等看到重新入锅才再次加入pan_ingredients；短暂遮挡不等于盛出。
- 每次单独煸炒必须单独记录起止区间：从该主体入锅开始炒，到停炒/盛出结束。相邻镜头仍属于同一轮时保持连续；主体改变、食材盛出或进入合炒时必须拆成不同事件，不能把单炒与后面的合炒合并。
- 最后回锅合炒要明确标mixed，不能把画面中最显眼的一个食材当成独炒。主体或锅内成分无法可靠确认时写unknown，不要推测。
- 非炒菜事件的cooking_scope写unknown，仍可填写该动作明确针对的target_ingredients；pan_ingredients没有证据时为空数组。

每个事件还必须返回visible_ingredients数组：
- 返回该事件画面中明确可见的全部食材种类，数组长度不设上限，不得只选择1到2种。
- 同一种食材只写一个对象。
- whole_count只填写原始完整食材个数的正整数。两个半块是1个；同一食材的多片、多块或碎末仍属于原来的1个，禁止按切片数、切块数计数。
- 优先使用本视频片段中的前后帧追踪原始完整个数；仍无法可靠判断时whole_count写null。
- count_confidence范围0到1。
- count_basis只能是whole_visible、reconstructed_whole、video_tracking或uncertain；禁止使用slice_count和piece_count。

如果画面显示食材文字：
- ingredient使用字幕所表达的规范英文食材名。
- ingredient_source写onscreen_text。
- label_text原样抄录可见的食材名称和重量。
如果没有文字，只能根据外观判断，ingredient_source写visual；无法判断写unknown。

严格返回：
{"chunk_id":${chunk.id},"events":[{"start":0.0,"end":2.5,"action":"chop","ingredient":"green_pepper","target_ingredients":["green_pepper"],"pan_ingredients":[],"cooking_scope":"unknown","visible_ingredients":[{"name":"green_pepper","whole_count":1,"count_confidence":0.92,"count_basis":"video_tracking"}],"ingredient_source":"onscreen_text","label_text":"青椒","confidence":0.92,"description":"切青椒"}]}

要求：start和end单位为秒；0<=start<end<=${chunk.duration}；confidence范围0到1；ingredient_source只能是onscreen_text、visual或unknown；没有明确动作时events为空数组。`;
}

function normalizeContent(content) {
  if (typeof content === "string") return content;
  if (Array.isArray(content)) {
    return content.map((item) => typeof item === "string" ? item : item?.text || "").join("");
  }
  throw new Error("API响应中没有可读取的文本内容。");
}

function extractJson(text) {
  const cleaned = text.replace(/```(?:json)?/gi, "").replace(/```/g, "").trim();
  const start = cleaned.indexOf("{");
  const end = cleaned.lastIndexOf("}");
  if (start === -1 || end <= start) {
    throw new Error(`模型没有返回JSON：${cleaned.slice(0, 500)}`);
  }
  return JSON.parse(cleaned.slice(start, end + 1));
}

function normalizeResult(result, chunk) {
  const events = Array.isArray(result.events) ? result.events : [];
  return {
    chunk_id: chunk.id,
    chunk_start: chunk.start,
    chunk_end: chunk.end,
    model,
    solo_fry_schema_version: SOLO_FRY_SCHEMA_VERSION,
    events: events
      .map((event) => {
        const localStart = clamp(Number(event.start), 0, chunk.duration);
        const localEnd = clamp(Number(event.end), 0, chunk.duration);
        return {
          local_start: round(localStart),
          local_end: round(localEnd),
          global_start: round(chunk.start + localStart),
          global_end: round(chunk.start + localEnd),
          action: String(event.action || "other"),
          ingredient: String(event.ingredient || "unknown"),
          ...cookingEvidence(event),
          visible_ingredients: normalizeVisibleIngredients(event.visible_ingredients),
          ingredient_source: normalizeIngredientSource(event.ingredient_source),
          label_text: String(event.label_text || ""),
          confidence: clamp(Number(event.confidence) || 0, 0, 1),
          description: String(event.description || "")
        };
      })
      .filter((event) => event.local_end > event.local_start)
  };
}

function normalizeVisibleIngredients(value) {
  if (!Array.isArray(value)) return [];
  const selected = new Map();
  for (const item of value) {
    if (!item || typeof item !== "object") continue;
    const name = String(item.name || item.ingredient || "unknown").trim().toLowerCase();
    if (!name || name === "unknown") continue;
    const basis = normalizeCountBasis(item.count_basis);
    const candidate = {
      name,
      whole_count: normalizeWholeCount(item.whole_count),
      count_confidence: clamp(Number(item.count_confidence ?? item.confidence) || 0, 0, 1),
      count_basis: basis
    };
    const previous = selected.get(name);
    const candidateRank = [candidate.whole_count !== null ? 1 : 0, candidate.count_confidence];
    const previousRank = previous
      ? [previous.whole_count !== null ? 1 : 0, previous.count_confidence]
      : [-1, -1];
    if (!previous || candidateRank[0] > previousRank[0] ||
        (candidateRank[0] === previousRank[0] && candidateRank[1] > previousRank[1])) {
      selected.set(name, candidate);
    }
  }
  return [...selected.values()];
}

function normalizeWholeCount(value) {
  if (value === null || value === undefined || value === "") return null;
  const numeric = Number(value);
  if (!Number.isFinite(numeric) || numeric <= 0 || numeric > 999) return null;
  const nearest = Math.round(numeric);
  return Math.abs(numeric - nearest) < 1e-6 ? nearest : null;
}

function normalizeCountBasis(value) {
  const basis = String(value || "uncertain").trim().toLowerCase();
  return ["whole_visible", "reconstructed_whole", "video_tracking", "uncertain"].includes(basis)
    ? basis
    : "uncertain";
}

function normalizeIngredientSource(value) {
  const source = String(value || "unknown").toLowerCase();
  return ["onscreen_text", "visual", "unknown"].includes(source) ? source : "unknown";
}

function clamp(value, min, max) {
  return Math.min(max, Math.max(min, Number.isFinite(value) ? value : min));
}

function round(value) {
  return Math.round(value * 100) / 100;
}
