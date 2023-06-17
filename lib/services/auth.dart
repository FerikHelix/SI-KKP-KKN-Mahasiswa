import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:si_kkp_kkn/util/utility.dart';

final firebaseAuth = FirebaseAuth.instance;

Future<String> signInWithEmail(
    String email, String password, BuildContext context) async {
  try {
    await firebaseAuth.signInWithEmailAndPassword(
        email: email.trim().toLowerCase(),
        password: password.trim().toLowerCase());
    return "success";
  } on FirebaseAuthException catch (error) {
    snackbarShowErrorMessage(context, error.message);
    return error.message!;
  }
}

Future<String> signUpWithEmail(
    String email, String password, BuildContext context) async {
  try {
    firebaseAuth.createUserWithEmailAndPassword(
        email: email.trim().toLowerCase(),
        password: password.trim().toLowerCase());
    return "success";
  } on FirebaseAuthException catch (error) {
    snackbarShowErrorMessage(context, error.message);
    return error.message!;
  }
}
