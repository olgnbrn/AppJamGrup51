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
    apiKey: 'AIzaSyAWWtpYUZ7nB__Izxdgg32479Lyj_jdgJ8',
    appId: '1:227924869460:web:1a9bd8160e7fdc7c79c8c1',
    messagingSenderId: '227924869460',
    projectId: 'appjam51',
    authDomain: 'appjam51.firebaseapp.com',
    storageBucket: 'appjam51.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyASVAd_f56U6TtfrfNW51vwdqmKVn4G0MI',
    appId: '1:227924869460:android:10bc54a4a63dc3f279c8c1',
    messagingSenderId: '227924869460',
    projectId: 'appjam51',
    storageBucket: 'appjam51.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD4iebh4a8tkcBzmtIOrRcOwrBmxGz5s0o',
    appId: '1:227924869460:ios:caf4772d8c85b7b579c8c1',
    messagingSenderId: '227924869460',
    projectId: 'appjam51',
    storageBucket: 'appjam51.appspot.com',
    iosClientId: '227924869460-tad8ea0141rsd4s9d229g1dj9nga7ebn.apps.googleusercontent.com',
    iosBundleId: 'com.example.appjamgrup51',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD4iebh4a8tkcBzmtIOrRcOwrBmxGz5s0o',
    appId: '1:227924869460:ios:caf4772d8c85b7b579c8c1',
    messagingSenderId: '227924869460',
    projectId: 'appjam51',
    storageBucket: 'appjam51.appspot.com',
    iosClientId: '227924869460-tad8ea0141rsd4s9d229g1dj9nga7ebn.apps.googleusercontent.com',
    iosBundleId: 'com.example.appjamgrup51',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAWWtpYUZ7nB__Izxdgg32479Lyj_jdgJ8',
    appId: '1:227924869460:web:f1b6ac4ec287ddf279c8c1',
    messagingSenderId: '227924869460',
    projectId: 'appjam51',
    authDomain: 'appjam51.firebaseapp.com',
    storageBucket: 'appjam51.appspot.com',
  );

}