import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/themes/colors.dart';

class HomeCursor extends StatefulWidget {
  const HomeCursor({super.key});

  @override
  State<HomeCursor> createState() => _HomeCursorState();
}

class _HomeCursorState extends State<HomeCursor> {
   int indexCrsoul = 0;
  List<String> images = [
    'assets/images/banner.png',
    'assets/images/banner0.png',
    'assets/images/banner2.png',
  ];
  @override
  Widget build(BuildContext context) {
    return                   Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      CarouselSlider(
                        items: images
                            .map((e) => Container(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 0.r),
                                  height: 110.h,
                                  width: 368.w,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image(
                                      image: AssetImage(e),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ))
                            .toList(),
                        options: CarouselOptions(
                          viewportFraction: 1.0,
                          height: 110.h,
                          enableInfiniteScroll: true,
                          reverse: false,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 20),
                          autoPlayAnimationDuration: const Duration(seconds: 3),
                          autoPlayCurve: Curves.easeIn,
                          scrollDirection: Axis.horizontal,
                          onPageChanged: (index, reason) {
                            indexCrsoul = index;
                            setState(() {});
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 10.0.r),
                        child: AnimatedSmoothIndicator(
                          activeIndex: indexCrsoul,
                          count: images.length,
                          axisDirection: Axis.horizontal,
                          effect: ExpandingDotsEffect(
                              dotHeight: 10.h,
                              dotWidth: 10.w,
                              activeDotColor: AppColors.green),
                        ),
                      ),
                    ],
                  );
  }
}