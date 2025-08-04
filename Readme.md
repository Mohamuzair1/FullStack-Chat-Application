# Connexa - Full-Stack Real-Time Chat Application

A modern, responsive chat application built with React and Node.js featuring real-time messaging, user authentication, and a clean UI.

![Connexa Chat App](frontend/public/connexa-logo.svg)

## 🚀 Features

- **Real-time messaging** with Socket.IO
- **User authentication** with JWT tokens
- **Responsive design** with Tailwind CSS
- **Message notifications** and unread message tracking
- **Online status indicators**
- **Profile management** with avatar support
- **Message search functionality**
- **Block/unblock users**
- **Dark/light theme support**
- **File upload** with Cloudinary integration

## 🛠️ Tech Stack

### Frontend
- **React 18** - Modern UI library
- **Vite** - Fast build tool and dev server
- **Tailwind CSS** - Utility-first CSS framework
- **Zustand** - Lightweight state management
- **Socket.IO Client** - Real-time communication
- **React Hot Toast** - Beautiful notifications
- **Axios** - HTTP client

### Backend
- **Node.js** - JavaScript runtime
- **Express.js** - Web application framework
- **Socket.IO** - Real-time bidirectional communication
- **MongoDB** - NoSQL database
- **Mongoose** - MongoDB object modeling
- **JWT** - JSON Web Tokens for authentication
- **Bcrypt** - Password hashing
- **Cloudinary** - Image upload and management
- **CORS** - Cross-origin resource sharing

## 📁 Project Structure

```
connexa-chat/
├── frontend/          # React frontend application
│   ├── src/
│   │   ├── components/    # Reusable UI components
│   │   ├── pages/        # Page components
│   │   ├── store/        # Zustand state management
│   │   ├── lib/          # Utility functions and configurations
│   │   └── assets/       # Static assets
│   ├── public/           # Public assets
│   └── package.json      # Frontend dependencies
├── backend/           # Node.js backend application
│   ├── src/
│   │   ├── controllers/  # Route controllers
│   │   ├── models/       # MongoDB models
│   │   ├── routes/       # API routes
│   │   ├── middleware/   # Custom middleware
│   │   └── lib/          # Backend utilities
│   └── package.json      # Backend dependencies
├── scripts/           # Utility scripts for development
├── package.json       # Root package configuration
└── README.md          # Project documentation
```

## 🚀 Quick Start

### Prerequisites

- **Node.js** (v16 or higher)
- **MongoDB** (local installation or MongoDB Atlas)
- **Git**

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/connexa-chat.git
   cd connexa-chat
   ```

2. **Install dependencies**
   ```bash
   # Install root dependencies
   npm install
   
   # Install frontend dependencies
   cd frontend
   npm install
   
   # Install backend dependencies
   cd ../backend
   npm install
   ```

3. **Environment Setup**
   
   Create `.env` file in the `backend` directory:
   ```env
   PORT=5002
   MONGODB_URI=mongodb://localhost:27017/connexa-chat
   JWT_SECRET=your-super-secret-jwt-key
   NODE_ENV=development
   
   # Cloudinary configuration (for file uploads)
   CLOUDINARY_CLOUD_NAME=your-cloud-name
   CLOUDINARY_API_KEY=your-api-key
   CLOUDINARY_API_SECRET=your-api-secret
   ```

4. **Start MongoDB**
   - For local MongoDB: Start your MongoDB service
   - For MongoDB Atlas: Update the `MONGODB_URI` with your connection string

5. **Run the application**
   
   **Option 1: Use the startup script (Recommended)**
   ```bash
   # On Windows
   start.bat
   
   # Choose option 1 to start all servers
   ```
   
   **Option 2: Manual startup**
   ```bash
   # Terminal 1 - Start Backend
   cd backend
   npm run dev
   
   # Terminal 2 - Start Frontend
   cd frontend
   npm run dev
   ```

6. **Access the application**
   - Frontend: http://localhost:5173
   - Backend API: http://localhost:5002

## 📱 Usage

1. **Register a new account** or **login** with existing credentials
2. **Browse online users** in the sidebar
3. **Click on a user** to start chatting
4. **Send messages** and see real-time updates
5. **Manage your profile** and settings
6. **Search for messages** using the search functionality

## 🔧 Development Scripts

### Root Level
- `npm install` - Install all dependencies
- `npm run install:all` - Install dependencies for both frontend and backend

### Frontend (`/frontend`)
- `npm run dev` - Start development server
- `npm run build` - Build for production
- `npm run preview` - Preview production build

### Backend (`/backend`)
- `npm run dev` - Start development server with nodemon
- `npm start` - Start production server

### Utility Scripts (`/scripts`)
- `start-all-fixed.bat` - Start both frontend and backend
- `start-backend-simple.bat` - Start only backend
- `start-frontend-simple.bat` - Start only frontend
- `diagnose-login.bat` - Troubleshoot login issues

## 🔍 Troubleshooting

### Common Issues

1. **Login errors**: Run `scripts/diagnose-login.bat` for automated troubleshooting
2. **CORS errors**: Ensure backend is running on localhost:5002
3. **MongoDB connection**: Verify MongoDB is running and connection string is correct
4. **Port conflicts**: Check if ports 5002 (backend) and 5173 (frontend) are available

### Getting Help

- Check the `TROUBLESHOOTING.md` file for detailed solutions
- Run the diagnostic script: `scripts/diagnose-login.bat`
- Ensure all environment variables are properly configured

## 🚀 Deployment

### Frontend (Vercel/Netlify)
1. Build the frontend: `cd frontend && npm run build`
2. Deploy the `dist` folder to your hosting service
3. Update API endpoints in production

### Backend (Heroku/Railway/DigitalOcean)
1. Set environment variables on your hosting platform
2. Deploy the backend folder
3. Update CORS settings for your frontend domain

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

##  Acknowledgments

- React team for the amazing framework
- Socket.IO for real-time capabilities
- Tailwind CSS for the styling system
- MongoDB for the database solution

---

**Happy Chatting! 💬**

For support or questions, please open an issue on GitHub.
- **Node.js -** JavaScript runtime for server-side development.
- **Express.js -** Lightweight and fast backend framework.
- **MongoDB -** NoSQL database for storing user data and messages.

### **Real-Time Communication**
- **Socket.io -** Enables real-time bi-directional communication between users.

## Installation & Setup

### Prerequisites
Make sure you have the following installed:

- Node.js (Latest version)
- MongoDB (Local or cloud instance)
- npm or yarn

## Steps to run the Application
### Backend setup

1. Clone the repository:
```
git clone https://github.com/your-repo/chat-app.git
cd chat-app/backend
```

2. Install dependencies:
```
npm install
```

3. Start the backend server:
```
npm start
```

### Frontend Setup

1. Navigate to the frontend directory:
```
cd ../frontend
```
2. Install dependencies:
```
npm install
```
3. Start the frontend server:
```
npm start
```

## Usage
- Sign up or log in to your account.
- Select a user from the available chat list.
- Start real-time messaging with instant updates.
- Change themes from the settings panel.
- Update your profile image from the profile page.

## Future Enhancements
- Functionality to update profile.
- Editing and deleting messages.
- Being able to upload documents and videos as currently only images can be sent.
- A search bar to search for users.
- Using Amazon S3 instead of Cloudinary to support sending large files.

## Contributions
Contributions are welcome! Feel free to fork this repository and submit a pull request.

## License
This project is licensed under the MIT License.

