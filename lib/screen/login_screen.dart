import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:si_kkp_kkn/constant/color.dart';
import 'package:si_kkp_kkn/screen/login_widget/login_form.dart';
import 'package:si_kkp_kkn/screen/shared_widget/logo_kkp_kkn.dart';

class LoginMahasiswaScreen extends StatelessWidget {
  const LoginMahasiswaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: SizedBox(
            width: 1.sw,
            height: 1.sh,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Center(
                  child: LogoKKPKKN(),
                ),
                LoginForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
