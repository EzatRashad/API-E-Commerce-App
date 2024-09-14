import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextWidget extends StatelessWidget {
  final String? title;
  final TextStyle? style;
  final double? fontSize;
  //final double? height;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;
  final bool isOffer;
  final String? fontFamily;
  final TextOverflow? overflow;
  final double? height;

  // ignore: use_key_in_widget_constructors
  const TextWidget(this.title,
      {this.fontSize,
      this.style,
      this.fontFamily,
      this.overflow,
      this.fontWeight,
      this.maxLines,
      this.color,
      this.textAlign,
      this.isOffer = false,
      this.height});

  @override
  Widget build(BuildContext context) {
    // print(Utils.lang);
    return Text(
      title ?? "",
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: style ??
          TextStyle(
            fontFamily: fontFamily ?? 'poppins',
            fontSize: fontSize ?? 16.sp,
            fontWeight: fontWeight,
            decoration: isOffer ? TextDecoration.underline : null,
            height: height ?? 1.h,
            color: color ?? Theme.of(context).textTheme.bodyLarge!.color,
            // letterSpacing: 1
          ),
      textAlign: textAlign,
    );
  }
}
