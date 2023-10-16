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
    apiKey: 'AIzaSyBXglJzH7lNkE2m2k6qcRko3UvN6chBCO4',
    appId: '1:404739906665:web:c6d25204ee8745835f16f8',
    messagingSenderId: '404739906665',
    projectId: 'apicolling',
    authDomain: 'apicolling.firebaseapp.com',
    storageBucket: 'apicolling.appspot.com',
    measurementId: 'G-2R7FQ5M6VM',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBYF1diPAACB73BSbz1Usn3amdgp9lsg0c',
    appId: '1:404739906665:android:58253d53449a30805f16f8',
    messagingSenderId: '404739906665',
    projectId: 'apicolling',
    storageBucket: 'apicolling.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCuqYnXaxFZadW2wUdb7H_5X41pHtq1fXc',
    appId: '1:404739906665:ios:1b4d079b1a99fe0e5f16f8',
    messagingSenderId: '404739906665',
    projectId: 'apicolling',
    storageBucket: 'apicolling.appspot.com',
    iosBundleId: 'com.example.allApicoling',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCuqYnXaxFZadW2wUdb7H_5X41pHtq1fXc',
    appId: '1:404739906665:ios:1b4d079b1a99fe0e5f16f8',
    messagingSenderId: '404739906665',
    projectId: 'apicolling',
    storageBucket: 'apicolling.appspot.com',
    iosBundleId: 'com.example.allApicoling',
  );
}