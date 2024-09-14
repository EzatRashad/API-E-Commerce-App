
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



extension NavigatorExtension on BuildContext {
  navigate(Widget page) {
    Navigator.push(this, MaterialPageRoute(builder: (context) => page));
  }
}

extension NavigatorExtension2 on BuildContext {
  navigateRemove(Widget page) {
    Navigator.pushAndRemoveUntil(
      this,
      MaterialPageRoute(builder: (context) => page),
          (route) => false,
    );
  }
}
//context.toPage(SecondPage());

extension EmptyPadding on num {
  SizedBox get ph => SizedBox(
    height: toDouble().h,
  );
  SizedBox get pw => SizedBox(
    width: toDouble().w,
  );
}


