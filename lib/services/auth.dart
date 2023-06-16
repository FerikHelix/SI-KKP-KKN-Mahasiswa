import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

final firebaseAuth = FirebaseAuth.instance;

Future<String> signInWithEmail(String email, String password) async {
  try {
    await firebaseAuth.signInWithEmailAndPassword(
        email: email.trim().toLowerCase(), password: password.trim().toLowerCase());
    return "success";
  } on FirebaseAuthException catch (error) {
    debugPrint(error.message);
    throw Exception(error.message);
  }
}

Future<String> signUpWithEmail(String email, String password) async {
  try {
    firebaseAuth.createUserWithEmailAndPassword(email: email.trim().toLowerCase(), password: password.trim().toLowerCase());
    return "success";
  } on FirebaseAuthException catch (error) {
    debugPrint(error.message);
    throw Exception(error.message);
  }
}
