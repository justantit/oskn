import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBetSxjzW3bZWBGDJ6wjjYUJtgiYLjqbAo",
            authDomain: "oesnktest.firebaseapp.com",
            projectId: "oesnktest",
            storageBucket: "oesnktest.appspot.com",
            messagingSenderId: "1041252101338",
            appId: "1:1041252101338:web:4f0c21aefeed80a0b449e3",
            measurementId: "G-1XLKP9QT8N"));
  } else {
    await Firebase.initializeApp();
  }
}
