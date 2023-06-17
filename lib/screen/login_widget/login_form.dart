import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:si_kkp_kkn/constant/color.dart';
import 'package:si_kkp_kkn/screen/register_screen.dart';
import 'package:si_kkp_kkn/screen/register_widget/register_form.dart';
import 'package:si_kkp_kkn/services/auth.dart';
import 'package:si_kkp_kkn/util/utility.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool isObscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "LOGIN MAHASISWA",
          style: TextStyle(
            fontFamily: "RobotoCondenced",
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
            fontSize: 24.sp,
            letterSpacing: 3,
            color: primaryColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Container(
            width: 282.w,
            height: 260.h,
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 25),
            decoration: BoxDecoration(
                color: surfaceColor, borderRadius: BorderRadius.circular(34)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        fillColor: primaryColor,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: const BorderSide(color: primaryColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: const BorderSide(color: elementColor)),
                        prefixIconColor: elementColor,
                        prefixIcon: const Icon(Icons.email_outlined),
                        hintText: "example@mail.com"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    controller: _passwordController,
                    obscureText: isObscurePassword,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        fillColor: primaryColor,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: const BorderSide(color: primaryColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r),
                            borderSide: const BorderSide(color: elementColor)),
                        prefixIconColor: elementColor,
                        prefixIcon: const Icon(Icons.password),
                        suffixIcon: IconButton(
                          icon: (isObscurePassword)
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off),
                          onPressed: () => _isObscurePasswordTapped(),
                        ),
                        suffixIconColor: elementColor,
                        hintText: "Password"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(50),
                        backgroundColor: buttonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        )),
                    onPressed: () => signInWithEmail(_emailController.text,
                        _passwordController.text, context),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Belum memiliki akun ? ",
                style: TextStyle(
                    color: primaryColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold)),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegisterMahasiswaScreen(),
                  ),
                );
              },
              child: Text(
                "Daftar",
                style: TextStyle(
                    color: const Color(0xFFFFE500),
                    fontSize: 16.sp,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        )
      ],
    );
  }

  void _isObscurePasswordTapped() {
    setState(() {
      isObscurePassword = !isObscurePassword;
    });
  }
}
