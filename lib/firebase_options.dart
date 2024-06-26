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
        return windows;
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
    apiKey: 'AIzaSyAYOsAl1xk37pnF0VKt2AmmDugWb8cAUHo',
    appId: '1:494039308516:web:faaf7f5b846ff0425334f1',
    messagingSenderId: '494039308516',
    projectId: 'logindemo-dec27',
    authDomain: 'logindemo-dec27.firebaseapp.com',
    storageBucket: 'logindemo-dec27.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBIpEOuqG5-EgFifxcqFz5kOrBxCSH9BOA',
    appId: '1:494039308516:android:ff230b3d5a1824bc5334f1',
    messagingSenderId: '494039308516',
    projectId: 'logindemo-dec27',
    storageBucket: 'logindemo-dec27.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD2PIyHI-zUdg3kLTjrXXwMx9CBmEqmYB0',
    appId: '1:494039308516:ios:f8ba90ea5fa8745d5334f1',
    messagingSenderId: '494039308516',
    projectId: 'logindemo-dec27',
    storageBucket: 'logindemo-dec27.appspot.com',
    iosBundleId: 'com.example.logindemo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD2PIyHI-zUdg3kLTjrXXwMx9CBmEqmYB0',
    appId: '1:494039308516:ios:f8ba90ea5fa8745d5334f1',
    messagingSenderId: '494039308516',
    projectId: 'logindemo-dec27',
    storageBucket: 'logindemo-dec27.appspot.com',
    iosBundleId: 'com.example.logindemo',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAYOsAl1xk37pnF0VKt2AmmDugWb8cAUHo',
    appId: '1:494039308516:web:fdce2be006dbf3a95334f1',
    messagingSenderId: '494039308516',
    projectId: 'logindemo-dec27',
    authDomain: 'logindemo-dec27.firebaseapp.com',
    storageBucket: 'logindemo-dec27.appspot.com',
  );
}
