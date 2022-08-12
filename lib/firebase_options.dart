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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for android - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        return macos;
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyC-gy1jwUYnTU74qpDHajOFDb3rF2xxiUY',
    appId: '1:989491867021:web:6366020575c9d28ceda1c4',
    messagingSenderId: '989491867021',
    projectId: 'stacktrace-parser',
    authDomain: 'stacktrace-parser.firebaseapp.com',
    storageBucket: 'stacktrace-parser.appspot.com',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyArl8MtIOx0k20Xm1iHprjZAUZb_YCK0nM',
    appId: '1:989491867021:ios:cf6bd71010654b60eda1c4',
    messagingSenderId: '989491867021',
    projectId: 'stacktrace-parser',
    storageBucket: 'stacktrace-parser.appspot.com',
    iosClientId: '989491867021-h8gd058c4h419arks965rg2nrd8he5qg.apps.googleusercontent.com',
    iosBundleId: 'com.example.stacktraceParser',
  );
}