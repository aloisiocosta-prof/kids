#!/usr/bin/env bash
set -euo pipefail

command -v node >/dev/null 2>&1 || { echo 'Node.js não encontrado.' >&2; exit 1; }
node -e '
const [major, minor, patch] = process.versions.node.split(".").map(Number);
const supported = (major === 22 && (minor > 23 || (minor === 23 && patch >= 4))) ||
  (major === 24 && (minor > 22 || (minor === 22 && patch >= 1))) ||
  (major === 26 && (minor > 12 || (minor === 12 && patch >= 1))) || major > 26;
if (!supported) {
  console.error(`Node.js ${process.versions.node} não atende ao requisito atual do REA. Use 22.23.4+, 24.22.1+ ou 26.12.1+.`);
  process.exit(1);
}
console.log(`Node.js ${process.versions.node} verificado.`);
'

npx --yes rea-agents@latest setup --client codex --dry-run --json
echo "Revise o plano acima; em seguida, o REA solicitará aprovação interativa antes de alterar a configuração."
npx --yes rea-agents@latest setup --client codex
npx --yes rea-agents@latest doctor --client codex --skill --json
echo 'Setup e diagnóstico concluídos. Reinicie o Codex para carregar o servidor MCP e a skill.'
