import 'package:api_e_commerce/core/utiles/utiles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../core/themes/colors.dart';
import '../../models/explore_model.dart';
import '../explore_items/explore_items.dart';
import '../widgets/text_widget.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  List<ExploreModel> explores = [
    ExploreModel(
      image: 'assets/images/pngfuel_f.png',
      title: 'Frash Fruits & Vegetable',
      color: const Color(0xffF7A593),
    ),
    ExploreModel(
      image: 'assets/images/pngfuel_bev.png',
      title: 'Beverages',
      color: const Color(0xff53B175),
    ),
    ExploreModel(
      image: 'assets/images/pngfuel_oil.png',
      title: 'Cooking Oil & Ghee',
      color: const Color(0xffF8A44C),
    ),
    ExploreModel(
      image: 'assets/images/pngfuel_egg.png',
      title: 'Dairy & Eggs',
      color: const Color(0xffF7A593),
    ),
    ExploreModel(
      image: 'assets/images/pngfuel_bak.png',
      title: 'Bakery & Snacks',
      color: const Color(0xffF7A593),
    ),
    ExploreModel(
      image: 'assets/images/pngfuel_m.png',
      title: 'Meat & Fish',
      color: const Color(0xffB7DFF5),
    ),
    ExploreModel(
      image: 'assets/images/pngfuel_oil.png',
      title: 'Cooking Oil & Ghee',
      color: const Color(0xffFDE598),
    ),
    ExploreModel(
      image: 'assets/images/pngfuel_f.png',
      title: 'Frash Fruits & Vegetable',
      color: const Color(0xffF7A593),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(
      padding: EdgeInsets.symmetric(horizontal: 10.0.r),
      physics: const BouncingScrollPhysics(),
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              mainAxisSpacing: 15.dg,
              crossAxisSpacing: 15.dg,
              crossAxisCount: 2.bitLength,
              children: List.generate(
                  8,
                  (index) => InkWell(
                      onTap: () {
                        context.navigate(const ExploreItems());
                      },
                      child: Item(explores[index]))),
            ),
          ],
        ),
      ],
    )));
  }
}

Widget Item(ExploreModel model) {
  return Container(
    padding: EdgeInsets.all(10.r),
    height: 189.11.h,
    width: 174.5.w,
    decoration: BoxDecoration(
      color: model.color,
      borderRadius: const BorderRadius.all(Radius.circular(18)),
    ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            model.image,
          ),
          TextWidget(
            model.title,
            textAlign: TextAlign.center,
            maxLines: 2,
            color: AppColors.black,
            fontSize: 18.sp,
            fontWeight: FontWeight.w600,
          )
        ],
      ),
    ),
  );
}
