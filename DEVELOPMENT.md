# ShowSpot Development Guide

## Project Overview

ShowSpot is a cross-platform social media app built with **React Native** that allows users to:
- Share photos organized by location
- View their travel history as an interactive map
- Discover photos from other users by location
- Connect with the community

## File Organization

### Core Application Files

```
├── index.js                    # App entry point
├── app.json                    # App configuration
├── package.json               # Dependencies
├── tsconfig.json              # TypeScript configuration
├── babel.config.js            # Babel configuration
├── metro.config.js            # Metro bundler config
├── jest.config.js             # Testing configuration
├── react-native.config.js     # React Native CLI configuration
├── .eslintrc.json            # ESLint configuration
├── .prettierrc.json          # Prettier formatting
├── .gitignore                # Git ignore rules
```

### Application Code Structure

```
src/
├── App.tsx                    # Main app component with navigation
├── screens/                   # Screen components
│   ├── HomeScreen.tsx         # Feed/home screen
│   ├── ProfileScreen.tsx      # User profile with map
│   ├── UploadScreen.tsx       # Photo upload screen
│   └── ExploreScreen.tsx      # Discover photos by location
├── components/                # Reusable UI components
│   ├── PhotoCard.tsx          # Photo display component
│   ├── LocationMarker.tsx     # Map marker component
│   ├── Header.tsx             # Header component
│   └── LoadingSpinner.tsx     # Loading indicator
├── services/                  # API and external services
│   ├── api.ts                 # Axios API client
│   ├── photoService.ts        # Photo-related API calls
│   ├── userService.ts         # User-related API calls
│   └── locationService.ts     # Location services
├── store/                     # Zustand state management
│   └── appStore.ts            # Global app state
├── utils/                     # Helper functions
│   ├── helpers.ts             # Utility functions
│   ├── validators.ts          # Validation functions
│   └── formatters.ts          # Formatting utilities
├── config/                    # Configuration
│   └── env.ts                 # Environment variables
├── theme/                     # Theming
│   └── index.ts               # Colors, sizes, fonts
└── hooks/                     # Custom React hooks
    ├── useLocation.ts         # Geolocation hook
    ├── useCamera.ts           # Camera access hook
    └── usePhotoLibrary.ts     # Photo library hook

assets/
├── images/                    # Image assets
├── fonts/                     # Custom fonts
└── icons/                     # App icons

ios/                           # iOS native code
├── ShowSpot/                  # Main app folder
├── ShowSpot.xcodeproj/        # Xcode project
└── Podfile                    # CocoaPods configuration

android/                       # Android native code
├── app/                       # Main app module
├── build.gradle               # Gradle build configuration
└── gradle.properties          # Gradle properties
```

## Key Components

### 1. Navigation (src/App.tsx)
- **Bottom Tab Navigation** with 4 main screens
- Home, Explore, Upload, and Profile tabs
- React Navigation with native stack

### 2. State Management (src/store/appStore.ts)
- **Zustand** for global state
- Stores: user location, photos, profile data
- Simple, lightweight alternative to Redux

### 3. API Layer (src/services/api.ts)
- **Axios** HTTP client
- Centralized API endpoints
- Error handling and interceptors

### 4. Styling (src/theme/index.ts)
- Consistent color palette
- Font sizes and weights
- Spacing constants

## Component Development

### Creating a New Screen

1. Create file in `src/screens/YourScreen.tsx`:
```typescript
import React from 'react';
import {View, Text, StyleSheet} from 'react-native';

export default function YourScreen() {
  return (
    <View style={styles.container}>
      <Text>Your content here</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    padding: 16,
  },
});
```

2. Add to navigation in `src/App.tsx`

### Creating a Reusable Component

1. Create file in `src/components/YourComponent.tsx`:
```typescript
import React from 'react';
import {View, Text, StyleSheet} from 'react-native';

interface Props {
  title: string;
  onPress?: () => void;
}

export default function YourComponent({title, onPress}: Props) {
  return (
    <View style={styles.container}>
      <Text>{title}</Text>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    padding: 8,
  },
});
```

## Styling Guide

Always use the theme constants:
```typescript
import {COLORS, SIZES, FONTS} from '../theme';

const styles = StyleSheet.create({
  button: {
    backgroundColor: COLORS.primary,
    padding: SIZES.large,
    borderRadius: SIZES.small,
  },
  text: {
    ...FONTS.large,
    color: COLORS.text,
  },
});
```

## API Integration

Use the api service:
```typescript
import {photoAPI, userAPI} from '../services/api';

// In a component or hook:
const photos = await photoAPI.getPhotos();
const profile = await userAPI.getProfile();
```

## State Management

Using Zustand:
```typescript
import {useAppStore} from '../store/appStore';

function MyComponent() {
  const {userLocation, setUserLocation} = useAppStore();
  
  return (
    <View>
      {/* Use state */}
    </View>
  );
}
```

## Testing

Run tests with:
```bash
npm test
```

Jest configuration handles React Native + TypeScript

## Deployment

### Android
- Build: `cd android && ./gradlew assembleRelease`
- Output: `android/app/build/outputs/apk/release/app-release.apk`

### iOS
- Build: `cd ios && xcodebuild -workspace ShowSpot.xcworkspace -scheme ShowSpot -configuration Release`
- Use Xcode organizer for distribution

## Common Tasks

### Add a new dependency
```bash
npm install package-name
npm install --save-dev @types/package-name  # For TypeScript types
```

### Format code
```bash
npm run lint -- --fix
```

### Debug on device
- Android: `npm run android` (connect device via USB with debugging enabled)
- iOS: `npm run ios` (connect device via cable)

## Performance Tips

1. Use `React.memo()` for expensive component re-renders
2. Lazy load images with `react-native-fast-image`
3. Virtualize long lists with `FlatList` or `SectionList`
4. Profile with React DevTools

## Resources

- [React Native Docs](https://reactnative.dev/)
- [React Navigation](https://reactnavigation.org/)
- [Zustand](https://github.com/pmndrs/zustand)
- [React Native Maps](https://github.com/react-native-maps/react-native-maps)
- [TypeScript Handbook](https://www.typescriptlang.org/docs/)
