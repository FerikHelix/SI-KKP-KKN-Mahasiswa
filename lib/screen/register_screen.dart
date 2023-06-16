import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:si_kkp_kkn/constant/color.dart';
import 'package:si_kkp_kkn/screen/login_widget/login_form.dart';
import 'package:si_kkp_kkn/screen/register_widget/register_form.dart';
import 'package:si_kkp_kkn/screen/shared_widget/logo_kkp_kkn.dart';

class RegisterMahasiswaScreen extends StatelessWidget {
  const RegisterMahasiswaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Center(
                child: LogoKKPKKN(),
              ),
              
              RegisterForm(),
            ],
          ),
        ),
      ),
    );
  }
}
