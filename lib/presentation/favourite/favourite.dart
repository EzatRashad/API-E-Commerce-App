import 'package:api_e_commerce/core/utiles/utiles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Favourite extends StatefulWidget {
  const Favourite({super.key});

  @override
  State<Favourite> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Favourite> {
  var product_name = "Product Name";
  var product_details = "details, price";
  var price = "4.45";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text(
              "Favorurite",
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontSize: 25.sp),
            ),
            15.ph,
            Expanded(
              child: ListView.separated(
                itemCount: 15,
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(
                    color: Colors.grey,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 12.r, horizontal: 10.r),
                    child: ListTile(
                      leading: Image.asset(
                        "assets/images/apple.png",
                        height: 80.h,
                      ),
                      title: Text(
                        product_name,
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      subtitle: Text(
                        "\$$price",
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontSize: 14.sp),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
