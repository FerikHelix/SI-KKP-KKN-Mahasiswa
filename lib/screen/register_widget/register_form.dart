// ignore_for_file: use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:si_kkp_kkn/constant/color.dart';
import 'package:si_kkp_kkn/screen/homescreen.dart';
import 'package:si_kkp_kkn/services/auth.dart';
import 'package:si_kkp_kkn/util/utility.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _namaController = TextEditingController();
  final _kelasController = TextEditingController();
  final _nimController = TextEditingController();

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool isObscurePassword = true;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        "DAFTAR MAHASISWA",
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
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 25),
          decoration: BoxDecoration(
              color: surfaceColor, borderRadius: BorderRadius.circular(34)),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Data Diri",
                    style: TextStyle(
                        fontSize: 20,
                        color: elementColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    controller: _namaController,
                    keyboardType: TextInputType.text,
                    textCapitalization: TextCapitalization.words,
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
                        prefixIcon: const Icon(Icons.person),
                        hintText: "Nama Panjang"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    controller: _kelasController,
                    keyboardType: TextInputType.text,
                    textCapitalization: TextCapitalization.characters,
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
                        prefixIcon: const Icon(Icons.school),
                        hintText: "Nama Kelas"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    controller: _nimController,
                    keyboardType: TextInputType.number,
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
                        prefixIcon: const Icon(Icons.onetwothree),
                        hintText: "Nim Mahasiswa"),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Akun",
                    style: TextStyle(
                        fontSize: 20,
                        color: elementColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
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
                        hintText: "e.g nim@global.ac.id"),
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
                                ? const Icon(Icons.visibility)
                                : const Icon(Icons.visibility_off),
                            onPressed: () => _isObscurePasswordTapped()),
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
                    onPressed: () => _daftarMahasiswaBaruHandler(),
                    child: Text(
                      "Daftar",
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
      ),
    ]);
  }

  void _isObscurePasswordTapped() {
    return setState(() {
      isObscurePassword = !isObscurePassword;
    });
  }

  void _daftarMahasiswaBaruHandler() async {
    // To ilham, jangan ada data yang di .then / await
    // biar bisa pakai firestore offline
    _firestoreSendDataDiriMahasiswa();
    final retValue = await signUpWithEmail(
        _emailController.text, _passwordController.text, context);

    if (retValue == "success") {
      await firebaseAuth.currentUser!
          .updateDisplayName(_namaController.text.trim());

      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const Homescreen(),
          ));
      snackBarNotifyOperationSuccess(
          context, "Berhasil mendaftarkan mahasiswa baru");
    }
  }

  void _firestoreSendDataDiriMahasiswa() {
    FirebaseFirestore.instance.collection("biodata-mahasiswa").add({
      "nama-panjang": _namaController.text.trim(),
      "kelas": _kelasController.text.trim().toUpperCase(),
      "nim": _nimController.text.trim(),
    });
  }
}
