@echo off
cd /d "%~dp0"
where hugo >nul 2>nul
if errorlevel 1 (
    echo Hugo is not installed or not in PATH.
    echo Please install Hugo first, then run this script again.
    pause
    exit /b 1
)

hugo server --port 3000 --bind 127.0.0.1 --navigateToChanged
