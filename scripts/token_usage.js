const fs = require('node:fs');
const path = require('node:path');

function tokenCount(usage = {}) {
  function positiveInteger(value) {
    const number = Number(value);
    return Number.isSafeInteger(number) && number > 0 ? number : 0;
  }
  return positiveInteger(usage?.total_tokens) ||
    positiveInteger(usage?.prompt_tokens ?? usage?.input_tokens) +
    positiveInteger(usage?.completion_tokens ?? usage?.output_tokens);
}

function reportUsage(usage) {
  const count = tokenCount(usage);
  if (count > 0) console.log(`TOKEN_USAGE ${count}`);
}

class TokenUsage {
  constructor(filename, publish) {
    this.filename = filename;
    this.publish = publish;
  }

  read() {
    if (!fs.existsSync(this.filename)) {
      return {cumulative_tokens: 0, note: '本地记录的API用量累计'};
    }
    const state = JSON.parse(fs.readFileSync(this.filename, 'utf8').replace(/^\uFEFF/, ''));
    if (!Number.isSafeInteger(state.cumulative_tokens) || state.cumulative_tokens < 0) {
      throw new Error('累计token记录格式无效');
    }
    return state;
  }

  emitTotal() {
    this.publish(this.read().cumulative_tokens, 0);
  }

  consumeLine(text) {
    const match = /^TOKEN_USAGE (\d+)$/.exec(text);
    if (!match) return false;
    const count = Number(match[1]);
    if (!Number.isSafeInteger(count) || count <= 0) return true;
    const state = this.read();
    const total = state.cumulative_tokens + count;
    if (!Number.isSafeInteger(total)) throw new Error('累计token超出整数范围');
    fs.mkdirSync(path.dirname(this.filename), {recursive: true});
    const temporary = `${this.filename}.${process.pid}.tmp`;
    fs.writeFileSync(temporary, JSON.stringify({...state, cumulative_tokens: total}, null, 2) + '\n', 'utf8');
    fs.renameSync(temporary, this.filename);
    this.publish(total, count);
    return true;
  }
}

module.exports = {TokenUsage, tokenCount, reportUsage};
