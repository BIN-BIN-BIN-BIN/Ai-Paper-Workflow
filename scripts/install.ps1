# Install the ai-paper-workflow skill on Windows.
# 在 Windows 上安装 ai-paper-workflow skill。
#
# Usage / 用法 (PowerShell):
#   .\scripts\install.ps1              # auto: every agent found on this computer
#   .\scripts\install.ps1 claude       # Claude Code  -> %USERPROFILE%\.claude\skills\
#   .\scripts\install.ps1 codex        # OpenAI Codex -> %USERPROFILE%\.agents\skills\
#   .\scripts\install.ps1 hermes       # Hermes Agent -> %USERPROFILE%\.hermes\skills\
#   .\scripts\install.ps1 workbuddy    # WorkBuddy    -> %USERPROFILE%\.workbuddy\skills\
#   .\scripts\install.ps1 all
param([string]$Target = "auto")
$ErrorActionPreference = "Stop"
$Name = "ai-paper-workflow"
$Src  = Join-Path (Split-Path $PSScriptRoot -Parent) "skills\$Name"
if (-not (Test-Path (Join-Path $Src "SKILL.md"))) { throw "SKILL.md not found at $Src" }

$H = $env:USERPROFILE
$HermesHome = if ($env:HERMES_HOME) { $env:HERMES_HOME } else { Join-Path $H ".hermes" }
$Agents = [ordered]@{
  claude    = @{ Home = (Join-Path $H ".claude");    Dest = (Join-Path $H ".claude\skills") }
  codex     = @{ Home = (Join-Path $H ".codex");     Dest = (Join-Path $H ".agents\skills") }
  hermes    = @{ Home = $HermesHome;                  Dest = (Join-Path $HermesHome "skills") }
  workbuddy = @{ Home = (Join-Path $H ".workbuddy"); Dest = (Join-Path $H ".workbuddy\skills") }
}
function Install-One($a) {
  $dest = $Agents[$a].Dest
  New-Item -ItemType Directory -Force -Path $dest | Out-Null
  $target = Join-Path $dest $Name
  if (Test-Path $target) { Remove-Item -Recurse -Force $target }
  Copy-Item -Recurse $Src $target
  Write-Host "OK  $a : installed to $target"
}
switch ($Target) {
  "auto" {
    $found = $false
    foreach ($a in $Agents.Keys) {
      if ((Test-Path $Agents[$a].Home) -or ($a -eq "codex" -and (Test-Path (Join-Path $H ".agents")))) { Install-One $a; $found = $true }
    }
    if (-not $found) { Write-Host "No supported agent folder found. Use: claude | codex | hermes | workbuddy | all" }
  }
  "all" { foreach ($a in $Agents.Keys) { Install-One $a } }
  default {
    if ($Agents.Contains($Target)) { Install-One $Target } else { throw "Unknown target: $Target" }
  }
}
Write-Host "Restart the agent (or start a new session) so it picks up the skill."
