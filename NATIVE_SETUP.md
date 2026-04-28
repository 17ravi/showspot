# Native Development Setup Guide

## iOS Setup

### Prerequisites
- macOS 11.0 or later
- Xcode 14.0 or later
- CocoaPods 1.11 or later
- An Apple Developer account (free for development)

### Installation Steps

1. **Install Xcode:**
   ```bash
   xcode-select --install
   ```

2. **Install CocoaPods:**
   ```bash
   sudo gem install cocoapods
   ```

3. **Install project dependencies:**
   ```bash
   npm install
   cd ios && pod install && cd ..
   ```

4. **Build and run:**
   ```bash
   npm run ios
   ```

### iOS Configuration

#### App Permissions (Info.plist)

The following permissions are needed:
- **Camera:** For taking photos
- **Photo Library:** For selecting photos
- **Location:** For geolocation

These are configured in `ios/ShowSpot/Info.plist` (or in Xcode):

```xml
<key>NSCameraUsageDescription</key>
<string>ShowSpot needs access to your camera to take photos</string>

<key>NSPhotoLibraryUsageDescription</key>
<string>ShowSpot needs access to your photo library</string>

<key>NSLocationWhenInUseUsageDescription</key>
<string>ShowSpot needs your location to organize photos by place</string>

<key>NSLocationAlwaysAndWhenInUseUsageDescription</key>
<string>ShowSpot needs your location to organize photos by place</string>
```

### Running on Physical Device

1. Connect your iPhone via USB
2. In Xcode, select your device from the run target
3. Press the Play button or run `npm run ios`
4. Trust the developer profile on your device: Settings > General > Device Management

### Troubleshooting iOS

**Pod install fails:**
```bash
cd ios
rm -rf Pods Podfile.lock
pod repo update
pod install
cd ..
```

**Build fails with "Module not found":**
```bash
npm start -- --reset-cache
npm run ios
```

**App crashes on launch:**
- Check Console.app for error messages
- Verify all required permissions are in Info.plist
- Run with verbose output: `npm run ios -- --verbose`

---

## Android Setup

### Prerequisites
- Java Development Kit (JDK) 11 or later
- Android Studio 2021.1.1 or later
- Android SDK 31 or later
- Virtual Device or connected physical device

### Installation Steps

1. **Install Java Development Kit:**
   - Download from [Oracle](https://www.oracle.com/java/technologies/downloads/)
   - Or use Homebrew: `brew install openjdk@11`

2. **Install Android Studio:**
   - Download from [developer.android.com](https://developer.android.com/studio)
   - Install and complete first-time setup

3. **Configure Android SDK:**
   - Open Android Studio > SDK Manager
   - Install:
     - Android SDK 31, 32, and 33
     - Android NDK (latest)
     - Build Tools (latest)

4. **Set environment variables:**
   
   **On macOS/Linux (add to ~/.bashrc or ~/.zshrc):**
   ```bash
   export ANDROID_HOME=$HOME/Library/Android/sdk
   export PATH=$PATH:$ANDROID_HOME/emulator
   export PATH=$PATH:$ANDROID_HOME/platform-tools
   ```

   **On Windows (PowerShell):**
   ```powershell
   [Environment]::SetEnvironmentVariable("ANDROID_HOME", "C:\Users\YourUsername\AppData\Local\Android\sdk", "User")
   [Environment]::SetEnvironmentVariable("PATH", $env:PATH + ";$env:ANDROID_HOME\emulator;$env:ANDROID_HOME\platform-tools", "User")
   ```

5. **Install project dependencies:**
   ```bash
   npm install
   ```

6. **Build and run:**
   ```bash
   npm run android
   ```

### Android Configuration

#### App Permissions (AndroidManifest.xml)

Located in `android/app/src/main/AndroidManifest.xml`:

```xml
<uses-permission android:name="android.permission.CAMERA" />
<uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" />
<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />
<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />
<uses-permission android:name="android.permission.INTERNET" />
```

#### Gradle Configuration

Key settings in `android/build.gradle`:

```gradle
ext {
    buildToolsVersion = "33.0.0"
    minSdkVersion = 21
    compileSdkVersion = 33
    targetSdkVersion = 33
}
```

### Running on Virtual Device

1. **Create a Virtual Device:**
   - Android Studio > Device Manager > Create Device
   - Select a device (e.g., Pixel 6)
   - Select an API level (33 or later recommended)
   - Finish and start the device

2. **Run the app:**
   ```bash
   npm run android
   ```

### Running on Physical Device

1. **Enable Developer Mode:**
   - Go to Settings > About Phone
   - Tap Build Number 7 times
   - Settings > Developer Options > Enable USB Debugging

2. **Connect via USB:**
   - Connect phone with USB cable
   - Verify connection: `adb devices`

3. **Run the app:**
   ```bash
   npm run android
   ```

### Troubleshooting Android

**Gradle build fails:**
```bash
cd android
./gradlew clean
./gradlew build --stacktrace
cd ..
```

**"No connected devices":**
```bash
# List devices
adb devices

# Kill and restart ADB
adb kill-server
adb start-server
```

**App crashes at startup:**
- Check logcat: `adb logcat | grep -i showspot`
- Verify permissions are granted
- Check that all dependencies are installed

**Port 8081 already in use (Metro bundler):**
```bash
npm start -- --port 8082
```

---

## Cross-Platform Development

### Testing on Both Platforms

1. **Terminal 1 - Start Metro Bundler:**
   ```bash
   npm start
   ```

2. **Terminal 2 - iOS:**
   ```bash
   npm run ios
   ```

3. **Terminal 3 - Android:**
   ```bash
   npm run android
   ```

### Native Module Development

If you need to write native code:

**iOS (Swift/Objective-C):**
- Edit files in `ios/ShowSpot/`
- Use Xcode for editing
- Native modules require rebuilding: `npm run ios`

**Android (Java/Kotlin):**
- Edit files in `android/app/src/main/java/`
- Use Android Studio or any text editor
- Native modules require rebuilding: `npm run android`

### Linking Native Libraries

For libraries with native code:
```bash
npm install package-name
npx react-native link package-name
```

Then rebuild:
```bash
npm run ios
npm run android
```

---

## Development Tools

### Android Studio Useful Shortcuts
- `Cmd+Shift+A` (macOS) / `Ctrl+Shift+A` (Windows/Linux) - Find Action
- `Cmd+D` - Duplicate line
- `Cmd+K, Cmd+C` - Comment code

### Xcode Useful Shortcuts
- `Cmd+Shift+J` - Jump to definition
- `Cmd+/` - Toggle comment
- `Cmd+B` - Build

### Debugging

**React DevTools:**
```bash
# Install globally
npm install -g react-devtools

# Run in separate terminal
react-devtools
```

**React Native Debugger:**
- Download: [https://github.com/jhen0409/react-native-debugger](https://github.com/jhen0409/react-native-debugger)
- Open in app, press `Cmd+M` (Android) or `Cmd+D` (iOS) > Debug

---

## Production Builds

### iOS App Store Build

1. Create App ID in Apple Developer account
2. Create provisioning profile
3. In Xcode:
   - Select Product > Archive
   - Select Validate App
   - Select Distribute App
   - Submit to App Store Connect

### Android Google Play Build

1. Create signing key:
   ```bash
   keytool -genkey -v -keystore my-release-key.keystore -alias my-key-alias -keyalg RSA -keysize 2048 -validity 10000
   ```

2. Build release APK:
   ```bash
   cd android
   ./gradlew assembleRelease
   cd ..
   ```

3. APK location: `android/app/build/outputs/apk/release/app-release.apk`

4. Upload to Google Play Console

---

## Resources

- [React Native Environment Setup](https://reactnative.dev/docs/environment-setup)
- [Xcode Documentation](https://developer.apple.com/xcode/)
- [Android Studio Documentation](https://developer.android.com/studio/intro)
- [Apple Developer](https://developer.apple.com/)
- [Google Play Console](https://play.google.com/console)
