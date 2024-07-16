import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAxsObZtbmjnPfm43tAt0xurp6KNeZv3pA",
            authDomain: "web-app-feb3f.firebaseapp.com",
            projectId: "web-app-feb3f",
            storageBucket: "web-app-feb3f.appspot.com",
            messagingSenderId: "242874408774",
            appId: "1:242874408774:web:4a537aba58bbf93fe70f47",
            measurementId: "G-015NCTCNQ5"));
  } else {
    await Firebase.initializeApp();
  }
}
