# Connexa Troubleshooting Guide

## 🚨 MOST COMMON ISSUE: "An error occurred" during login

### ⚡ QUICK FIX (90% of cases):

1. **START BACKEND FIRST:**
   ```
   Double-click: start-backend-simple.bat
   Wait for: "✅ MongoDB connected successfully"
   Wait for: "Server is running on Port: 5002"
   ```

2. **START FRONTEND:**
   ```
   Double-click: start-frontend-simple.bat
   Wait for: "Local: http://localhost:5173"
   ```

3. **CREATE ACCOUNT FIRST:**
   - Open http://localhost:5173
   - Click "Sign Up" (not Login)
   - Create new account with email/password
   - Then login with those credentials

### 🔍 Detailed Diagnosis:

#### Issue 1: Backend Not Running
**Symptoms:** "Network Error" or "An error occurred"
**Solution:**
- Run `start-backend-simple.bat`
- Check http://localhost:5002 shows "Welcome to Connexa Chat API"

#### Issue 2: MongoDB Not Running  
**Symptoms:** Backend shows "❌ MongoDB connection failed"
**Solution:**
- Install MongoDB: https://www.mongodb.com/try/download/community
- Start MongoDB service
- Or use MongoDB Compass

#### Issue 3: No Account Created
**Symptoms:** "Invalid credentials" 
**Solution:**
- Click "Sign Up" first to create account
- Then use same email/password to login

#### Issue 4: Port Conflicts
**Symptoms:** "EADDRINUSE" or port already in use
**Solution:**
- Close other applications using ports 5002 or 5173
- Kill existing node processes: `taskkill /f /im node.exe`

#### Issue 5: CORS Errors
**Symptoms:** "CORS policy" errors in browser console
**Solution:**
- Ensure backend is running first
- Frontend must be on localhost:5173
- Backend must be on localhost:5002

### 🛠️ Advanced Troubleshooting:

#### Clear Browser Cache:
- Press F12 in browser
- Right-click refresh button
- Select "Empty Cache and Hard Reload"

#### Check Network Tabs:
- F12 → Network tab
- Look for failed requests (red entries)
- Check if API calls to localhost:5002 are working

#### Restart Everything:
```bash
# Kill all processes
taskkill /f /im node.exe

# Clear npm cache
npm cache clean --force

# Restart in order:
1. start-backend-simple.bat
2. start-frontend-simple.bat
```

### 📱 Mobile/Network Issues:

#### Access from other devices:
- Backend: Replace localhost with your IP (e.g., 192.168.1.100:5002)
- Frontend: Same IP (e.g., 192.168.1.100:5173)
- Update CORS settings in backend if needed

### 🆘 Still Not Working?

1. **Run Diagnostic Script:** `diagnose-login.bat`
2. **Check these files exist:**
   - backend/.env (with MongoDB connection)
   - frontend/src/lib/axios.js (API endpoint)
3. **Verify ports are free:**
   - `netstat -ano | findstr :5002`
   - `netstat -ano | findstr :5173`

---

**Last Resort: Complete Reset**
```bash
# Delete node_modules in both frontend and backend
# Run npm install in both folders
# Clear browser cache completely
# Restart computer
```
