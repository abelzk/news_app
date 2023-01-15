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
    apiKey: 'AIzaSyDjBdkjv526vpro-8NcUcgQ9Pef20oJ7Os',
    appId: '1:1030501318601:web:fce75c141dea3824f03218',
    messagingSenderId: '1030501318601',
    projectId: 'addis-read',
    authDomain: 'addis-read.firebaseapp.com',
    storageBucket: 'addis-read.appspot.com',
    measurementId: 'G-QFJ0WY84FP',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDydxBtr3N709JlzPHtPNUy03PUGiFwUwI',
    appId: '1:1030501318601:android:3e8c1a166949377df03218',
    messagingSenderId: '1030501318601',
    projectId: 'addis-read',
    storageBucket: 'addis-read.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDRAs1DseQMz2ZqKsVbGSIhpaw63q6ZIis',
    appId: '1:1030501318601:ios:0ba13450ae066e73f03218',
    messagingSenderId: '1030501318601',
    projectId: 'addis-read',
    storageBucket: 'addis-read.appspot.com',
    iosClientId: '1030501318601-kg700rvg7t6p26vj09phmckkomd7idap.apps.googleusercontent.com',
    iosBundleId: 'com.example.newsApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDRAs1DseQMz2ZqKsVbGSIhpaw63q6ZIis',
    appId: '1:1030501318601:ios:0ba13450ae066e73f03218',
    messagingSenderId: '1030501318601',
    projectId: 'addis-read',
    storageBucket: 'addis-read.appspot.com',
    iosClientId: '1030501318601-kg700rvg7t6p26vj09phmckkomd7idap.apps.googleusercontent.com',
    iosBundleId: 'com.example.newsApp',
  );
}