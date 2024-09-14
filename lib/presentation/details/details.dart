import 'package:api_e_commerce/core/utiles/utiles.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/themes/colors.dart';
import '../widgets/back_widget.dart';
import '../widgets/button_widget.dart';
import '../widgets/text_widget.dart';
import 'widgets/fav_button.dart';

class Details extends StatefulWidget {
  const Details({super.key, required this.image});

  final List<Widget> image;

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  List<Widget> images = [];

  int indexCrsoul = 0;
  int count = 0;
  bool isVisible1 = false;
  bool isVisible2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: const Color.fromARGB(255, 228, 223, 223),
              elevation: 0,
              leading: const Text(''),
              floating: true,
              pinned: true,
              expandedHeight: 400.h,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(65.h),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  height: 60.h,
                  decoration: const BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32),
                    ),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        25.pw,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextWidget(
                              maxLines: 1,
                              "Product Item",
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            const TextWidget(
                              "1kg, Price",
                              color: AppColors.grey,
                            ),
                          ],
                        ),
                        const Spacer(),
                        const FavouritButton(),
                        25.pw
                      ],
                    ),
                  ),
                ),
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Stack(
                  children: [
                    CarouselSlider(
                      options: CarouselOptions(
                        height: 400.h,
                        autoPlay: false,
                        viewportFraction: 1,
                        enableInfiniteScroll: false,
                        aspectRatio: 1.5,
                        enlargeCenterPage: true,
                        enlargeStrategy: CenterPageEnlargeStrategy.scale,
                        onPageChanged: (index, reason) {
                          // cubit.changeSlider(index);
                          indexCrsoul = index;
                          setState(() {});
                        },
                      ),
                      items: widget.image,
                    ),
                    const BackWidget(),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 80.0.r),
                        child: AnimatedSmoothIndicator(
                          activeIndex: indexCrsoul,
                          count: widget.image.length,
                          axisDirection: Axis.horizontal,
                          effect: ExpandingDotsEffect(
                            dotHeight: 10.h,
                            dotWidth: 10.w,
                            activeDotColor: AppColors.green,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: 55,
                        decoration: const BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(32),
                            topRight: Radius.circular(32),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  count > 0 ? count -= 1 : count = 0;
                                });
                              },
                              icon: const Icon(
                                Icons.remove,
                                color: AppColors.grey,
                                size: 30,
                              ),
                            ),
                            Container(
                              height: 35.h,
                              width: 40.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(255, 221, 213, 213),
                                ),
                                color: AppColors.white,
                              ),
                              child: Center(
                                child: FittedBox(
                                  child: TextWidget(
                                    "$count",
                                    color: AppColors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18.sp,
                                  ),
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  count += 1;
                                });
                              },
                              icon: const Icon(
                                Icons.add,
                                color: AppColors.green,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                        10.ph,
                        const Divider(color: AppColors.grey),
                        10.ph,
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextWidget(
                              "Product Detail",
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  isVisible1 = !isVisible1;
                                });
                              },
                              icon: Icon(
                                isVisible2
                                    ? Icons.arrow_drop_up
                                    : Icons.arrow_drop_down_sharp,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                        5.ph,
                        TextWidget(
                          !isVisible1
                              ? ""
                              : "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
                          fontSize: 13.sp,
                          color: AppColors.grey,
                          maxLines: 7,
                          height: 1.3.h,
                        ),
                        const Divider(color: AppColors.grey),
                        10.ph,
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextWidget(
                              "Nutritions",
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            const Spacer(),
                            Container(
                              height: 18.h,
                              width: 33.h,
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                color: Color.fromARGB(255, 242, 234, 234),
                              ),
                              child: Center(
                                child: FittedBox(
                                  child: TextWidget(
                                    "100",
                                    color: AppColors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp,
                                  ),
                                ),
                              ),
                            ),
                            20.pw,
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  isVisible2 = !isVisible2;
                                });
                              },
                              icon: Icon(
                                isVisible2
                                    ? Icons.arrow_drop_up
                                    : Icons.arrow_drop_down_sharp,
                                size: 30,
                              ),
                            ),
                          ],
                        ),
                        10.ph,
                        TextWidget(
                          !isVisible2
                              ? ""
                              : "One serving, or one medium apple, provides about 95 calories, 0 gram fat, 1 gram protein, 25 grams carbohydrate, 19 grams sugar (naturally occurring), and 3 grams fiber.",
                          fontSize: 13.sp,
                          color: AppColors.grey,
                          maxLines: 7,
                          height: 1.3.h,
                        ),
                        const Divider(color: AppColors.grey),
                        10.ph,
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            TextWidget(
                              "Review",
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w500,
                            ),
                            const Spacer(),
                            const Icon(
                              Icons.star,
                              color: Color(0xffF3603F),
                            ),
                            const Icon(
                              Icons.star,
                              color: Color(0xffF3603F),
                            ),
                            const Icon(
                              Icons.star,
                              color: Color(0xffF3603F),
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.grey,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        20.ph,
                        ButtonWidget(
                          width: double.infinity,
                          height: 40.h,
                          title: "Add To Basket",
                          fontSize: 18.sp,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
          physics: const BouncingScrollPhysics(),
        ),
      ),
    );
  }
}
