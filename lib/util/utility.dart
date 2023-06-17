import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void snackbarShowErrorMessage(BuildContext context, String? errorString) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    // margin: EdgeInsets.fromLTRB(30.0, 5.0, 15.0, 10.0),
    content: Row(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 20),
          child: Icon(
            Icons.warning_rounded,
            color: Colors.white,
          ),
        ),
        Flexible(child: Text(errorString!, style: TextStyle(fontSize: 15.sp))),
      ],
    ),
    duration: const Duration(seconds: 3),
  ));
}

void snackBarNotifyOperationSuccess(BuildContext context, String infoString) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    // margin: EdgeInsets.fromLTRB(30.0, 5.0, 15.0, 10.0),
    content: Row(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 20),
          child: Icon(
            Icons.info_outline,
            color: Colors.white,
          ),
        ),
        Flexible(
          child: Text(infoString,
              style: TextStyle(fontSize: 15.sp), overflow: TextOverflow.clip),
        ),
      ],
    ),
    duration: const Duration(seconds: 3),
  ));
}
