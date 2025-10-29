#!/bin/bash
# Quick start script for the project

echo "📚 Colombo International Bookfair - Stall Reservation System"
echo "============================================================"
echo ""
echo "Starting all services..."
echo ""

# Create logs directory
mkdir -p logs

# Start backend in background
echo "🔵 Starting Backend on http://localhost:5000..."
cd backend
python -m venv venv 2>/dev/null || source venv/Scripts/activate 2>/dev/null || true
pip install -r requirements.txt 2>/dev/null || true
python init_db.py 2>/dev/null || true
python app.py > ../logs/backend.log 2>&1 &
BACKEND_PID=$!
cd ..

# Wait for backend to start
sleep 3

# Start vendor portal in background
echo "🟢 Starting Vendor Portal on http://localhost:3000..."
cd frontend/vendor-portal
npm install > ../../logs/vendor-install.log 2>&1 || true
npm start > ../../logs/vendor.log 2>&1 &
VENDOR_PID=$!
cd ../..

# Wait for vendor portal to start
sleep 5

# Start employee portal in background
echo "🟣 Starting Employee Portal on http://localhost:3001..."
cd frontend/employee-portal
npm install > ../../logs/employee-install.log 2>&1 || true
PORT=3001 npm start > ../../logs/employee.log 2>&1 &
EMPLOYEE_PID=$!
cd ../..

echo ""
echo "============================================================"
echo "✅ All services started!"
echo ""
echo "📍 Access Points:"
echo "   Backend:         http://localhost:5000"
echo "   Vendor Portal:   http://localhost:3000"
echo "   Employee Portal: http://localhost:3001"
echo ""
echo "🔐 Demo Credentials:"
echo "   Vendor:   demo@vendor.com / demo123"
echo "   Employee: admin@bookfair.lk / admin123"
echo ""
echo "📋 Logs:"
echo "   Backend:  logs/backend.log"
echo "   Vendor:   logs/vendor.log"
echo "   Employee: logs/employee.log"
echo ""
echo "❌ To stop all services, press Ctrl+C or run: kill $BACKEND_PID $VENDOR_PID $EMPLOYEE_PID"
echo ""

# Wait for all processes
wait
