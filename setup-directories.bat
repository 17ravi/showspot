@echo off
REM Create directory structure for React Native ShowSpot App

cd /d "%~dp0"

echo Creating directory structure...

mkdir src\screens
mkdir src\components  
mkdir src\services
mkdir src\utils
mkdir src\store
mkdir src\config
mkdir src\theme
mkdir src\hooks

mkdir assets\images
mkdir assets\fonts
mkdir assets\icons

echo.
echo Directory structure created successfully!
echo.
echo Next steps:
echo 1. Run: npm install
echo 2. Configure your environment variables in .env
echo 3. Run: npm start (for development)
echo 4. Run: npm run android (for Android)
echo 5. Run: npm run ios (for iOS)
