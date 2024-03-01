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
    apiKey: 'AIzaSyAcGQGacb2H9zANvFCOwbbFXitHi9yN3ig',
    appId: '1:336056424478:web:ede59ac2fcf85dbccb760f',
    messagingSenderId: '336056424478',
    projectId: 'fir-flutter-codelab-eda87',
    authDomain: 'fir-flutter-codelab-eda87.firebaseapp.com',
    storageBucket: 'fir-flutter-codelab-eda87.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAHVbD2FzXqIPW5gMEejrLN7ZTSezzGBu8',
    appId: '1:336056424478:android:826d94fff169685dcb760f',
    messagingSenderId: '336056424478',
    projectId: 'fir-flutter-codelab-eda87',
    storageBucket: 'fir-flutter-codelab-eda87.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDWJvljFwgfhoXfMj-bq9AXbKQZfRFuf4c',
    appId: '1:336056424478:ios:d2e5529c485f64fccb760f',
    messagingSenderId: '336056424478',
    projectId: 'fir-flutter-codelab-eda87',
    storageBucket: 'fir-flutter-codelab-eda87.appspot.com',
    iosBundleId: 'com.example.gtkFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDWJvljFwgfhoXfMj-bq9AXbKQZfRFuf4c',
    appId: '1:336056424478:ios:d2e5529c485f64fccb760f',
    messagingSenderId: '336056424478',
    projectId: 'fir-flutter-codelab-eda87',
    storageBucket: 'fir-flutter-codelab-eda87.appspot.com',
    iosBundleId: 'com.example.gtkFlutter',
  );
}