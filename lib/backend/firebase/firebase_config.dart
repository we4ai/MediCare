import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA8RbRKgpM52QuqEuqnc8TJljklHVM-9TM",
            authDomain: "medicare4care.firebaseapp.com",
            projectId: "medicare4care",
            storageBucket: "medicare4care.appspot.com",
            messagingSenderId: "1020083738101",
            appId: "1:1020083738101:web:26b9b11f5ba9a1cfaffcbc",
            measurementId: "G-9QXN8XS1KN"));
  } else {
    await Firebase.initializeApp();
  }
}
