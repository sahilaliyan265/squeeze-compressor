# ============================================================
# Squeeze Dev Launcher - opens backend + frontend in 2 windows
# Usage: powershell -ExecutionPolicy Bypass -File dev.ps1
# ============================================================

$backendDir  = "$PSScriptRoot\squeeze-backend"
$frontendDir = "$PSScriptRoot\squeeze-app"
$backendPython = "$backendDir\.venv\Scripts\python.exe"
$backendCommand = 'Set-Location -LiteralPath "{0}"; & "{1}" main.py' -f $backendDir, $backendPython
$frontendCommand = 'Set-Location -LiteralPath "{0}"; npm run dev' -f $frontendDir

Write-Host ""
Write-Host "  ================================================" -ForegroundColor Magenta
Write-Host "  Squeeze Dev Launcher" -ForegroundColor Magenta
Write-Host "  Backend  -> http://localhost:8000" -ForegroundColor Cyan
Write-Host "  Frontend -> http://localhost:3000" -ForegroundColor Cyan
Write-Host "  ================================================" -ForegroundColor Magenta
Write-Host ""

# Open Backend in a new coloured terminal window
Start-Process powershell -ArgumentList @(
    "-NoExit",
    "-Command",
    $backendCommand
)
Write-Host "  [BACKEND]  Window opened  -> http://localhost:8000" -ForegroundColor Green

# Open Frontend in a new coloured terminal window
Start-Process powershell -ArgumentList @(
    "-NoExit",
    "-Command",
    $frontendCommand
)
Write-Host "  [FRONTEND] Window opened  -> http://localhost:3000" -ForegroundColor Green

Write-Host ""
Write-Host "  Both servers are starting in separate windows." -ForegroundColor Yellow
Write-Host "  Open http://localhost:3000 in your browser." -ForegroundColor Cyan
Write-Host ""
