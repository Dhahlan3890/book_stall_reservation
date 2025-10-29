# 📚 Colombo International Bookfair - Stall Reservation System

A comprehensive web application for managing stall reservations at the Colombo International Bookfair. This project features a Python/Flask backend API, React vendor portal, and React employee management dashboard.

## 🎯 Project Overview

This system enables:
- **Vendors & Publishers** to register, view available stalls, and make reservations
- **Organizers** to manage stalls, monitor reservations, and view analytics  
- **QR Code Generation** for exhibition passes
- **Email Notifications** with QR codes attached
- **Real-time Stall Availability** tracking
- **JWT-based Authentication** for secure access

## ✨ Key Features

### Vendor Portal
- User registration and login
- Interactive floor map with stall visualization
- Real-time availability tracking
- Reserve up to 3 stalls per business
- QR code generation and download
- Email confirmation with QR code
- Dashboard with reservations management
- Literary genres selection
- Profile management

### Employee Portal  
- Admin authentication
- Dashboard with KPIs and statistics
- Stall management and monitoring
- Reservation tracking and filtering
- Occupancy analytics by stall size
- Revenue tracking
- User management

## 🏗️ Project Structure

```
book_stall_reservation/
├── backend/                 # Python Flask REST API
│   ├── app.py              # Flask application
│   ├── models.py           # Database models
│   ├── config.py           # Configuration
│   ├── utils.py            # QR & Email utilities
│   ├── init_db.py          # Database initialization
│   ├── routes/             # API route blueprints
│   │   ├── auth.py
│   │   ├── stall.py
│   │   ├── reservation.py
│   │   ├── genre.py
│   │   └── employee.py
│   ├── requirements.txt
│   └── .env.example
│
├── frontend/
│   ├── vendor-portal/      # React vendor application
│   │   ├── src/
│   │   ├── public/
│   │   ├── package.json
│   │   └── tailwind.config.js
│   │
│   └── employee-portal/    # React employee application
│       ├── src/
│       ├── public/
│       ├── package.json
│       └── tailwind.config.js
│
├── SETUP.md               # Quick start guide
├── API_DOCS.md            # API documentation
└── README.md              # This file
```

## 🚀 Quick Start

**See SETUP.md for detailed setup instructions**

### Prerequisites
- Python 3.8+
- Node.js 16+
- npm or yarn

### 1. Backend
```bash
cd backend
python -m venv venv
source venv/Scripts/activate  # Windows: venv\Scripts\activate
pip install -r requirements.txt
python init_db.py
python app.py  # Runs on http://localhost:5000
```

### 2. Vendor Portal
```bash
cd frontend/vendor-portal
npm install
npm start  # Runs on http://localhost:3000
```

### 3. Employee Portal
```bash
cd frontend/employee-portal
npm install
npm start  # Runs on http://localhost:3001
```

## 🔐 Demo Credentials

**Vendor Portal:**
- Email: `demo@vendor.com`
- Password: `demo123`

**Employee Portal:**
- Email: `admin@bookfair.lk`
- Password: `admin123`

## 📦 Technology Stack

**Backend:**
- Flask 3.0, SQLAlchemy, JWT, Bcrypt, QRCode, SMTP

**Frontend:**
- React 18, React Router, Tailwind CSS, Framer Motion, Recharts, Axios

## 🔌 API Endpoints

See **API_DOCS.md** for complete API documentation

Key endpoints:
- `POST /api/auth/register` - Register user
- `POST /api/auth/login` - User login
- `GET /api/stalls` - Get all stalls
- `POST /api/reservations` - Create reservation
- `GET /api/employee/dashboard` - Admin dashboard

## 🎨 UI Features

- Professional gradient designs
- Smooth animations and transitions
- Interactive stall map
- Responsive mobile design
- Real-time status updates
- Toast notifications
- QR code display and download

## 🔒 Security

- JWT token authentication
- Bcrypt password hashing
- CORS configuration
- Protected routes
- Input validation
- Environment variable configuration

## 📄 Documentation

- **README.md** - Project overview (this file)
- **SETUP.md** - Installation and setup guide
- **API_DOCS.md** - Complete API reference with examples

## 👥 Team Division

1. **Backend Developer** - Flask API, Database, Email
2. **Frontend Dev 1** - Vendor Portal UI/UX
3. **Frontend Dev 2** - Employee Portal UI/UX
4. **DevOps** - Deployment & CI/CD
5. **QA** - Testing & Documentation
6. **Project Manager** - Coordination

## 🚀 Deployment

Backend: Heroku, AWS, Railway, or any Python-compatible platform
Frontend: Vercel, Netlify, or GitHub Pages

## 📞 Support

- Check SETUP.md for installation issues
- Review API_DOCS.md for API questions
- Check browser console for frontend errors
- Check terminal for backend errors

---

**Version:** 1.0.0  
**Status:** ✅ Production Ready  
**Last Updated:** October 2024