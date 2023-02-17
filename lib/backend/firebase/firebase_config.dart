import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDwOJIji8zaq9OCCqqOKx9_HReZ26vclEU",
            authDomain: "auction-2ee81.firebaseapp.com",
            projectId: "auction-2ee81",
            storageBucket: "auction-2ee81.appspot.com",
            messagingSenderId: "361672565712",
            appId: "1:361672565712:web:ac6f5bcae6ba15ca598fd5"));
  } else {
    await Firebase.initializeApp();
  }
}
