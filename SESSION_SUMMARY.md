# Flutter Mobile App - Session Summary

## Project Overview
Mobile app for Earned habit tracking platform using Flutter and Firebase.

**Package Name:** `day.earned.app`
**Backend:** Laravel API at earned.day with Firebase Auth integration

## Current Status

### ✅ Completed
- Flutter project structure created
- Firebase configured for Android and iOS
- Package names updated to match Firebase (`day.earned.app`)
- Android build configuration fixed (Gradle 8.13, minSdk 23, NDK 27.0.12077973)
- App runs successfully on Android emulator
- Animated splash screen implemented with Earned branding
- Modern login screen with Uber-style design
- Correct brand colors implemented (carbón #1C1917 as primary)
- Correct logos integrated (logo_bold.png, squared.png)
- Native launch screen configured with Earned carbón color

### 🚧 Current Issue
**Flutter Logo on Launch Screen**
- Black background is correct (#1C1917)
- Still showing Flutter logo during app initialization
- Need to remove/replace Flutter logo with blank or custom splash

### 📋 Pending Tasks
1. Remove Flutter logo from launch screen
2. Implement authentication service layer (Firebase Auth + Laravel API)
3. Implement API service layer for backend communication
4. Create register screen
5. Build main habits tracking UI
6. Test complete auth flow

## Design System

### Colors (from lib/theme/app_theme.dart)
```dart
// Gray scale - Carbón cálido
gray50: #FAFAF9   // Off-white background
gray100: #F5F5F4
gray200: #E7E5E4
gray300: #D6D3D1
gray600: #78716C
gray700: #57534E
gray900: #1C1917  // Primary color - Headlines
gray950: #0C0A09  // Almost black

// Terracota - Logo color
terracota600: #956C77

// Verde Salvia - Light mode accent
sage500: #8B9A8D

// Teal - Dark mode accent
teal600: #0D9488
```

### Brand Guidelines
- **Primary color:** Carbón (almost black) #1C1917
- **Logo color:** Terracota #956C77
- **Accents:** Sage/Teal only for highlights and secondary elements
- **Background:** Off-white #FAFAF9
- **Logo files:**
  - `logo_bold.png` - Horizontal logo (for login, headers)
  - `squared.png` - Square logo (for splash, app icon)
  - ❌ `logo_squared.png` - Old version, NOT USED

## Key Files

### Theme & Design
- `lib/theme/app_theme.dart` - Complete theme system with Earned colors
- `lib/main.dart` - Splash screen with animations
- `lib/screens/auth/login_screen.dart` - Modern login UI

### Android Configuration
- `android/app/build.gradle` - minSdk 23, NDK 27.0.12077973
- `android/settings.gradle` - Gradle 8.13.1, Kotlin 2.2.21
- `android/gradle/wrapper/gradle-wrapper.properties` - Gradle 8.13
- `android/app/src/main/res/values/colors.xml` - Launch background color
- `android/app/src/main/res/values/styles.xml` - Launch theme
- `android/app/src/main/res/drawable/launch_background.xml` - Launch screen

### Firebase
- `android/app/google-services.json` - Android Firebase config
- `ios/Runner/GoogleService-Info.plist` - iOS Firebase config
- `pubspec.yaml` - Firebase packages (firebase_core, firebase_auth, google_sign_in, firebase_messaging)

## Firebase Configuration

### Android
- Package: `day.earned.app`
- SHA-1 fingerprints configured in Firebase Console
- google-services.json in place

### iOS
- Bundle ID: `day.earned.app`
- GoogleService-Info.plist configured
- macOS deployment target: 10.15

## Dependencies

```yaml
dependencies:
  firebase_core: ^3.8.1
  firebase_auth: ^5.3.3
  google_sign_in: ^6.2.2
  firebase_messaging: ^15.1.5
  http: ^1.2.2
  provider: ^6.1.2
  shared_preferences: ^2.3.3
  flutter_secure_storage: ^9.2.2
  flutter_svg: ^2.0.16
  intl: ^0.20.1
```

## Known Issues & Solutions

### Issue: Flutter Logo Still Visible
- **Problem:** Default Flutter logo shows on black background during launch
- **Next Step:** Need to customize or remove the Flutter splash screen image
- **Possible Solutions:**
  1. Use flutter_native_splash package
  2. Manually configure Android drawable resources
  3. Create custom splash screen image

### Build Issues (Resolved)
- ✅ macOS deployment target 10.14 → 10.15
- ✅ Android minSdk 21 → 23 (Firebase Auth requirement)
- ✅ Gradle 9.2.0 → 8.13 (Groovy compatibility)
- ✅ MainActivity package path fixed
- ✅ NDK version updated to 27.0.12077973

## Running the App

```bash
# Android emulator
cd /Users/alex/Documents/projects/earned_mobile
flutter run -d emulator-5554

# Hot reload: r
# Hot restart: R (needed for native changes)
# Quit: q
```

## Next Session Goals
1. Fix Flutter logo on launch screen
2. Begin authentication implementation
3. Connect to Laravel backend API
