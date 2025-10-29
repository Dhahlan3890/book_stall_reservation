@echo off
REM Quick start script for Windows
echo.
echo 📚 Colombo International Bookfair - Stall Reservation System
echo ============================================================
echo.
echo Starting all services...
echo.

REM Create logs directory
if not exist logs mkdir logs

REM Start backend
echo 🔵 Starting Backend on http://localhost:5000...
cd backend
python -m venv venv >nul 2>&1
call venv\Scripts\activate.bat
pip install -r requirements.txt >nul 2>&1
python init_db.py >nul 2>&1
start "Backend" python app.py
cd ..

REM Wait for backend
timeout /t 3 /nobreak

REM Start vendor portal
echo 🟢 Starting Vendor Portal on http://localhost:3000...
cd frontend\vendor-portal
npm install >nul 2>&1
start "Vendor Portal" npm start
cd ..\..

REM Wait for vendor portal
timeout /t 5 /nobreak

REM Start employee portal
echo 🟣 Starting Employee Portal on http://localhost:3001...
cd frontend\employee-portal
npm install >nul 2>&1
start "Employee Portal" cmd /k "set PORT=3001 && npm start"
cd ..\..

echo.
echo ============================================================
echo ✅ All services started!
echo.
echo 📍 Access Points:
echo    Backend:         http://localhost:5000
echo    Vendor Portal:   http://localhost:3000
echo    Employee Portal: http://localhost:3001
echo.
echo 🔐 Demo Credentials:
echo    Vendor:   demo@vendor.com / demo123
echo    Employee: admin@bookfair.lk / admin123
echo.
echo Open browsers to access the portals.
echo.
pause
