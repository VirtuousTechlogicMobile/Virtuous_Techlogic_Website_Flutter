import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDn9Fp_bgNA4Jh1WReKm5hWQQ1pJiTn8Gs",
            authDomain: "virtuous-techlogic-webs-bbr64z.firebaseapp.com",
            projectId: "virtuous-techlogic-webs-bbr64z",
            storageBucket: "virtuous-techlogic-webs-bbr64z.appspot.com",
            messagingSenderId: "56398585863",
            appId: "1:56398585863:web:8abc675f3643c504394aa2"));
  } else {
    await Firebase.initializeApp();
  }
}
