# App Icon Setup Guide

## Overview
The ShowSpot app icon (Icon.png) needs to be placed in platform-specific directories for Android and iOS.

## Current Icon Location
- **Source:** `src/screens/Icon.png`

## Android Icon Setup

### Locations
App icons for Android go in different density buckets:

```
android/app/src/main/res/
├── mipmap-ldpi/ic_launcher.png        (36×36 px)
├── mipmap-mdpi/ic_launcher.png        (48×48 px)
├── mipmap-hdpi/ic_launcher.png        (72×72 px)
├── mipmap-xhdpi/ic_launcher.png       (96×96 px)
├── mipmap-xxhdpi/ic_launcher.png      (144×144 px)
└── mipmap-xxxhdpi/ic_launcher.png     (192×192 px)
```

### Instructions

1. **Copy Icon.png to each Android density folder:**
   - Copy `Icon.png` to each `mipmap-*` folder listed above
   - Rename each copy to `ic_launcher.png`
   - Or resize the icon to the correct dimensions for each folder

2. **Alternative: Use a single high-res icon**
   - Place your Icon.png in `android/app/src/main/res/mipmap-xxxhdpi/ic_launcher.png`
   - Android will automatically scale it down for other densities

3. **Verify in AndroidManifest.xml**
   - Check `android/app/src/main/AndroidManifest.xml`
   - Should have: `android:icon="@mipmap/ic_launcher"`

## iOS Icon Setup

### Location
```
ios/ShowSpot/Images.xcassets/AppIcon.appiconset/
```

### Icon Sizes Required

| Size | Filename |
|------|----------|
| 180×180 | AppIcon-60@3x.png |
| 120×120 | AppIcon-60@2x.png |
| 87×87 | AppIcon-29@3x.png |
| 58×58 | AppIcon-29@2x.png |
| 152×152 | AppIcon-76@2x.png |
| 76×76 | AppIcon-76@1x.png |
| 167×167 | AppIcon-83.5@2x.png |
| 1024×1024 | AppIcon-1024.png |

### Instructions

1. **Generate iOS icons from Icon.png:**
   - Use an online tool: [App Icon Generator](https://appicon.co/)
   - Or use ImageMagick/ffmpeg to resize
   - Generate all required sizes listed above

2. **Place icons in Contents.json:**
   - All PNG files go in: `ios/ShowSpot/Images.xcassets/AppIcon.appiconset/`
   - Update `Contents.json` with correct filenames and scales

3. **Verify in Xcode:**
   - Open `ios/ShowSpot.xcodeproj` in Xcode
   - Select Project > ShowSpot > General
   - Verify App Icons show correctly

## Automated Tools

### Option 1: Using App Icon Generator (Recommended)
1. Go to [appicon.co](https://appicon.co/)
2. Upload `Icon.png`
3. Download the generated icon pack
4. Extract to respective Android and iOS folders

### Option 2: Using CLI Tools

**Using ImageMagick (if installed):**
```bash
# Android icon (192×192 is largest needed)
convert Icon.png -resize 192x192 android/app/src/main/res/mipmap-xxxhdpi/ic_launcher.png

# iOS 180×180
convert Icon.png -resize 180x180 ios/ShowSpot/Images.xcassets/AppIcon.appiconset/AppIcon-60@3x.png
```

**Using Node.js sharp package:**
```bash
npm install -g sharp-cli

# Generate multiple sizes
sharp Icon.png resize 192 192 output=android/app/src/main/res/mipmap-xxxhdpi/ic_launcher.png
sharp Icon.png resize 180 180 output=ios/ShowSpot/Images.xcassets/AppIcon.appiconset/AppIcon-60@3x.png
```

## Manual Steps

### For Android:

1. Create folders if they don't exist:
   ```bash
   mkdir -p android/app/src/main/res/mipmap-{ldpi,mdpi,hdpi,xhdpi,xxhdpi,xxxhdpi}
   ```

2. Copy and rename Icon.png to each folder as `ic_launcher.png`

### For iOS:

1. Create folder:
   ```bash
   mkdir -p ios/ShowSpot/Images.xcassets/AppIcon.appiconset
   ```

2. Generate or resize Icon.png to required dimensions

3. Copy all sized images to the folder

4. Create `Contents.json`:
   ```json
   {
     "images": [
       {
         "filename": "AppIcon-60@3x.png",
         "idiom": "iphone",
         "scale": "3x",
         "size": "60x60"
       },
       {
         "filename": "AppIcon-60@2x.png",
         "idiom": "iphone",
         "scale": "2x",
         "size": "60x60"
       }
     ],
     "info": {
       "author": "xcode",
       "version": 1
     }
   }
   ```

## Testing Icons

### Android
1. Build and run: `npm run android`
2. Check app icon on home screen
3. Check icon in app drawer

### iOS
1. Build and run: `npm run ios`
2. Check app icon on home screen
3. Verify all sizes display correctly

## Troubleshooting

### Android Icon Not Showing
- Clear app cache: `npm run android` with clean build
- Ensure `ic_launcher.png` exists in mipmap folder
- Check AndroidManifest.xml references `@mipmap/ic_launcher`

### iOS Icon Not Showing
- Verify all sizes in Contents.json
- Check image names match Contents.json
- Delete derived data: `rm -rf ~/Library/Developer/Xcode/DerivedData/*`
- Rebuild in Xcode

## File Checklist

After setup, verify these files exist:

### Android
- [ ] `android/app/src/main/res/mipmap-xxxhdpi/ic_launcher.png` (192×192)
- [ ] `android/app/src/main/res/mipmap-xxhdpi/ic_launcher.png` (144×144)
- [ ] `android/app/src/main/res/mipmap-xhdpi/ic_launcher.png` (96×96)
- [ ] `android/app/src/main/res/mipmap-hdpi/ic_launcher.png` (72×72)
- [ ] `android/app/src/main/res/mipmap-mdpi/ic_launcher.png` (48×48)
- [ ] `android/app/src/main/res/mipmap-ldpi/ic_launcher.png` (36×36)

### iOS
- [ ] `ios/ShowSpot/Images.xcassets/AppIcon.appiconset/AppIcon-1024.png`
- [ ] `ios/ShowSpot/Images.xcassets/AppIcon.appiconset/AppIcon-60@3x.png`
- [ ] `ios/ShowSpot/Images.xcassets/AppIcon.appiconset/AppIcon-60@2x.png`
- [ ] `ios/ShowSpot/Images.xcassets/AppIcon.appiconset/Contents.json`

## Next Steps

1. Use App Icon Generator to create sized versions
2. Copy to Android `mipmap-*` folders
3. Copy to iOS `AppIcon.appiconset` folder
4. Rebuild: `npm run android` and `npm run ios`
5. Verify icons appear on home screen

---

**Your Icon:** `src/screens/Icon.png` (Perfect for location-based photo app! 📍📸)
