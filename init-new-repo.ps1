# AI_UI — Initialize as new Git repo for PossumX
# Run from: C:\Users\hp\Desktop\Asgard\AI_UI_Framework
# Usage: .\init-new-repo.ps1

$ErrorActionPreference = "Stop"

Write-Host "AI_UI — Initializing new Git repository" -ForegroundColor Cyan
Write-Host ""

# Remove existing .git if present (e.g. from parent Asgard)
if (Test-Path ".git") {
    Write-Host "Removing existing .git (was part of parent repo)..." -ForegroundColor Yellow
    Remove-Item -Recurse -Force .git
}

# Init fresh repo
Write-Host "Initializing fresh git repo..." -ForegroundColor Green
git init

# Add all
Write-Host "Adding files..." -ForegroundColor Green
git add .

# Status
Write-Host ""
Write-Host "Files to be committed:" -ForegroundColor Cyan
git status --short

Write-Host ""
Write-Host "Ready! Next steps:" -ForegroundColor Yellow
Write-Host "  1. Create repo at https://github.com/new (name: AI_UI, Public)"
Write-Host "  2. git commit -m 'Initial commit: AI_UI - The AI Interface We Need'"
Write-Host "  3. git remote add origin https://github.com/PossumX/AI_UI.git"
Write-Host "  4. git branch -M main"
Write-Host "  5. git push -u origin main"
Write-Host ""
Write-Host "See SETUP_NEW_REPO.md for full instructions and wiki setup." -ForegroundColor Cyan
