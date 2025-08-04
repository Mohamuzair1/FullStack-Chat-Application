@echo off
echo =====================================================
echo            Connexa Login Issue Diagnostics
echo =====================================================
echo.

echo Step 1: Checking if backend is running...
curl -s http://localhost:5002 >nul 2>&1
if %errorlevel%==0 (
    echo ✓ Backend server is responding on port 5002
) else (
    echo ✗ Backend server is NOT running on port 5002
    echo.
    echo SOLUTION: Start the backend server first
    echo Run: start-backend-simple.bat (from backend folder)
    echo.
    pause
    exit /b 1
)

echo.
echo Step 2: Testing database connection...
echo This requires the backend to be running with proper MongoDB connection.
echo.

echo Step 3: Common login issues and solutions:
echo.
echo Issue 1: "An error occurred" or network error
echo Solution: Make sure backend is running (start-backend-simple.bat)
echo.
echo Issue 2: "Invalid credentials"  
echo Solution: Create a new account first, then login
echo.
echo Issue 3: CORS errors in browser console
echo Solution: Make sure frontend is running on localhost:5173
echo.
echo Issue 4: MongoDB connection issues
echo Solution: Install and start MongoDB locally
echo.

echo =====================================================
echo To fix login issues:
echo 1. Run: start-backend-simple.bat (wait for "Server is running")
echo 2. Run: start-frontend-simple.bat  
echo 3. Go to http://localhost:5173
echo 4. Create a new account first (Sign Up)
echo 5. Then login with your new credentials
echo =====================================================
pause
