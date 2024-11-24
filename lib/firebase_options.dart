// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDRDTWIBP9KFWEMgxkul1p1t9EmYKYPDKo',
    appId: '1:397774639805:android:b7fc3558dbe650205e5dd4',
    messagingSenderId: '397774639805',
    projectId: 'first-firebase-project-332a9',
    storageBucket: 'first-firebase-project-332a9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBthidhYNQVmm_Y_oLwjeMtYXuG9Ej_rC4',
    appId: '1:397774639805:ios:36b0181c14e2af965e5dd4',
    messagingSenderId: '397774639805',
    projectId: 'first-firebase-project-332a9',
    storageBucket: 'first-firebase-project-332a9.appspot.com',
    androidClientId: '397774639805-ip5oetla83pi9f326dqsc78c7tqj56a3.apps.googleusercontent.com',
    iosClientId: '397774639805-hlrt4noiq6pmlnbsk7oqurisv405uk6r.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatApp',
  );
}