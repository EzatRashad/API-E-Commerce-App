import 'package:api_e_commerce/presentation/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/themes/colors.dart';

class ButtonWidget extends StatelessWidget {
  String title;
  double width, height, radius;
  Widget? child;
  Gradient? gradient;
  double? fontSize;
  FontWeight? fontweight;
  var alignment;
  Color textColor, buttonColor, borderColor;
  void Function()? onTap;
  bool withBorder;

  ButtonWidget(
      {Key? key,
      this.gradient,
      this.title = "OK",
      this.width = 308.0,
      this.height = 54.0,
      this.onTap,
      this.child,
      this.fontSize,
      this.fontweight,
      this.alignment,
      this.textColor = Colors.white,
      this.buttonColor = AppColors.green,
      this.borderColor = AppColors.green,
      this.withBorder = false,
      this.radius = 20.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height.h ?? 67.h,
      width: width.w ?? double.maxFinite,
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: BorderRadius.circular(radius.r),
      ),
      child: Center(
        child: ElevatedButton(
          onPressed: onTap,
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
              shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(radius),
                      side: withBorder
                          ? BorderSide(color: borderColor, width: 2.w)
                          : const BorderSide(color: Colors.transparent)))),
          child: Align(
            alignment: alignment ?? Alignment.center,
            child: child ??
                TextWidget(
                  fontWeight: fontweight ?? FontWeight.w600,
                  title,
                  fontSize: fontSize ?? 18.sp,
                  color: textColor,
                ),
          ),
        ),
      ),
    );
  }
}

class MyTextButton extends StatelessWidget {
  MyTextButton({
    super.key,
    required this.function,
    required this.text,
    this.color,
    this.size,
  });

  Function function;
  String text;
  double? size;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        function();
      },
      child: TextWidget(text,
          fontSize: size ?? 12,
          color: color ?? AppColors.secondary,
          fontWeight: FontWeight.w500
          //  style: TextStyle(color: AppColors.secondary),
          ),
      // style: TextButton.styleFrom(
      //   elevation: 0,
      //   textStyle: TextStyle(
      //     fontWeight: FontWeight.w600,
      //     fontSize: (width <= 550) ? 13 : 17,
      //   ),
      // ),
    );
  }
}
