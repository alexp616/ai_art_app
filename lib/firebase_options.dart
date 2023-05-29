// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDU4p0njYhLY1Flk8AVazIFKP7k9LoAHW0',
    appId: '1:453287190127:web:27463f69b75a103579779a',
    messagingSenderId: '453287190127',
    projectId: 'ai-art-app-742b2',
    authDomain: 'ai-art-app-742b2.firebaseapp.com',
    storageBucket: 'ai-art-app-742b2.appspot.com',
    measurementId: 'G-X6PMKW6DDY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAQhbVY_BnOzLakDfRJZGULWubEiUfo7x8',
    appId: '1:453287190127:android:1967e7aaf65c8e3b79779a',
    messagingSenderId: '453287190127',
    projectId: 'ai-art-app-742b2',
    storageBucket: 'ai-art-app-742b2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAUG1RpW2qPFjRPwPKB2QHl3LXuM9zS3uo',
    appId: '1:453287190127:ios:409ecce8e14e4f8179779a',
    messagingSenderId: '453287190127',
    projectId: 'ai-art-app-742b2',
    storageBucket: 'ai-art-app-742b2.appspot.com',
    iosClientId: '453287190127-18251hlnpdr3qun8uaoqr7aerl6kisip.apps.googleusercontent.com',
    iosBundleId: 'com.example.aiArtApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAUG1RpW2qPFjRPwPKB2QHl3LXuM9zS3uo',
    appId: '1:453287190127:ios:409ecce8e14e4f8179779a',
    messagingSenderId: '453287190127',
    projectId: 'ai-art-app-742b2',
    storageBucket: 'ai-art-app-742b2.appspot.com',
    iosClientId: '453287190127-18251hlnpdr3qun8uaoqr7aerl6kisip.apps.googleusercontent.com',
    iosBundleId: 'com.example.aiArtApp',
  );
}
