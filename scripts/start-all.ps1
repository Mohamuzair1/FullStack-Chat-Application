# Connexa Chat App Startup Script
Write-Host "Starting Connexa Chat Application..." -ForegroundColor Green

# Get the script directory and set project root
$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$ProjectRoot = Split-Path -Parent $ScriptDir

# Start MongoDB
Write-Host "Starting MongoDB..." -ForegroundColor Green
Start-Process -FilePath "mongod" -ArgumentList "--dbpath", "C:\data\db" -WindowStyle Hidden

# Wait for MongoDB to start
Start-Sleep -Seconds 3

# Start Backend
Write-Host "Starting Backend Server..." -ForegroundColor Green
Set-Location "$ProjectRoot\backend"
Start-Process -FilePath "node" -ArgumentList "src/index.js" -NoNewWindow

# Wait for backend to start
Start-Sleep -Seconds 3

# Start Frontend
Write-Host "Starting Frontend Server..." -ForegroundColor Green
Set-Location "$ProjectRoot\frontend"
Start-Process -FilePath "npm" -ArgumentList "run", "dev" -NoNewWindow

Write-Host "All servers started!" -ForegroundColor Yellow
Write-Host "Backend: http://localhost:5002" -ForegroundColor Cyan
Write-Host "Frontend: http://localhost:5173" -ForegroundColor Cyan
Read-Host "Press Enter to exit"
