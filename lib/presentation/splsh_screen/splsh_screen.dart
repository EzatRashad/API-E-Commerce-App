import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:api_e_commerce/presentation/get_started/get_started.dart';
 import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: const Color(0xff53B175),
      splash: Image.asset(
        'assets/images/splach.png',
        height: 67.h,
        width: 268.w,
      ),
      splashIconSize: double.infinity,
      nextScreen: const GetStarted(),
    );
  }
}
