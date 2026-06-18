@echo off
echo Starting Jenna Lynn Photography CMS...
echo.
echo Admin Panel:  http://localhost:5000/admin/
echo Live Preview: http://localhost:5000/
echo.
echo Press Ctrl+C to stop.
echo.
cd /d "%~dp0\.."
python cms\server.py
pause