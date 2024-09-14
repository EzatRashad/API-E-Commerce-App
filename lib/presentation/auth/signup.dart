import 'package:api_e_commerce/core/utiles/utiles.dart';
import 'package:api_e_commerce/presentation/auth/signin.dart';
import 'package:api_e_commerce/presentation/auth/widgets/textFiled_Widget.dart';
import 'package:api_e_commerce/presentation/layout/layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/themes/colors.dart';
import '../widgets/button_widget.dart';
import '../widgets/text_widget.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

TextEditingController email = TextEditingController();
TextEditingController name = TextEditingController();
TextEditingController phone = TextEditingController();

TextEditingController password = TextEditingController();

bool vis = true;

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0.r),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  20.ph,
                  Center(child: Image.asset("assets/images/logo2.png")),
                  35.ph,
                  TextWidget("Sign Up",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: AppColors.black,
                          )),
                  TextWidget("Enter your credentials to continue",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: AppColors.black,
                          )),
                  30.ph,
                  TextFiledW(
                    controller: name,
                    label: 'User Name',
                  ),
                  20.ph,
                  TextFiledW(
                    controller: name,
                    label: 'Phone Number',
                  ),
                  20.ph,
                  TextFiledW(
                    controller: email,
                    label: 'Email',
                  ),
                  20.ph,
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
                  RichText(
                      softWrap: true,
                      text: TextSpan(
                        text: 'By continuing you agree to our ',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              color: AppColors.black,
                            ),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Terms of Service ',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                    color: AppColors.green,
                                  )),
                          const TextSpan(
                            text: ' and ',
                          ),
                          TextSpan(
                              text: 'Privacy Policy.',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                    color: AppColors.black,
                                  )),
                        ],
                      )),
                  20.ph,
                  Center(
                    child: ButtonWidget(
                      width: double.infinity,
                      title: "Next",
                      onTap: () {
                        context.navigate(const Layout());
                      },
                    ),
                  ),
                  20.ph,
                  GestureDetector(
                    onTap: () {
                      context.navigate(const Login());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextWidget("have an account ?",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  color: AppColors.black,
                                )),
                        TextWidget(" Login",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  color: AppColors.green,
                                )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
