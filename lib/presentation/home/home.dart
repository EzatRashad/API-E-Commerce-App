import 'package:api_e_commerce/core/utiles/utiles.dart';
import 'package:api_e_commerce/presentation/home/widgets/home_Cat.dart';
import 'package:api_e_commerce/presentation/home/widgets/home_cursor.dart';
import 'package:api_e_commerce/presentation/home/widgets/location_and_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/themes/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.r),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: Column(children: [
                  30.ph,
                  const HomeBar(),
                  20.ph,
                  const HomeCursor(),
                  30.ph,
                ]),
              ),
              const HomeSliverList(),
              
            ],
          ),
        ),
      ),
    );
  }
}
