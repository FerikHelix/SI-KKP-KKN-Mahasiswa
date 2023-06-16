import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:si_kkp_kkn/constant/color.dart';

class LogoStyle {
  static final TextStyle logoTextStyle = TextStyle(
      color: primaryColor,
      fontSize: 36.sp,
      fontWeight: FontWeight.bold,
      fontStyle: FontStyle.normal,
      fontFamily: "RobotoCondenced");
}

class LogoKKPKKN extends StatelessWidget {
  const LogoKKPKKN({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("SI", style: LogoStyle.logoTextStyle),
        Text("KKP & KKN", style: LogoStyle.logoTextStyle),
        const Icon(
          Icons.school_rounded,
          color: elementColor,
          size: 113,
        ),
      ],
    );
  }
}
