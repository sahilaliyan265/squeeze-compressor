@echo off
echo.
echo  ============================================
echo   Squeeze Dev Launcher
echo   Backend  -^> http://localhost:8000
echo   Frontend -^> http://localhost:3000
echo  ============================================
echo.

echo  [BACKEND]  Starting FastAPI server...
start "Squeeze Backend :8000" cmd /k "cd /d %~dp0squeeze-backend && .venv\Scripts\python.exe main.py"

echo  [FRONTEND] Starting Next.js server...
start "Squeeze Frontend :3000" cmd /k "cd /d %~dp0squeeze-app && npm run dev"

echo.
echo  Both servers are starting in separate windows.
echo  Open http://localhost:3000 in your browser once ready.
echo.
