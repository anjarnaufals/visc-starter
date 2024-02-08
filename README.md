# visc_starter

Starter template for production applications with a REST backend.

The main aim of this template is to get you up and running as fast as possible on your next production-ready Flutter project without all the hassle of initial project setup.

## What this is

This is a simple boilerplate template for creating a production-ready Flutter app with icon, rest boilerplate, and reporting (analytics and crash reporting) all wired up for you.

## State Management and App Architecture

Since I'm like clean code architecture and bloc architecture, seems this template is compression results from that two architecture. tehee :=D

## Getting Started

1. **Get the template**

   Create your project using this repo by either:

   * Clone this repo to your local machine

2. **Turn Off comment on .GitIgnore**
  
   below is sensitive information ussualy

  * .env.dev
  * .env_dev
  * env_dev.g.dart
  * env_prod.g.dart


3. **Install dependencies**

   Run `flutter pub get` to fetch dependencies.

4. **Application Bundle Name**

   Now to change your app's package name/bundle identifier in both Android and iOS manifests, run `flutter pub run change_app_package_name:main <com.new.package.name>`.

   * This step uses [change_app_package_name](https://pub.dev/packages/change_app_package_name), go give the package some love.

5. **Application Name**
   Next, you'll need to change your app's user-readable label - the `CFBundleName` and/or `CFBundleDisplayName` within the `Info.plist` (for iOS) and `android:label` field in your application node in `AndroidManifest.xml` (for Android).

   I'm afraid this step is manual; it would be cool if `change_app_package_name` could do this for you.

   **NOTE**: You'll also need to change your package `name` and `description` within `pubspec.yaml`

6. **App Icons**

   Then we'll auto-generate your app launcher icons using the [flutter_launcher_icons](https://pub.dev/packages/flutter_launcher_icons) package.
   * Copy the image you want to make your launcher icons out of to `assets/icon/icon.png.`
   * Now run `flutter pub run flutter_launcher_icons`. This command will auto-generate Android and iOS launcher icons from the PNG file for the different DPIs and place them in their respective resource directories.

   **NOTE**: Check the [package documentation](https://pub.dev/packages/flutter_launcher_icons#book-guide) for more configuration options on generating launcher icons updating your `pubspec. yaml` accordingly.
   For example, you may want different icons for different platforms since Android allows you to use a transparent icon and iOS doesn't.
   However, the default configuration included in this template will be sufficient in most cases.

7. **Environment variables**

   We'll make use of [envied package](https://pub.dev/packages/envied) to load app configuration from `.env` files.
   This will allow us to easily switch between different app configurations when running the app under different environments like production, staging, or debug modes.

   All `.env` files can be placed in the root directory of your project. The
   To set up a new environment, create a new file with a `.env` extension (e.g. `.env` or `debug.env` or `staging.env`), then copy the contents of `.env-sample` and populate it as needed.

   The `lib/env.dart` file imports the environment variables into the app. Look at [the documentation](https://pub.dev/packages/envied#overview) to understand how to use the `envied` package. 

   To obfuscate and hide sensitive ENV variable use the `obfuscate` attribute like so: `@EnviedField(obfuscate: true)`.

   **NOTE:** All `.env` files (and `envied`'s `env.g.dart` file) are `.gitignored` by default since they may contain sensitive information such as paths, keys, and such
   To specify new env keys add them to the `.env-sample` file, which will be copied by other devs and the corresponding configuration will be provided

8. **Firebase Reporting**

   In this step, we are going to integrate different Firebase Reporting Tools into your app, including [Firebase Analytics](https://firebase.google.com/products/analytics) and [Crashlytics](https://firebase.google.com/products/crashlytics/).

   * Create your Firebase project on the [Firebase Console](https://console.firebase.google.com/)
   * Download your `GoogleService-Info.plist` & `google-services.json` and drop them into their corresponding folders for iOS and Android. I've `.gitignore'd these files so that you won't, by any chance, have them checked into your VCS by mistake.
   * dont forget to configure flutter fire to your project

   **NOTES:**
   * All the Firebase Services we're using in this project are free of charge - at least at the time of writing - so they will not attract any charges.


9. **TODOs**

   Locate any `TODOs` within the lib folder and get that sorted.

10. **Work work work work!**

   Now go start working on your app. Happy hacking.

11. **Deploying**

   Before releasing your Android app, make sure to sign it by:

   [Generate a Keystore file](https://flutter.dev/docs/deployment/android#create-a-keystore) if you don't already have one. If you have one, ignore this step and go to the next.

   Go to `android/key.properties` and include your Keystore path, alias, and password.

12. Thats All!


## Packages used

* [change_app_package_name](https://pub.dev/packages/change_app_package_name) - Changes app package name with a single command. It makes the process very easy and fast.
* [dio](https://pub.dev/packages/dio) - The best HTTP Client for Flutter IMO. Reusable interceptors, amirite?
* [dio_smart_retry](https://pub.dev/packages/dio_smart_retry) -Flexible retry library for Dio package. This is a next generation of an abandoned dio_retry package. By default, the request will be retried only for appropriate retryable http statuses.
* [envied](https://pub.dev/packages/envied) - Load configuration from a `.env` file.
* [firebase_analytics](https://pub.dev/packages/firebase_analytics) - Flutter plugin for Google Analytics for Firebase, an app measurement solution that provides insight on app usage and user engagement on Android and iOS.
* [firebase_crashlytics](https://pub.dev/packages/firebase_crashlytics) - Flutter plugin for Firebase Crashlytics. It reports uncaught errors to the Firebase console.
* [equatable](https://pub.dev/packages/equatable) - Compare Object and copy it.
* [auto_route](https://pub.dev/packages/auto_route) - AutoRoute is a declarative routing solution, where everything needed for navigation is automatically generated for you.
