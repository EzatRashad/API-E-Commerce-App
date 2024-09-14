import 'package:api_e_commerce/presentation/layout/widgets/custom_Navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
 import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../cubits/layout_cubit/layout_cubit.dart';
import '../../cubits/layout_cubit/layout_state.dart';

// ignore: must_be_immutable
class Layout extends StatefulWidget {
  const Layout({super.key});

  @override
  State<Layout> createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit(),
      child: BlocConsumer<LayoutCubit, LayoutState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          var cubit = LayoutCubit.get(context);
          return Scaffold(
            body: cubit.screens[cubit.currentIndex],
            bottomNavigationBar: Container(
              height: 75.h,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(18),
                    topLeft: Radius.circular(18),
                  ),
                  color: Colors.white24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  NavItem(
                    appear: cubit.currentIndex == 0 ? true : false,
                    title: "Shop",
                    image: "assets/images/shop.png",
                    color: Colors.orange,
                    onTap: () {
                      cubit.changeNav(0);
                    },
                  ),
                  NavItem(
                    appear: cubit.currentIndex == 1 ? true : false,
                    title: "Explore",
                    image: "assets/images/search.png",
                    color: Colors.orange,
                    onTap: () {
                      cubit.changeNav(1);
                    },
                  ),
                  NavItem(
                    appear: cubit.currentIndex == 2 ? true : false,
                    title: "Cart",
                    image: "assets/images/cart.png",
                    color: Colors.orange,
                    onTap: () {
                      cubit.changeNav(2);
                    },
                  ),
                  NavItem(
                    appear: cubit.currentIndex == 3 ? true : false,
                    title: "Favourite",
                    image: "assets/images/fav.png",
                    color: Colors.orange,
                    onTap: () {
                      cubit.changeNav(3);
                    },
                  ),NavItem(
                    appear: cubit.currentIndex == 4 ? true : false,
                    title: "Settings",
                    image: "assets/images/settings.png",
                    color: Colors.orange,
                    onTap: () {
                      cubit.changeNav(4);
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class HexagonClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path
      ..moveTo(size.width / 2, 0) // moving to topCenter 1st, then draw the path
      ..lineTo(size.width, size.height * .25)
      ..lineTo(size.width, size.height * .75)
      ..lineTo(size.width * .5, size.height)
      ..lineTo(0, size.height * .75)
      ..lineTo(0, size.height * .25)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
