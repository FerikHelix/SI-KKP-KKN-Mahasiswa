import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:si_kkp_kkn/constant/color.dart';
import 'package:si_kkp_kkn/services/auth.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final auth = firebaseAuth.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(children: [
        // TODO : Implement this besok
        Text(auth!.email!),
        Text(auth!.displayName!),
      ]),
    );
  }
}
