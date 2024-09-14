import 'package:api_e_commerce/core/utiles/utiles.dart';
import 'package:api_e_commerce/presentation/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/themes/colors.dart';
import '../details/details.dart';
import 'button_widget.dart';

class ProductItem extends StatefulWidget {
  const ProductItem({super.key, required this.image});

  final String image;

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.navigate(Details(
          image: [
            Image.asset(widget.image),
            Image.asset(widget.image),
            Image.asset(widget.image)
          ],
        ));
      },
      child: Container(
        margin: EdgeInsets.only(right: 7.r),
        padding: EdgeInsets.all(10.r),
        decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(22),
            border: Border.all(
              color: const Color.fromARGB(255, 226, 222, 222),
            )),
        height: 190.h,
        width: 160.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Image.asset(
              widget.image,
              height: 65.h,
              fit: BoxFit.cover,
            )),
            10.ph,
            const TextWidget(
              "Organic Bananas",
            ),
            3.ph,
            TextWidget(
              "7pcs, Priceg",
              fontSize: 14.sp,
              color: AppColors.grey,
            ),
            15.ph,
            Row(
              children: [
                TextWidget(
                  "25 LE",
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                ),
                const Spacer(),
                Container(
                  alignment: Alignment.center,
                  height: 40.h,
                  width: 70.w,
                  decoration: BoxDecoration(
                    color: AppColors.green,
                    borderRadius: BorderRadius.circular(22),
                    border: Border.all(
                      color: const Color.fromARGB(255, 226, 222, 222),
                    ),
                  ),
                  child: Icon(
                    Icons.add,
                    color: AppColors.white,
                    size: 30.sp,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
