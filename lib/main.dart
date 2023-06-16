import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:si_kkp_kkn/screen/login_screen.dart';

void main() {
  runApp(ScreenUtilInit(
    designSize: const Size(360, 640),
    builder: (context, _) => MaterialApp(
      theme: ThemeData(fontFamily: "Roboto"),
      home: const LoginMahasiswaScreen(),
    ),
  ));
}
