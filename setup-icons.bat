@echo off
REM App Icon Setup Script for ShowSpot
REM This script creates the necessary directories for app icons

echo Creating Android icon directories...
mkdir android\app\src\main\res\mipmap-ldpi
mkdir android\app\src\main\res\mipmap-mdpi
mkdir android\app\src\main\res\mipmap-hdpi
mkdir android\app\src\main\res\mipmap-xhdpi
mkdir android\app\src\main\res\mipmap-xxhdpi
mkdir android\app\src\main\res\mipmap-xxxhdpi

echo Creating iOS icon directory...
mkdir ios\ShowSpot\Images.xcassets\AppIcon.appiconset

echo.
echo ========================================
echo App Icon Directories Created!
echo ========================================
echo.
echo Next steps:
echo 1. Download icon sizes from: https://appicon.co/
echo 2. Upload src\screens\Icon.png
echo 3. Extract downloaded files to:
echo    - Android: android\app\src\main\res\mipmap-*\ic_launcher.png
echo    - iOS: ios\ShowSpot\Images.xcassets\AppIcon.appiconset\
echo.
echo Or use a tool like ImageMagick to resize Icon.png to:
echo   - 192x192 for Android xxxhdpi
echo   - 180x180 for iOS 3x
echo.
echo See APP_ICON_SETUP.md for detailed instructions.
echo.
pause
