@echo off
title Squeeze Backend :8000
cd /d "%~dp0squeeze-backend"
.venv\Scripts\python main.py
pause
