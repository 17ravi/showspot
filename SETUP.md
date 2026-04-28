# ShowSpot - Cross-Platform Social Media App

## Project Setup Instructions

### Prerequisites
- **Node.js** v16+ and npm/yarn
- **Xcode** 14+ (for iOS development on macOS)
- **Android Studio** (for Android development)
- **CocoaPods** (for iOS dependencies on macOS)
- **Git**

### Step 1: Create Project Structure

Run the following command to create the project directory structure:

**On macOS/Linux:**
```bash
bash setup.sh
```

**On Windows (PowerShell):**
```powershell
node setup-directories.js
```

This will create:
```
src/
  ├── screens/          # Screen components (Home, Profile, Upload, Explore)
  ├── components/       # Reusable UI components
  ├── services/         # API and external service integrations
  ├── utils/            # Helper functions and utilities
  ├── store/            # Zustand state management
  ├── config/           # Configuration files
  ├── theme/            # Theming and styling constants
  └── hooks/            # Custom React hooks

assets/
  ├── images/           # Image assets
  ├── fonts/            # Custom fonts
  └── icons/            # Icon assets

ios/                     # iOS native code
android/                 # Android native code
```

### Step 2: Install Dependencies

```bash
npm install
```

For iOS, also install CocoaPods dependencies:
```bash
cd ios && pod install && cd ..
```

### Step 3: Configure Environment

Create a `.env` file in the project root:
```
REACT_APP_API_URL=http://localhost:3000
REACT_APP_GOOGLE_MAPS_API_KEY=your_google_maps_api_key_here
NODE_ENV=development
```

### Running the App

**Start Development Server:**
```bash
npm start
```

**Run on Android:**
```bash
npm run android
```

**Run on iOS:**
```bash
npm run ios
```

### Project Architecture

**App Entry Point:** `src/App.tsx`
- Configures React Navigation with bottom tab navigation
- Sets up 4 main tabs: Home, Explore, Upload, Profile

**State Management:** Zustand stores in `src/store/`
- Centralized app state (user location, photos, profile)

**API Integration:** `src/services/api.ts`
- Axios client for backend communication
- Photo upload, retrieval, and location-based queries

**Theming:** `src/theme/index.ts`
- Centralized colors, sizes, and font definitions
- Primary color: #f4511e (orange)

### Key Dependencies

| Package | Version | Purpose |
|---------|---------|---------|
| React Native | 0.73.6 | Cross-platform framework |
| React Navigation | 6.x | Navigation system |
| React Native Maps | 1.7.1 | Map integration |
| Zustand | 4.4.1 | State management |
| Axios | 1.6.2 | HTTP client |
| TypeScript | 5.2.2 | Type safety |

### Development Workflow

1. **Start Metro Bundler:**
   ```bash
   npm start
   ```

2. **In a new terminal, start the app:**
   ```bash
   npm run android    # or npm run ios
   ```

3. **Make code changes** - they'll auto-reload

4. **For native changes** (Java/Kotlin/Objective-C/Swift):
   - Rebuild: `npm run android` or `npm run ios`

### Available Scripts

| Command | Purpose |
|---------|---------|
| `npm start` | Start Metro bundler |
| `npm run android` | Build and run on Android |
| `npm run ios` | Build and run on iOS |
| `npm test` | Run tests |
| `npm run lint` | Run ESLint |

### Building for Production

**Android:**
```bash
cd android
./gradlew assembleRelease
# APK will be in: android/app/build/outputs/apk/release/
```

**iOS:**
```bash
cd ios
xcodebuild -workspace ShowSpot.xcworkspace -scheme ShowSpot -configuration Release
```

### Troubleshooting

**Metro bundler won't start:**
```bash
npm start -- --reset-cache
```

**Gradle issues on Android:**
```bash
cd android && ./gradlew clean && cd ..
npm run android
```

**Pod install issues on iOS:**
```bash
cd ios && rm -rf Pods Podfile.lock && pod install && cd ..
npm run ios
```

**Port 8081 already in use:**
```bash
npm start -- --port 8082
```

### Next Steps

1. Install dependencies: `npm install && cd ios && pod install && cd ..`
2. Configure `.env` with your API and maps keys
3. Run `npm start` to begin development
4. Start adding screens and components in `src/screens/` and `src/components/`
5. Connect to your backend API via `src/services/api.ts`

### Resources

- [React Native Documentation](https://reactnative.dev/)
- [React Navigation Documentation](https://reactnavigation.org/)
- [Zustand Documentation](https://github.com/pmndrs/zustand)
- [React Native Maps](https://github.com/react-native-maps/react-native-maps)
