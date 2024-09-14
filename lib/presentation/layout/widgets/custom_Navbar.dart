import 'package:api_e_commerce/core/utiles/utiles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/themes/colors.dart';
import '../../widgets/text_widget.dart';

class NavItem extends StatelessWidget {
  const NavItem(
      {super.key,
      required this.title,
      required this.image,
      required this.onTap,
      required this.color,
      this.appear = false});
  final String title;
  final String image;
  final Color color;
  final Function()? onTap;
  final bool appear;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          appear
              ? Container(
                  height: 4.h,
                  width: 55.w,
                  decoration: BoxDecoration(
                      color: AppColors.green,
                      borderRadius: BorderRadius.circular(10.r)),
                )
              : Container(
                  height: 4.h,
                  width: 44.w,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10.r)),
                ),
          15.ph,
          Image.asset(
            image,
            width: 25.w,
            height: 25.h,
          ),
          10.ph,
          TextWidget(
            title,
            fontSize: 11.sp,
            fontWeight: FontWeight.bold,
          )
        ],
      ),
    );
  }
}
