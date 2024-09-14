import 'package:api_e_commerce/core/utiles/utiles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/themes/colors.dart';
import '../widgets/text_widget.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          50.ph,
          TextWidget(
            "Find Products",
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
          ),
          30.ph,
          TextFormField(
            cursorColor: AppColors.green,
            decoration: InputDecoration(
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(10.r)),
                ),
                prefixIcon: const Icon(Icons.search),
                prefixIconColor: AppColors.black,
                hintText: "Search store"),
            onTapOutside: ((event) {
              FocusManager.instance.primaryFocus?.unfocus();
            }),
          ),
          30.ph,
        ],
      ),
    );
  }
}
