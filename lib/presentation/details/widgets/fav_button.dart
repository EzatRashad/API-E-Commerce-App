import 'package:flutter/material.dart';

import '../../../../core/themes/colors.dart';

class FavouritButton extends StatefulWidget {
  const FavouritButton({super.key});

  @override
  State<FavouritButton> createState() => _FavouritButtonState();
}

class _FavouritButtonState extends State<FavouritButton> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isFav = !isFav;
        });
      },
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration:
            const BoxDecoration(shape: BoxShape.circle, color: AppColors.white),
        child: isFav == false
            ? const Icon(
                Icons.favorite_border_outlined,
                color: AppColors.black,
                size: 25,
              )
            : const Icon(
                Icons.favorite,
                color: AppColors.grey,
                size: 20,
              ),
      ),
    );
  }
}
