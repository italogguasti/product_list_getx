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
    apiKey: 'AIzaSyC0Z3KjEp2DgcRPjMGzbjcWwX_Y786taBE',
    appId: '1:1050861629629:web:b8125b6b4df75d3bed07d4',
    messagingSenderId: '1050861629629',
    projectId: 'getx-lesson-one',
    authDomain: 'getx-lesson-one.firebaseapp.com',
    databaseURL: 'https://getx-lesson-one-default-rtdb.firebaseio.com',
    storageBucket: 'getx-lesson-one.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAjKfSSl7th8cegZf7G-9LTGmhIIWKL1Ak',
    appId: '1:1050861629629:android:63000ba2b3608111ed07d4',
    messagingSenderId: '1050861629629',
    projectId: 'getx-lesson-one',
    databaseURL: 'https://getx-lesson-one-default-rtdb.firebaseio.com',
    storageBucket: 'getx-lesson-one.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAg3HEY-4JPDKvVuD-TqVcSvRYIzeAWHzw',
    appId: '1:1050861629629:ios:d4680a7fafea4790ed07d4',
    messagingSenderId: '1050861629629',
    projectId: 'getx-lesson-one',
    databaseURL: 'https://getx-lesson-one-default-rtdb.firebaseio.com',
    storageBucket: 'getx-lesson-one.appspot.com',
    iosClientId: '1050861629629-0obv8g9hn2mia5gemi985r9qrevveag1.apps.googleusercontent.com',
    iosBundleId: 'com.example.getxLessonOne',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAg3HEY-4JPDKvVuD-TqVcSvRYIzeAWHzw',
    appId: '1:1050861629629:ios:d4680a7fafea4790ed07d4',
    messagingSenderId: '1050861629629',
    projectId: 'getx-lesson-one',
    databaseURL: 'https://getx-lesson-one-default-rtdb.firebaseio.com',
    storageBucket: 'getx-lesson-one.appspot.com',
    iosClientId: '1050861629629-0obv8g9hn2mia5gemi985r9qrevveag1.apps.googleusercontent.com',
    iosBundleId: 'com.example.getxLessonOne',
  );
}
