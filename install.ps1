# Masmas Development System - Windows 1-Click Installer for Google Antigravity
$ErrorActionPreference = "Stop"

Write-Host "==========================================================" -ForegroundColor Cyan
Write-Host "   Installing MASMAS DEVELOPMENT SYSTEM into Antigravity   " -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan

$destSkills = Join-Path $HOME ".gemini\config\skills"
$destRules = Join-Path $HOME ".gemini\config\rules"

# Ensure destination directories exist
New-Item -ItemType Directory -Force -Path $destSkills, $destRules | Out-Null

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path

# Copy skills
if (Test-Path "$scriptDir\skills") {
    Copy-Item -Recurse -Force -Path "$scriptDir\skills\*" -Destination $destSkills
    Write-Host "[OK] 16 Skills installed to: $destSkills" -ForegroundColor Green
}

# Copy rules
if (Test-Path "$scriptDir\rules") {
    Copy-Item -Recurse -Force -Path "$scriptDir\rules\*" -Destination $destRules
    Write-Host "[OK] 9 Rules installed to:  $destRules" -ForegroundColor Green
}

Write-Host "`nInstallation Successful!" -ForegroundColor Green
Write-Host "You can now use the slash command in Antigravity:" -ForegroundColor Yellow
Write-Host "  /skilsmashudi" -ForegroundColor Cyan
Write-Host "==========================================================" -ForegroundColor Cyan
