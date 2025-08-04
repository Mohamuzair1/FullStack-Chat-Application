@echo off
echo ============================================
echo       CONNEXA CHAT APP - START ALL
echo ============================================
echo.

echo Starting MongoDB (if not running)...
echo Make sure MongoDB is running on localhost:27017
echo.

echo Starting Backend Server...
start "Connexa Backend" cmd /k "cd /d \"%~dp0\" && npm start"

timeout /t 5 /nobreak >nul

echo Starting Frontend Server...
start "Connexa Frontend" cmd /k "cd /d \"%~dp0..\\frontend\" && npm run dev"

echo.
echo ============================================
echo Both servers are starting...
echo.
echo Backend: http://localhost:5002
echo Frontend: http://localhost:5173
echo.
echo Check the opened terminal windows for status.
echo ============================================
pause
