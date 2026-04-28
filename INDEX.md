# 📚 ShowSpot Project Documentation Index

Welcome! This file provides an overview of all documentation for the ShowSpot React Native project.

## 🚀 Start Here

### For First-Time Setup
1. **[QUICKSTART.md](./QUICKSTART.md)** ⭐ START HERE
   - 5-minute quick start guide
   - Essential setup steps
   - Verification procedures
   - Troubleshooting tips

2. **[CHECKLIST.md](./CHECKLIST.md)**
   - Complete setup verification checklist
   - Pre-installation requirements
   - Testing procedures
   - Development environment setup

## 📖 Main Documentation

### Project Overview
- **[README.md](./README.md)**
  - Project description and features
  - Technology stack
  - Project structure overview
  - Contributing guidelines

### Setup & Installation
- **[SETUP.md](./SETUP.md)** ⭐ COMPREHENSIVE GUIDE
  - Detailed setup instructions
  - Environment configuration
  - Running the app (Android & iOS)
  - Available scripts reference
  - Troubleshooting section
  - Building for production

### Development
- **[DEVELOPMENT.md](./DEVELOPMENT.md)**
  - Project architecture overview
  - File organization guide
  - Component development guide
  - Styling guide
  - API integration patterns
  - State management with Zustand
  - Testing and linting
  - Common development tasks
  - Performance tips

### Native Development
- **[NATIVE_SETUP.md](./NATIVE_SETUP.md)** ⭐ FOR NATIVE DEVELOPMENT
  - iOS setup and configuration
  - Android setup and configuration
  - Running on physical devices
  - Permissions configuration
  - Debugging native code
  - Production build instructions
  - Platform-specific troubleshooting

## ⚙️ Configuration Files

### Project Configuration
```
package.json          # Dependencies and scripts
tsconfig.json        # TypeScript configuration
babel.config.js      # Babel transpiler setup
metro.config.js      # Metro bundler configuration
```

### Code Quality
```
.eslintrc.json       # ESLint rules
.prettierrc.json     # Code formatting rules
jest.config.js       # Testing configuration
```

### Build Configuration
```
react-native.config.js  # React Native CLI config
app.json                # App metadata
index.js                # Application entry point
```

### Environment
```
.env.example         # Environment variables template (COPY TO .env)
.gitignore           # Git ignore rules
```

## 🛠 Setup Scripts

### For Creating Directory Structure

**Windows:**
```bash
node setup-directories.js
```

**macOS/Linux:**
```bash
bash setup.sh
```

**Manual:**
```bash
setup-directories.bat  # Windows batch file
```

## 📁 Project Structure

After setup, your project will have this structure:

```
showspot/
├── src/                    # Source code
│   ├── App.tsx            # Main app component
│   ├── screens/           # Screen components
│   ├── components/        # Reusable components
│   ├── services/          # API services
│   ├── utils/             # Helper functions
│   ├── store/             # State management
│   ├── config/            # Configuration
│   ├── theme/             # Theming
│   └── hooks/             # Custom hooks
│
├── assets/                # Static assets
│   ├── images/
│   ├── fonts/
│   └── icons/
│
├── ios/                   # iOS native code
├── android/               # Android native code
│
├── node_modules/          # Dependencies
└── [Configuration files]
```

## 🎯 Quick Command Reference

### Development
```bash
npm start                   # Start Metro bundler
npm run android             # Build and run on Android
npm run ios                 # Build and run on iOS
```

### Quality
```bash
npm test                    # Run tests
npm run lint                # Run ESLint
npm run lint -- --fix       # Auto-fix linting issues
```

### Debugging
```bash
npm start -- --reset-cache  # Reset Metro cache
npm start -- --port 8082    # Use different port
```

## 📱 Platform-Specific Guides

### Android Development
- See **[NATIVE_SETUP.md - Android Section](./NATIVE_SETUP.md#android-setup)**
- Android Studio configuration
- Emulator vs device testing
- Building release APK

### iOS Development
- See **[NATIVE_SETUP.md - iOS Section](./NATIVE_SETUP.md#ios-setup)**
- Xcode configuration
- Simulator vs device testing
- Building for App Store

## 🔍 Feature Guides

### State Management (Zustand)
- Location: `src/store/appStore.ts`
- Usage: See examples in **[DEVELOPMENT.md](./DEVELOPMENT.md#state-management)**

### API Integration (Axios)
- Location: `src/services/api.ts`
- Usage: See examples in **[DEVELOPMENT.md](./DEVELOPMENT.md#api-integration)**

### Styling & Theming
- Location: `src/theme/index.ts`
- Usage: See examples in **[DEVELOPMENT.md](./DEVELOPMENT.md#styling-guide)**

### Navigation (React Navigation)
- Location: `src/App.tsx`
- Setup: Bottom tab navigation with 4 main screens

## 🐛 Troubleshooting Quick Links

### Setup Issues
→ See **[SETUP.md - Troubleshooting](./SETUP.md#troubleshooting)**

### iOS Issues
→ See **[NATIVE_SETUP.md - Troubleshooting iOS](./NATIVE_SETUP.md#troubleshooting-ios)**

### Android Issues
→ See **[NATIVE_SETUP.md - Troubleshooting Android](./NATIVE_SETUP.md#troubleshooting-android)**

### General Issues
→ See **[QUICKSTART.md - Troubleshooting](./QUICKSTART.md#troubleshooting)**

## 📚 External Resources

### Official Documentation
- [React Native Official Docs](https://reactnative.dev/)
- [React Navigation Docs](https://reactnavigation.org/)
- [Zustand Documentation](https://github.com/pmndrs/zustand)
- [React Native Maps](https://github.com/react-native-maps/react-native-maps)
- [Axios Documentation](https://axios-http.com/)

### Development Tools
- [React DevTools](https://github.com/facebook/react-devtools)
- [React Native Debugger](https://github.com/jhen0409/react-native-debugger)
- [Expo Snack](https://snack.expo.dev/) - Online React Native playground

### Learning Resources
- [React Native Tutorial](https://reactnative.dev/docs/tutorial)
- [TypeScript Handbook](https://www.typescriptlang.org/docs/)
- [CSS-in-JS with React Native](https://facebook.github.io/react-native/docs/style)

## 🎓 Development Workflow

### Step 1: Initial Setup
→ Follow **[QUICKSTART.md](./QUICKSTART.md)**

### Step 2: Environment Configuration
→ Copy `.env.example` to `.env` and configure

### Step 3: Project Structure
→ Run setup scripts to create directories

### Step 4: Install Dependencies
```bash
npm install
cd ios && pod install && cd ..  # macOS only
```

### Step 5: Start Development
→ See **[DEVELOPMENT.md](./DEVELOPMENT.md#development-workflow)**

### Step 6: Build Features
→ See component examples in **[DEVELOPMENT.md](./DEVELOPMENT.md#component-development)**

### Step 7: Test & Deploy
→ See **[NATIVE_SETUP.md](./NATIVE_SETUP.md#production-builds)**

## 👥 Team Resources

### Code Standards
- ESLint configuration: `.eslintrc.json`
- Code formatting: `.prettierrc.json`
- Use `npm run lint -- --fix` to auto-format

### Git Workflow
- See `.gitignore` for excluded files
- Make regular commits with descriptive messages
- Follow conventional commit format if possible

### Documentation Standards
- Keep README.md updated
- Document new features in DEVELOPMENT.md
- Update CHANGELOG if maintaining one

## 📝 File Descriptions

| File | Purpose |
|------|---------|
| **QUICKSTART.md** | Fast 5-minute setup guide |
| **SETUP.md** | Comprehensive setup instructions |
| **DEVELOPMENT.md** | Development workflow and architecture |
| **NATIVE_SETUP.md** | iOS and Android native development |
| **CHECKLIST.md** | Setup verification checklist |
| **README.md** | Project overview |
| **.env.example** | Environment variables template |

## 🆘 Need Help?

### Finding Information
1. Check the relevant section in this index
2. Follow the cross-references to detailed guides
3. Search for your issue in the troubleshooting sections
4. Check the external resources

### Getting Support
- Check React Native official docs
- Search Stack Overflow for similar issues
- Join React Native Discord community
- Create an issue in the project repository

## ✅ Before You Start

Make sure you have:
- ✅ Read QUICKSTART.md
- ✅ Installed Node.js and npm
- ✅ Set up your development environment
- ✅ Copied .env.example to .env
- ✅ Run `npm install`
- ✅ Completed the setup checklist

## 🎉 You're Ready!

Everything is set up and documented. Time to start building ShowSpot!

Start with: **[QUICKSTART.md](./QUICKSTART.md)**

---

**Last Updated:** April 2026
**Version:** 1.0 (Initial Setup)
**React Native Version:** 0.73.6
**Status:** Ready for Development
