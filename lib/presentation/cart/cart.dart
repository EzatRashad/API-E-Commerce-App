import 'package:api_e_commerce/core/utiles/utiles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/button_widget.dart';
import 'bottomSheet.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [
              Text(
                "My cart",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge!
                    .copyWith(fontSize: 25.sp),
              ),
              15.ph,
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return EachItemInCart();
                    },
                    separatorBuilder: (BuildContext, int) {
                      return const Divider(

                      );
                    },
                    itemCount: 10),
              ),
              SizedBox(
                height: 65.h,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ButtonWidget(
                    width: double.infinity,
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                                padding: const EdgeInsets.all(20),
                                height: 500,
                                child: BottomShet());
                          });
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Spacer(
                          flex: 3,
                        ),
                        const Text(
                          "Go to checkout",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Spacer(
                          flex: 2,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: Colors.black.withOpacity(0.4)),
                          child: Text(
                            "  T.P  ",
                            style: TextStyle(color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )),
    );
  }
}

class EachItemInCart extends StatefulWidget {
  EachItemInCart({super.key});

  @override
  State<EachItemInCart> createState() => _EachItemInCartState();
}

class _EachItemInCartState extends State<EachItemInCart> {
  int numberOfBought = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         Image.asset(
           "assets/images/apple.png",
           width: 80,
           height: 80,
         ),
         Column(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text(
                   "Bell Pepper Red",
                   style: const TextStyle(
                       fontWeight: FontWeight.bold,
                       fontSize: 22,
                       color: Colors.black),
                 ),
               ],
             ),
             Text(
               "1Kg, price",
               style: const TextStyle(fontSize: 18, color: Colors.grey),
             ),
             SizedBox(
               height: 10,
             ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 IconButton(
                   onPressed: () {
                     if (numberOfBought > 0) {
                       numberOfBought--;
                     }
                     setState(() {});
                   },
                   icon: const Icon(
                     Icons.remove_circle_outline,
                     color: Colors.grey,
                     size: 45,
                   ),
                 ),

                 Text(
                   "$numberOfBought",
                   style: const TextStyle(fontSize: 24, color: Colors.black),
                 ),

                 IconButton(
                     onPressed: () {
                       numberOfBought++;

                       setState(() {});
                     },
                     icon: Icon(
                       Icons.add_circle_outline_outlined,
                       color: Colors.green[300],
                       size: 45,
                     )),

                 // const Spacer(),
               ],
             ),
           ],
         ),
         Column(
           crossAxisAlignment: CrossAxisAlignment.end,
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             IconButton(
                 onPressed: () {},
                 icon: const Icon(
                   Icons.close,
                   size: 24,
                   color: Colors.grey,
                 )),
             Text(
               "price \$",
               style: TextStyle(fontSize: 22),
             )
           ],
         )
       ],
            ),
    );
  }
}
