import 'package:api_e_commerce/core/utiles/utiles.dart';
import 'package:api_e_commerce/presentation/auth/signup.dart';
import 'package:api_e_commerce/presentation/auth/widgets/textFiled_Widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/themes/colors.dart';
import '../../core/themes/styles_manager.dart';
import '../layout/layout.dart';
import '../widgets/button_widget.dart';
import '../widgets/text_widget.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  bool vis = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                40.ph,
                Center(child: Image.asset("assets/images/logo2.png")),
                60.ph,
                TextWidget(
                  "Login",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.black,)
                ),
                TextWidget(
                  "Enter your credentials to continue",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.black,)
                ),
                40.ph,
                TextFiledW(
                  controller: email,
                  label: 'Email',
                ),
                30.ph,
                TextFiledW(
                  controller: password,
                  label: 'Password',
                  obscure: vis,
                  suffex: IconButton(
                    onPressed: () {
                      setState(() {
                        vis = !vis;
                      });
                    },
                    icon: Icon(
                      vis ? Icons.visibility : Icons.visibility_off,
                      color: vis ? AppColors.green : Colors.red,
                    ),
                  ),
                ),
                20.ph,
                Row(
                  children: [
                    const Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: TextWidget(
                        "Forget password ?",
                          style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppColors.black,)
                      ),
                    ),
                  ],
                ),
                30.ph,
                ButtonWidget(
                  title: "Login",
                  width: double.maxFinite,
                  onTap: () {
                    context.navigateRemove( Layout());
                  },
                ),
                25.ph,
                GestureDetector(
                  onTap: () {
                    context.navigate(const Signup());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextWidget(
                        "Dont have an account ?",
                          style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppColors.black,)
                      ),
                      TextWidget(
                        " SignUp",
                          style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppColors.green,)

                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
