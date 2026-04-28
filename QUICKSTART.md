# ShowSpot - Quick Start Guide

Welcome to **ShowSpot**, a location-based social media app built with React Native!

## 📁 What's Been Created

Your project now has a complete React Native setup with:

✅ **Configuration Files:**
- `package.json` - All dependencies configured
- `tsconfig.json` - TypeScript configuration
- `babel.config.js` - Babel setup
- `metro.config.js` - Metro bundler config
- `jest.config.js` - Testing setup
- `react-native.config.js` - React Native CLI config
- `.eslintrc.json` - Linting rules
- `.prettierrc.json` - Code formatting

✅ **App Structure:**
- `index.js` - Entry point
- `app.json` - App metadata
- `SETUP.md` - Setup instructions
- `DEVELOPMENT.md` - Development guide
- `NATIVE_SETUP.md` - iOS/Android native setup
- `README.md` - Project overview

✅ **Setup Scripts:**
- `setup.sh` - Create directories (macOS/Linux)
- `setup-directories.bat` - Create directories (Windows)
- `setup-directories.js` - Node.js directory creator

## 🚀 Quick Start (5 Minutes)

### 1. Create Project Structure

**Windows (PowerShell):**
```powershell
node setup-directories.js
```

**macOS/Linux:**
```bash
bash setup.sh
```

### 2. Install Dependencies

```bash
npm install
```

If on macOS, also install iOS dependencies:
```bash
cd ios && pod install && cd ..
```

### 3. Configure Environment

Create `.env` file in project root:
```
REACT_APP_API_URL=http://localhost:3000
REACT_APP_GOOGLE_MAPS_API_KEY=your_key_here
```

### 4. Start Development

```bash
npm start
```

### 5. Run on Device/Emulator

**Android:**
```bash
npm run android
```

**iOS (macOS only):**
```bash
npm run ios
```

## 📚 Documentation

| Document | Purpose |
|----------|---------|
| **README.md** | Project overview and features |
| **SETUP.md** | Complete setup instructions |
| **DEVELOPMENT.md** | Development workflow and architecture |
| **NATIVE_SETUP.md** | iOS and Android native development |

## 📋 Project Structure

After running setup scripts, you'll have:

```
showspot/
├── src/
│   ├── screens/          # App screens
│   ├── components/       # Reusable components
│   ├── services/         # API services
│   ├── utils/            # Helper functions
│   ├── store/            # State management
│   ├── config/           # Configuration
│   ├── theme/            # Styling constants
│   └── hooks/            # Custom hooks
│
├── assets/
│   ├── images/           # Images
│   ├── fonts/            # Custom fonts
│   └── icons/            # Icons
│
├── ios/                  # iOS native code
├── android/              # Android native code
│
├── package.json
├── tsconfig.json
├── babel.config.js
├── metro.config.js
└── jest.config.js
```

## 🛠 Available Commands

```bash
npm start              # Start Metro bundler
npm run android        # Build and run on Android
npm run ios            # Build and run on iOS
npm test               # Run tests
npm run lint           # Run ESLint
```

## 📱 Technology Stack

- **React Native 0.73.6** - Cross-platform framework
- **React Navigation 6.x** - Navigation/routing
- **TypeScript** - Type-safe development
- **Zustand** - State management
- **React Native Maps** - Map functionality
- **Axios** - HTTP client
- **Jest** - Testing framework

## 🎯 Next Steps

1. ✅ Run setup scripts to create directories
2. ✅ Run `npm install` to install dependencies
3. ✅ Configure `.env` with your API keys
4. ✅ Run `npm start` and `npm run android`/`npm run ios`
5. 📱 Start building your screens in `src/screens/`
6. 🔌 Connect your API in `src/services/`
7. 🎨 Customize theming in `src/theme/`

## 🐛 Troubleshooting

**Directories not created?**
```bash
# Manual creation on Windows
mkdir src\screens src\components src\services src\utils src\store src\config src\theme src\hooks
mkdir assets\images assets\fonts assets\icons
```

**Dependencies won't install?**
```bash
npm cache clean --force
npm install
```

**Metro bundler won't start?**
```bash
npm start -- --reset-cache
```

**App won't build?**
```bash
# Android
cd android && ./gradlew clean && cd ..
npm run android

# iOS
cd ios && rm -rf Pods Podfile.lock && pod install && cd ..
npm run ios
```

## 📖 Key Files to Review

1. **src/App.tsx** - Main app with navigation setup
2. **src/screens/HomeScreen.tsx** - Example screen component
3. **src/store/appStore.ts** - State management example
4. **src/services/api.ts** - API client setup
5. **src/theme/index.ts** - App theming constants

## 💡 Development Tips

- Use `React.memo()` to optimize re-renders
- Keep state minimal in Zustand
- Use TypeScript interfaces for props
- Follow the established folder structure
- Test on both platforms regularly

## 🤝 Need Help?

Refer to the comprehensive documentation:
- **Setup issues?** → Read `SETUP.md`
- **Development questions?** → Read `DEVELOPMENT.md`
- **iOS/Android issues?** → Read `NATIVE_SETUP.md`
- **General questions?** → Check `README.md`

## 📝 Happy Coding!

You're ready to build ShowSpot! Start with `npm install` and then `npm start`.

For detailed guides, check out:
- [React Native Official Docs](https://reactnative.dev/)
- [React Navigation Docs](https://reactnavigation.org/)
- [Zustand State Management](https://github.com/pmndrs/zustand)

---

**Last Updated:** 2026-04-28
**React Native Version:** 0.73.6
**TypeScript:** Enabled
