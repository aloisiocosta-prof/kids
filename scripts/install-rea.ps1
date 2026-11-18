$ErrorActionPreference = 'Stop'

Write-Host 'Instalador oficial do REA (Reverse Engineer Anything) para Codex.' -ForegroundColor Cyan
Write-Host 'O instalador do REA mostrará um plano antes de alterar a configuração do agente.'

try {
    $nodeVersion = (& node -p "process.versions.node").Trim()
} catch {
    throw 'Node.js não encontrado. Instale uma versão suportada pelo REA e execute novamente.'
}

$parts = $nodeVersion.Split('.') | ForEach-Object { [int]$_ }
$major = $parts[0]; $minor = $parts[1]; $patch = $parts[2]
$supported = ($major -eq 22 -and ($minor -gt 23 -or ($minor -eq 23 -and $patch -ge 4))) -or
             ($major -eq 24 -and ($minor -gt 22 -or ($minor -eq 22 -and $patch -ge 1))) -or
             ($major -eq 26 -and ($minor -gt 12 -or ($minor -eq 12 -and $patch -ge 1))) -or
             ($major -gt 26)

if (-not $supported) {
    throw "Node.js $nodeVersion não atende ao requisito atual verificado do REA. Use Node 22.23.4+, 24.22.1+ ou 26.12.1+ e tente novamente. O script não atualizará o Node por conta própria."
}

Write-Host "Node.js $nodeVersion verificado." -ForegroundColor Green
Write-Host '1/3 — Gerando plano sem aplicar alterações...' -ForegroundColor Yellow
& npx --yes rea-agents@latest setup --client codex --dry-run --json
if ($LASTEXITCODE -ne 0) {
    throw "O plano do REA terminou com código $LASTEXITCODE. Nenhuma alteração de configuração foi solicitada."
}

Write-Host '2/3 — Revise o plano e aprove as alterações no assistente interativo do REA.' -ForegroundColor Yellow
& npx --yes rea-agents@latest setup --client codex
if ($LASTEXITCODE -ne 0) {
    throw "O setup do REA terminou com código $LASTEXITCODE. Consulte a mensagem acima; nenhuma conclusão de instalação será presumida."
}

Write-Host '3/3 — Executando diagnóstico do registro e da skill...' -ForegroundColor Cyan
& npx --yes rea-agents@latest doctor --client codex --skill --json
if ($LASTEXITCODE -ne 0) {
    throw "O diagnóstico do REA terminou com código $LASTEXITCODE. Consulte a saída para identificar o item pendente."
}

Write-Host 'Setup e diagnóstico concluídos. Reinicie o Codex para carregar o servidor MCP e a skill.' -ForegroundColor Green
