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
    apiKey: 'AIzaSyCnNCajfc00DRPSxx_JCdK82AhYPXF_yZo',
    appId: '1:539865325371:web:2109c2cbdad4803233211e',
    messagingSenderId: '539865325371',
    projectId: 'ghdanceacademy-cd8a7',
    authDomain: 'ghdanceacademy-cd8a7.firebaseapp.com',
    storageBucket: 'ghdanceacademy-cd8a7.appspot.com',
    measurementId: 'G-L8SBEJW32W',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDHM6e2noK4-mfeLXMIWzuYs2YY3dAiKSg',
    appId: '1:539865325371:android:bdc114a3e26d231933211e',
    messagingSenderId: '539865325371',
    projectId: 'ghdanceacademy-cd8a7',
    storageBucket: 'ghdanceacademy-cd8a7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCPIsZuxU7xena8ScGNhGlW_go0IT40ePo',
    appId: '1:539865325371:ios:c6dbd7df7037f89633211e',
    messagingSenderId: '539865325371',
    projectId: 'ghdanceacademy-cd8a7',
    storageBucket: 'ghdanceacademy-cd8a7.appspot.com',
    iosClientId: '539865325371-leh13omb6lovqg9f3ournh8dqcadan3s.apps.googleusercontent.com',
    iosBundleId: 'com.example.projectMobile',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCPIsZuxU7xena8ScGNhGlW_go0IT40ePo',
    appId: '1:539865325371:ios:30a5807684095ab633211e',
    messagingSenderId: '539865325371',
    projectId: 'ghdanceacademy-cd8a7',
    storageBucket: 'ghdanceacademy-cd8a7.appspot.com',
    iosClientId: '539865325371-gmvl6k28j79i86o4391gq8eoi7d9q1lu.apps.googleusercontent.com',
    iosBundleId: 'com.example.projectMobile.RunnerTests',
  );
}
