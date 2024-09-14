import 'package:api_e_commerce/core/themes/colors.dart';
import 'package:api_e_commerce/core/utiles/utiles.dart';
import 'package:api_e_commerce/presentation/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  final List<Map<String, dynamic>> items = const [
    {'icon': Icons.local_mall_outlined, 'text': 'Orders'},
    {'icon': Icons.badge_outlined, 'text': 'My Details'},
    {'icon': Icons.location_on_outlined, 'text': 'Delivery Address'},
    {'icon': Icons.payment_outlined, 'text': 'Payment Methods'},
    {'icon': Icons.local_activity_outlined, 'text': 'Promo Cord'},
    {'icon': Icons.notifications_outlined, 'text': 'Notifications'},
    {'icon': Icons.help_outline_outlined, 'text': 'Help'},
    {'icon': Icons.error_outline, 'text': 'About'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: items.length,
              separatorBuilder: (BuildContext context, int index) {
                return const Divider(
                );
              },
              itemBuilder: (BuildContext context, int index) {
                return ListTileWidget(
                  icon: items[index]['icon'],
                  text: items[index]['text'],
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.r),
            child: ButtonWidget(
              width: double.infinity,
              child: Row(
                children: [
                  10.pw,
                  const Icon(
                    Icons.logout,
                    color: AppColors.white,
                  ),
                  110.pw,
                  Text(
                    "Log Out",
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          ),
          18.ph,
        ],
      ),
    );
  }
}

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key, required this.icon, required this.text});

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
        child: ListTile(
          leading: Icon(icon),
          title: Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.w800),
          ),
          trailing: const Icon(Icons.arrow_forward_ios_rounded),
        ),
      ),
    );
  }
}
