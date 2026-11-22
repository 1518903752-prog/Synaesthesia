import fs from "node:fs/promises";
import path from "node:path";
import process from "node:process";
import { fileURLToPath } from "node:url";
import { SOLO_FRY_SCHEMA_VERSION, cookingEvidence, sameCookingEvidence, firstSoloFryWindows, addChopWindows } from "./solo_fry_timeline.mjs";

const scriptDir = path.dirname(fileURLToPath(import.meta.url));
const projectDir = path.resolve(scriptDir, "..");
const manifestPath = process.env.QWEN_MANIFEST_PATH
  ? path.resolve(process.env.QWEN_MANIFEST_PATH)
  : path.join(projectDir, "video_chunks", "manifest.json");
const outputVariant = (process.env.QWEN_OUTPUT_VARIANT || "")
  .replace(/[^a-zA-Z0-9._-]/g, "_")
  .replace(/^\.+/, "");
const analysisDir = process.env.QWEN_ANALYSIS_DIR
  ? path.resolve(process.env.QWEN_ANALYSIS_DIR)
  : outputVariant
    ? path.join(projectDir, "analysis", "variants", outputVariant)
    : path.join(projectDir, "analysis");
const chunkDir = path.join(analysisDir, "chunks");
const outputPath = path.join(analysisDir, "timeline.json");
const maxOutputPath = path.join(analysisDir, "max_timeline.json");
const manifest = JSON.parse(await fs.readFile(manifestPath, "utf8"));

const fileNames = (await fs.readdir(chunkDir))
  .filter((name) => /^chunk_\d+\.json$/.test(name))
  .sort();

const events = [];
for (const fileName of fileNames) {
  const chunk = JSON.parse(await fs.readFile(path.join(chunkDir, fileName), "utf8"));
  for (const event of chunk.events || []) {
    events.push({
      ...event,
      canonical_action: canonicalAction(event.action),
      ingredient_source: event.ingredient_source || "unknown",
      label_texts: event.label_text ? [event.label_text] : [],
      source_chunks: [chunk.chunk_id],
      descriptions: event.description ? [event.description] : []
    });
  }
}

events.sort((a, b) => a.global_start - b.global_start || a.global_end - b.global_end);

const merged = [];
for (const event of events) {
  if (process.env.QWEN_DISABLE_VERIFIED_CORRECTIONS !== "1") {
    applyVerifiedCorrection(event);
  }
  const previous = merged.at(-1);
  if (previous && isBoundaryDuplicate(previous, event)) {
    previous.global_start = round(Math.min(previous.global_start, event.global_start));
    previous.global_end = round(Math.max(previous.global_end, event.global_end));
    previous.confidence = Math.max(previous.confidence, event.confidence);
    previous.ingredient = chooseIngredient(previous.ingredient, event.ingredient);
    previous.visible_ingredients = mergeVisibleIngredients(
      previous.visible_ingredients,
      event.visible_ingredients
    );
    previous.ingredient_source = chooseIngredientSource(previous.ingredient_source, event.ingredient_source);
    previous.label_texts = [...new Set([...previous.label_texts, ...event.label_texts])];
    previous.source_chunks = [...new Set([...previous.source_chunks, ...event.source_chunks])];
    previous.descriptions = [...new Set([...previous.descriptions, ...event.descriptions])];
    continue;
  }
  merged.push({ ...event });
}

const timeline = {
  source_duration_seconds: Number(manifest.source_duration_seconds || 0),
  generated_at: new Date().toISOString(),
  event_count_before_deduplication: events.length,
  event_count: merged.length,
  events: merged.map((event, index) => ({
    id: `event_${String(index + 1).padStart(3, "0")}`,
    start: event.global_start,
    end: event.global_end,
    action: event.canonical_action,
    action_group: actionGroup(event),
    action_group_zh: actionGroupLabel(actionGroup(event)),
    raw_action: event.action,
    ingredient: event.ingredient,
    ...cookingEvidence(event),
    visible_ingredients: normalizeVisibleIngredients(event.visible_ingredients),
    ingredient_source: event.ingredient_source,
    label_text: event.label_texts.join(" / "),
    confidence: round(event.confidence),
    description: event.descriptions.join(" / "),
    source_chunks: event.source_chunks
  }))
};

timeline.source = manifest.source || "";
timeline.solo_fry_schema_version = SOLO_FRY_SCHEMA_VERSION;
timeline.solo_fry_windows = firstSoloFryWindows(timeline.events, timeline.source_duration_seconds);
addChopWindows(timeline);

await fs.writeFile(outputPath, JSON.stringify(timeline, null, 2), "utf8");
const maxTimeline = {
  source_duration_seconds: timeline.source_duration_seconds,
  generated_at: timeline.generated_at,
  source_event_count: timeline.event_count,
  event_count: 0,
  events: groupEventsForMax(timeline.events)
};
maxTimeline.event_count = maxTimeline.events.length;
await fs.writeFile(maxOutputPath, JSON.stringify(maxTimeline, null, 2), "utf8");
console.log(`已合并 ${events.length} 个候选动作，去重后 ${timeline.event_count} 个。`);
console.log(path.relative(projectDir, outputPath));
console.log(`Max大类时间轴：${maxTimeline.event_count} 个控制区间。`);
console.log(path.relative(projectDir, maxOutputPath));
console.log(`首轮单独煸炒：${timeline.solo_fry_windows.length} 种食材。`);

function canonicalAction(action) {
  const normalized = String(action || "other").toLowerCase();
  if (["chopping", "slicing", "dicing", "cutting"].includes(normalized)) return "chop";
  if (normalized === "washing") return "wash";
  if (["marinating", "marinated"].includes(normalized)) return "marinate";
  if (["stirring", "frying", "cooking"].includes(normalized)) return "stir_fry";
  if (normalized === "plating") return "plate";
  if (normalized === "pouring") return "add_liquid";
  return normalized;
}

function isBoundaryDuplicate(a, b) {
  if (a.canonical_action !== b.canonical_action) return false;
  if (a.canonical_action === "stir_fry" && !sameCookingEvidence(a, b)) return false;
  if (!ingredientsCompatible(a.ingredient, b.ingredient)) return false;
  if (b.global_start >= a.global_end) return false;
  return a.source_chunks.some((chunkId) => b.source_chunks.includes(chunkId + 1));
}

function ingredientsCompatible(a, b) {
  const left = String(a || "unknown").trim().toLowerCase();
  const right = String(b || "unknown").trim().toLowerCase();
  return left === right || left === "unknown" || right === "unknown" ||
    left.includes(right) || right.includes(left);
}

function chooseIngredient(a, b) {
  const left = String(a || "unknown");
  const right = String(b || "unknown");
  if (left.toLowerCase() === "unknown") return right;
  if (right.toLowerCase() !== "unknown" && right.length > left.length) return right;
  return left;
}

function chooseIngredientSource(a, b) {
  const rank = { unknown: 0, visual: 1, onscreen_text: 2 };
  return (rank[b] || 0) > (rank[a] || 0) ? b : a;
}

function actionGroup(event) {
  const action = event.canonical_action;
  if (["wash", "chop", "marinate", "stir_fry", "plate"].includes(action)) return action;
  if (action === "cutting") return "chop";
  if (action === "peeling") return "preparing";
  if (action === "adding_ingredient") {
    return isSeasoning(event.ingredient) ? "seasoning" : "adding_ingredient";
  }
  if (["pouring", "add_liquid"].includes(action)) return "add_liquid";
  if (action === "stirring") return "stir_fry";
  if (action === "mixing") {
    return /blender|blend|搅拌机/i.test(event.descriptions.join(" ")) ? "blending" : "stirring";
  }
  if (["frying", "boiling"].includes(action)) return "stir_fry";
  if (action === "plating") return "plate";
  return "none";
}

function actionGroupLabel(group) {
  return {
    wash: "清洗",
    chop: "切食材",
    cutting: "切食材",
    marinate: "腌制",
    stir_fry: "炒菜",
    plate: "装盘",
    preparing: "处理食材",
    seasoning: "撒调料",
    adding_ingredient: "加入食材",
    pouring: "倒入液体",
    stirring: "搅拌",
    blending: "搅拌机混合",
    cooking: "加热烹饪",
    plating: "装盘",
    none: "不处理"
  }[group] || "不处理";
}

function isSeasoning(ingredient) {
  return /(salt|sugar|pepper|spice|powder|cumin|coriander|turmeric|chili|seasoning|盐|糖|椒|香料|孜然|芫荽|姜黄)/i.test(String(ingredient));
}

function groupEventsForMax(events) {
  const grouped = [];
  for (const event of events.filter((item) => item.action_group !== "none")) {
    const current = {
      id: "",
      start: event.start,
      end: event.end,
      action_group: event.action_group,
      action_group_zh: event.action_group_zh,
      ingredients: event.ingredient === "unknown" ? [] : [event.ingredient],
      whole_count_parameters: normalizeVisibleIngredients(event.visible_ingredients),
      ingredient_labels: event.label_text ? event.label_text.split(" / ") : [],
      ingredient_parameters: [ingredientParameter(event)],
      seasoning_parameters: event.action_group === "seasoning" ? [seasoningParameter(event)] : [],
      confidence: event.confidence,
      source_events: [event.id]
    };
    const previous = grouped.at(-1);
    const allowedGap = event.action_group === "seasoning" ? 3 : 0.75;
    if (previous && previous.action_group === current.action_group &&
        current.start <= previous.end + allowedGap) {
      previous.end = round(Math.max(previous.end, current.end));
      previous.ingredients = [...new Set([...previous.ingredients, ...current.ingredients])];
      previous.ingredient_labels = [...new Set([...previous.ingredient_labels, ...current.ingredient_labels])];
      previous.ingredient_parameters = mergeParameters(
        previous.ingredient_parameters,
        current.ingredient_parameters
      );
      previous.seasoning_parameters = mergeParameters(
        previous.seasoning_parameters,
        current.seasoning_parameters
      );
      previous.whole_count_parameters = mergeVisibleIngredients(
        previous.whole_count_parameters,
        current.whole_count_parameters
      );
      previous.confidence = round(Math.min(previous.confidence, current.confidence));
      previous.source_events.push(...current.source_events);
      continue;
    }
    grouped.push(current);
  }
  return grouped.map((event, index) => ({
    ...event,
    id: `max_event_${String(index + 1).padStart(3, "0")}`
  }));
}

function ingredientParameter(event) {
  const measurement = parseMeasurement(event.label_text);
  return {
    ingredient: event.ingredient,
    amount_g: measurement?.unit === "g" ? measurement.value : 20,
    amount_source: measurement?.unit === "g" ? "onscreen_text" : "default_20g",
    original_measurement: measurement ? `${measurement.value} ${measurement.unit}` : "",
    label_text: event.label_text || ""
  };
}

function seasoningParameter(event) {
  const measurement = parseMeasurement(event.label_text);
  const isSpoon = measurement && ["tsp", "tbsp"].includes(measurement.unit);
  const spoonCount = isSpoon ? Math.max(1, Math.ceil(measurement.value)) : 1;
  return {
    ingredient: event.ingredient,
    spoon_count: spoonCount,
    amount_per_spoon: isSpoon && measurement.value >= 1
      ? measurement.value / spoonCount
      : isSpoon ? measurement.value : 1,
    spoon_unit: isSpoon ? measurement.unit : "event",
    amount_g: measurement?.unit === "g" ? measurement.value : 20,
    amount_source: measurement?.unit === "g" ? "onscreen_text" : "default_20g",
    label_text: event.label_text || ""
  };
}

function parseMeasurement(labelText) {
  const match = String(labelText || "").match(/(\d+(?:\.\d+)?|\d+\s*\/\s*\d+)\s*(tbsp|tsp|ml|g)\b/i);
  if (!match) return null;
  const value = parseNumericValue(match[1]);
  if (!Number.isFinite(value)) return null;
  return { value, unit: match[2].toLowerCase() };
}

function parseNumericValue(text) {
  const normalized = String(text).replace(/\s/g, "");
  if (!normalized.includes("/")) return Number(normalized);
  const [numerator, denominator] = normalized.split("/").map(Number);
  return denominator ? numerator / denominator : Number.NaN;
}

function mergeParameters(existing, incoming) {
  const merged = [...existing];
  for (const candidate of incoming) {
    const index = merged.findIndex((item) => item.ingredient === candidate.ingredient);
    if (index === -1) {
      merged.push(candidate);
      continue;
    }
    if (merged[index].amount_source !== "onscreen_text" && candidate.amount_source === "onscreen_text") {
      merged[index] = candidate;
    }
  }
  return merged;
}

function normalizeVisibleIngredients(value) {
  return mergeVisibleIngredients([], Array.isArray(value) ? value : []);
}

function mergeVisibleIngredients(existing, incoming) {
  const selected = new Map();
  for (const item of [...(existing || []), ...(incoming || [])]) {
    if (!item || typeof item !== "object") continue;
    const name = String(item.name || item.ingredient || "unknown").trim().toLowerCase();
    if (!name || name === "unknown") continue;
    const wholeCount = normalizeWholeCount(item.whole_count);
    const countConfidence = Math.min(1, Math.max(0, Number(item.count_confidence) || 0));
    const countBasis = normalizeCountBasis(item.count_basis);
    const candidate = {
      name,
      whole_count: wholeCount,
      count_confidence: round(countConfidence),
      count_basis: countBasis
    };
    const previous = selected.get(name);
    if (!previous || (candidate.whole_count !== null && previous.whole_count === null) ||
        ((candidate.whole_count !== null) === (previous.whole_count !== null) &&
          candidate.count_confidence > previous.count_confidence)) {
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

function applyVerifiedCorrection(event) {
  // Review frames at 58s, 62s, and 68s show garlic, not scallion.
  if (event.canonical_action === "cutting" && event.global_start >= 56 &&
      event.global_start <= 60 && event.global_end <= 78) {
    event.ingredient = "garlic";
    event.descriptions = ["继续切碎大蒜"];
  }

  // The detailed 3 FPS pass shows several spices being added in succession.
  if (event.action === "adding_ingredient" && event.ingredient_source !== "onscreen_text" &&
      event.global_start >= 200 && event.global_end <= 232) {
    event.ingredient = "mixed spices";
    event.descriptions = ["连续加入孜然、芫荽、姜黄、辣椒和五香粉"];
  }

  // Review frames around 343s and 350s show the same lotus root.
  if (event.global_start >= 341 && event.global_end <= 346 && event.action === "other") {
    event.ingredient = "lotus root";
    event.descriptions = ["将莲藕放到砧板上"];
  }

  // This liquid is the blender mixture prepared earlier in the video.
  if (event.action === "pouring" && event.global_start >= 478 && event.global_end <= 488) {
    event.ingredient = "blended curry mixture";
    event.descriptions = ["倒入前面搅拌机制作的咖喱混合液"];
  }
}

function round(value) {
  return Math.round(Number(value) * 100) / 100;
}
