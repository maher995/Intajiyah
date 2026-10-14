import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCuBln4By1suFQzdV3HKlDqnCmKuNE1lKA",
            authDomain: "intajiyah-9yst64.firebaseapp.com",
            projectId: "intajiyah-9yst64",
            storageBucket: "intajiyah-9yst64.firebasestorage.app",
            messagingSenderId: "334771788849",
            appId: "1:334771788849:web:552819f4bd585027e24910"));
  } else {
    await Firebase.initializeApp();
  }
}
