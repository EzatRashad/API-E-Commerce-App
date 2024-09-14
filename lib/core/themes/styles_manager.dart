import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: ColorManager.whiteBackground,
    primaryColor: ColorManager.green,
    textTheme: TextTheme(
      titleLarge: TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.bold,
        fontSize: 22.sp,
        fontFamily: "Poppins",
      ),
      titleMedium: TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.bold,
        fontSize: 20.sp,
        fontFamily: "Poppins",

      ),
      titleSmall: TextStyle(
        color: AppColors.black,
        fontWeight: FontWeight.w400,
        fontSize: 18.sp,
        fontFamily: "Poppins",

      ),
    ),
  );
}
