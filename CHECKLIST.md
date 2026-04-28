# ShowSpot Setup Checklist

## ✅ Pre-Installation
- [ ] Node.js v16+ installed (`node --version`)
- [ ] npm or yarn installed (`npm --version`)
- [ ] Git installed (`git --version`)
- [ ] For iOS: Xcode installed (macOS only)
- [ ] For Android: Android Studio installed with SDK

## ✅ Project Setup

### 1. Create Directory Structure
- [ ] Run `node setup-directories.js` (Windows) or `bash setup.sh` (macOS/Linux)
- [ ] Verify `src/` directory created with subdirectories
- [ ] Verify `assets/` directory created with subdirectories

### 2. Install Dependencies
```bash
npm install
```
- [ ] No errors during installation
- [ ] `node_modules/` directory created
- [ ] `package-lock.json` created

### 3. iOS Setup (macOS Only)
```bash
cd ios && pod install && cd ..
```
- [ ] CocoaPods installed
- [ ] Pods installed successfully
- [ ] `Pods/` directory created in `ios/`

### 4. Configuration
- [ ] Created `.env` file with:
  - [ ] `REACT_APP_API_URL=http://localhost:3000`
  - [ ] `REACT_APP_GOOGLE_MAPS_API_KEY=your_key`
  - [ ] `NODE_ENV=development`

## ✅ Verification

### Metro Bundler
```bash
npm start
```
- [ ] Metro bundler starts without errors
- [ ] "To reload the app press r" appears in console
- [ ] Bundling progress shown

### Android Setup
- [ ] Android Studio configured
- [ ] Android SDK installed (API 31+)
- [ ] ANDROID_HOME environment variable set
- [ ] Virtual device created or physical device connected

### iOS Setup (macOS)
- [ ] Xcode installation verified
- [ ] CocoaPods version 1.11+
- [ ] Development signing certificate installed
- [ ] iOS 14+ simulator available

## ✅ First Run

### Android
```bash
npm run android
```
- [ ] App builds successfully
- [ ] App launches on emulator/device
- [ ] Tab navigation visible
- [ ] No console errors

### iOS (macOS)
```bash
npm run ios
```
- [ ] App builds successfully
- [ ] App launches on simulator
- [ ] Tab navigation visible
- [ ] No console errors

## ✅ Testing Build Commands

### Linting
```bash
npm run lint
```
- [ ] No linting errors
- [ ] Output shows all files checked

### Testing
```bash
npm test
```
- [ ] Jest configuration loads
- [ ] Tests run (if any exist)

## ✅ Development Environment

### Editor Setup
- [ ] VSCode or preferred editor installed
- [ ] Extensions installed:
  - [ ] ES7+ React/Redux/React-Native snippets
  - [ ] ESLint
  - [ ] Prettier
  - [ ] TypeScript Vue Plugin

### Debugging Setup
- [ ] React Native Debugger downloaded (optional but recommended)
- [ ] ADB (Android Debug Bridge) in PATH
- [ ] Device debugging enabled (Android)

## ✅ Git Repository

- [ ] Repository initialized: `git init` (if not already)
- [ ] `.gitignore` configured for React Native
- [ ] First commit made:
  ```bash
  git add .
  git commit -m "Initial React Native project setup"
  ```

## ✅ Documentation Review

- [ ] Read `QUICKSTART.md` - Quick start guide
- [ ] Read `SETUP.md` - Complete setup instructions
- [ ] Read `DEVELOPMENT.md` - Development workflow
- [ ] Read `NATIVE_SETUP.md` - Native setup details
- [ ] Read `README.md` - Project overview

## ✅ Project Customization

### App Configuration
- [ ] Updated `app.json` with app name and displayName
- [ ] Updated `package.json` with correct project name
- [ ] Updated `README.md` with project description

### Theme
- [ ] Review colors in `src/theme/index.ts`
- [ ] Customize colors if needed
- [ ] Review font sizes and spacing

### Navigation
- [ ] Review `src/App.tsx` navigation structure
- [ ] Understand tab-based navigation setup
- [ ] Plan additional screens needed

## ✅ API Integration

### Backend Connection
- [ ] Backend API URL configured in `.env`
- [ ] Reviewed `src/services/api.ts` structure
- [ ] Planned API endpoints needed
- [ ] Authentication strategy decided

### State Management
- [ ] Reviewed Zustand setup in `src/store/appStore.ts`
- [ ] Understood store pattern
- [ ] Planned state structure

## ✅ Feature Planning

### Photo Features
- [ ] Camera permission requirements documented
- [ ] Photo library access requirements documented
- [ ] Geolocation requirements documented

### Location Features
- [ ] Google Maps API key obtained
- [ ] Maps permissions configured
- [ ] Location permission flow planned

## ✅ Deployment Preparation

### Android
- [ ] Gradle build tested locally
- [ ] Signing key plan created
- [ ] Release build configuration reviewed

### iOS
- [ ] Xcode build tested locally
- [ ] Signing certificates setup plan created
- [ ] Provisioning profiles plan created

## ✅ Troubleshooting Resources

### Common Issues Resolved
- [ ] Metro bundler errors addressed
- [ ] Build errors addressed
- [ ] Device connection verified
- [ ] Permissions configured

### Help Resources Bookmarked
- [ ] React Native Official Documentation
- [ ] React Navigation Documentation
- [ ] Zustand Documentation
- [ ] React Native Maps Documentation
- [ ] Stack Overflow React Native tag

## ✅ Team Setup (if applicable)

- [ ] Repository shared with team
- [ ] Development environment documented
- [ ] Code style guidelines established (ESLint + Prettier)
- [ ] Git workflow documented
- [ ] Code review process established

## 📝 Notes

```
Any notes or issues encountered during setup:

_____________________________________________
_____________________________________________
_____________________________________________
_____________________________________________
```

## 🎉 Ready to Code!

Once all checkboxes are complete, you're ready to:
1. Create new screens in `src/screens/`
2. Build reusable components in `src/components/`
3. Integrate with your API in `src/services/`
4. Manage state in `src/store/`
5. Push to GitHub and start development!

---

**Completed On:** _______________
**By:** _______________
**Notes:** _______________
