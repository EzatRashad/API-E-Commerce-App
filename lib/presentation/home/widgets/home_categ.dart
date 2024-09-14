import 'package:api_e_commerce/core/utiles/utiles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/colors.dart';
import '../../widgets/product_item.dart';
import '../../widgets/text_widget.dart';


class HomeCat extends StatefulWidget {
  const HomeCat({super.key, required this.title});
  final String title;

  @override
  State<HomeCat> createState() => _HomeCatState();
}

class _HomeCatState extends State<HomeCat> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            TextWidget(
              widget.title,
              fontSize: 22.sp,
              fontWeight: FontWeight.w400,
            ),
            const Spacer(),
            const TextWidget(
              "see all",
              color: AppColors.green,
            ),
          ],
        ),
        15.ph,
        SizedBox(
          height: 200.h,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: 4,
              itemBuilder: (context, i) => ProductItem(
                    image: i % 2 == 0
                        ? "assets/images/b.png"
                        : "assets/images/apple.png",
                  )),
        ),
        30.ph,
      ],
    );
  }
}
