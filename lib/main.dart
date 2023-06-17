import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:si_kkp_kkn/firebase_options.dart';
import 'package:si_kkp_kkn/screen/login_screen.dart';
import 'package:si_kkp_kkn/services/auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // [INFO] : Ternyata nggak ada locale di firebase >-<
  // await firebaseAuth.setLanguageCode('id');

  runApp(
    ScreenUtilInit(
      designSize: const Size(360, 640),
      builder: (context, _) => MaterialApp(
        theme: ThemeData(fontFamily: "Roboto"),
        home: const LoginMahasiswaScreen(),
      ),
    ),
  );
}
