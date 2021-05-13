## Getting Started

A Framework to create a Flutter Project follow GetX Pattern Design.

GetX Pattern:

- [Design Pattern](https://github.com/kauemurakami/getx_pattern)
- [Cookbook: pub.dev](https://pub.dev/packages/get)
- [Diagram](https://imgur.com/WMVyvYv)
 ![](https://imgur.com/WMVyvYv.png)

## Create Project

Create new project with sound null safety:

```dart
// <project_name>: The project name for this new Flutter project. This must be a valid dart package name.
// <com.decomlab.base_source>: The organization responsible for your new Flutter project, in reverse domain name notation. This string is used in Java package names and as prefix in the iOS bundle identifier.
flutter create --project-name <project_name> --org <com.decomlab.base_source> <output directory>
&& dart migrate --apply-changes
```
## Change App Name/Package Name
- [Change App Name](https://stackoverflow.com/questions/49353199/how-can-i-change-the-app-display-name-build-with-flutter)
- [Change Package Name](https://stackoverflow.com/questions/51534616/how-to-change-package-name-in-flutter)

## Build Release
```dart
// First time
flutter run --profile --cache-sksl --purge-persistent-cache

// Not first time 
flutter run --profile --cache-sksl

// Play with the app to trigger as many animations as needed; particularly those with compilation jank.

// Press M at the command line of flutter run to write the captured SkSL shaders into a file named something like flutter_01.sksl.json.

// Android
flutter build apk --release --bundle-sksl-path flutter_android_01.sksl.json
or
flutter build appbundle --release --bundle-sksl-path flutter_01.sksl.json

// Bundle to apks
java -jar outputs/bundletool.jar build-apks --bundle=build/app/outputs/bundle/release/app-release.aab --output=outputs/unface_app.apks

// install apks
java -jar outputs/bundletool.jar install-apks --apks=outputs/unface_app.apks

// copy to release folder
cp build/app/outputs/flutter-apk/app-release.apk outputs/android-unface-release.apk

// iOS
flutter build ios --release --bundle-sksl-path flutter_ios_01.sksl.json
cp -r build/ios/iphoneos/Runner.app outputs/ios-unface-release.app
cd ios
xcodebuild -workspace Runner.xcworkspace -scheme Runner -sdk iphoneos -configuration Release archive -archivePath $PWD/build/Runner.xcarchive
xcodebuild -exportArchive -archivePath $PWD/build/Runner.xcarchive -exportOptionsPlist exportOptions.plist -exportPath $PWD/build/Runner.ipa
cd ..
cp build/ios/build/Runner.ipa/Runner.ipa outputs/ios-unface-release.ipa


```