// Shared pre-analysis contract. Timings come only from the selected video's API results.
export const SOLO_FRY_SCHEMA_VERSION = 1;
export const CHOP_SCHEMA_VERSION = 1;
export const INGREDIENT_IDS = ["pork", "green_pepper", "garlic", "egg", "small_chili"];
const aliases = new Map([
  ...INGREDIENT_IDS.map(name => [name, name]),
  ["猪肉", "pork"], ["青椒", "green_pepper"], ["大蒜", "garlic"],
  ["鸡蛋", "egg"], ["小米辣", "small_chili"], ["小米椒", "small_chili"],
]);

export function ingredientIds(value) {
  const values = Array.isArray(value) ? value : [];
  return [...new Set(values.map(item => aliases.get(String(item?.name ?? item).trim().toLowerCase()))
    .filter(Boolean))].sort();
}

export function cookingEvidence(event) {
  const targets = ingredientIds(event.target_ingredients);
  const pan = ingredientIds(event.pan_ingredients);
  let scope = String(event.cooking_scope || "unknown").trim().toLowerCase();
  if (!["solo", "mixed"].includes(scope)) scope = "unknown";
  if (scope === "solo" && targets.length !== 1) scope = "unknown";
  if (scope === "mixed" && targets.length < 2) scope = "unknown";
  // Never substitute all visible ingredients or a description for cooking targets.
  if (targets.some(name => !pan.includes(name))) scope = "unknown";
  return { cooking_scope: scope, target_ingredients: targets, pan_ingredients: pan };
}

export function sameCookingEvidence(a, b) {
  const left = cookingEvidence(a), right = cookingEvidence(b);
  return left.cooking_scope === right.cooking_scope &&
    JSON.stringify(left.target_ingredients) === JSON.stringify(right.target_ingredients);
}

export function firstSoloFryWindows(events, sourceDuration) {
  const duration = Number(sourceDuration);
  if (!Number.isFinite(duration) || duration <= 0) return [];
  const frying = events.filter(event =>
    ["stir_fry", "frying", "stirring", "cooking"].includes(event.action_group || event.action) && Number(event.confidence) >= 0.65)
    .map(event => ({ ...event, ...cookingEvidence(event), start: Number(event.start), end: Number(event.end) }))
    .filter(event => Number.isFinite(event.start) && Number.isFinite(event.end) &&
      event.start >= 0 && event.end > event.start && event.end <= duration + 0.01)
    .sort((a, b) => a.start - b.start || a.end - b.end);
  const rounds = new Map();
  for (const event of frying) {
    if (event.cooking_scope !== "solo") continue;
    const ingredient = event.target_ingredients[0];
    const list = rounds.get(ingredient) || [];
    const previous = list.at(-1);
    // A conflicting cooking batch separates rounds even when timestamps touch.
    const interrupted = previous && frying.some(other => other.cooking_scope !== "unknown" &&
      !(other.cooking_scope === "solo" && other.target_ingredients[0] === ingredient) &&
      other.start < event.start && other.end > previous.end && other.start >= previous.start);
    if (previous && event.start <= previous.end + 0.75 && !interrupted) {
      previous.end = Math.max(previous.end, event.end);
      previous.confidence = Math.min(previous.confidence, Number(event.confidence));
      if (event.id) previous.source_events.push(event.id);
    } else {
      list.push({ ingredient, start: event.start, end: event.end,
        confidence: Number(event.confidence), source_events: event.id ? [event.id] : [] });
    }
    rounds.set(ingredient, list);
  }
  return INGREDIENT_IDS.flatMap(ingredient => {
    const first = rounds.get(ingredient)?.[0];
    if (!first) return [];
    // Prefer the mixed-batch boundary over an overlapping solo annotation's tail.
    const mixed = frying.find(event => event.cooking_scope === "mixed" &&
      event.target_ingredients.includes(ingredient) && event.start >= first.start && event.start < first.end);
    const end = mixed ? mixed.start : first.end;
    if (end <= first.start) return [];
    return [{ ...first, end: Math.min(end, duration), source_events: [...new Set(first.source_events)] }];
  });
}

export function firstChopWindows(events, sourceDuration) {
  const duration = Number(sourceDuration);
  if (!Array.isArray(events) || !Number.isFinite(duration) || duration <= 0) return [];
  const cutting = events.filter(event =>
    ["chop", "chopping", "slicing", "dicing", "cutting"].includes(event.action_group || event.action) &&
    Number(event.confidence) >= 0.65)
    .map(event => ({ ...event, start: Number(event.start), end: Number(event.end),
      // Legacy ingredient is the action subject; visible_ingredients never is.
      targets: ingredientIds(Array.isArray(event.target_ingredients)
        ? event.target_ingredients : [event.ingredient]) }))
    .filter(event => Number.isFinite(event.start) && Number.isFinite(event.end) &&
      event.start >= 0 && event.end > event.start && event.end <= duration + 0.01)
    .sort((a, b) => a.start - b.start || a.end - b.end);
  return INGREDIENT_IDS.flatMap(ingredient => {
    let first = null;
    for (const event of cutting.filter(item => item.targets.includes(ingredient))) {
      if (!first) {
        first = { ingredient, start: event.start, end: event.end,
          confidence: Number(event.confidence), source_events: event.id ? [event.id] : [] };
        continue;
      }
      const interrupted = cutting.some(other => !other.targets.includes(ingredient) &&
        other.targets.length > 0 && other.start >= first.start &&
        other.start < event.start && other.end > first.end);
      if (event.start > first.end + 0.75 || interrupted) break;
      first.end = Math.max(first.end, event.end);
      first.confidence = Math.min(first.confidence, Number(event.confidence));
      if (event.id) first.source_events.push(event.id);
    }
    return first ? [{ ...first, source_events: [...new Set(first.source_events)] }] : [];
  });
}

export function addChopWindows(timeline) {
  if (timeline.chop_schema_version === CHOP_SCHEMA_VERSION && Array.isArray(timeline.chop_windows)) return false;
  timeline.chop_schema_version = CHOP_SCHEMA_VERSION;
  timeline.chop_windows = firstChopWindows(timeline.events, timeline.source_duration_seconds);
  return true;
}
