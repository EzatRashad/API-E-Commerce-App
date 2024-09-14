import 'package:api_e_commerce/core/themes/colors.dart';
import 'package:api_e_commerce/core/utiles/utiles.dart';
import 'package:api_e_commerce/presentation/auth/signin.dart';
 import 'package:flutter/material.dart';

import '../../core/themes/styles_manager.dart';
import '../widgets/button_widget.dart';
import '../widgets/text_widget.dart';


class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/onbording.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              Image.asset("assets/images/logo.png"),
              35.ph,
              TextWidget(
                textAlign: TextAlign.center,
                "Welcome \n to our store",
                style: Theme.of(context).textTheme.titleLarge!.copyWith(color: AppColors.white),
              ),
              10.ph,

              TextWidget(
                "Get your groceries in as  fast as one hour",
                style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppColors.white),
              ),
              40.ph,
              ButtonWidget(
                title: "Get Started",
                onTap: () {
                  context.navigate(const Login());
                },
              ),
              75.ph,
            ],
          ),
        ),
      ),
    );
  }
}
