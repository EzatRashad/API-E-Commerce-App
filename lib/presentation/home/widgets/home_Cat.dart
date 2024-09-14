import 'package:flutter/material.dart';

import 'home_categ.dart';

class HomeSliverList extends StatefulWidget {
  const HomeSliverList({super.key});

  @override
  State<HomeSliverList> createState() => _HomeSliverListState();
}

class _HomeSliverListState extends State<HomeSliverList> {
  List<String> titles = [
    "Exclusive offer",
    "Best Selling",
    "Groceries",
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
          childCount: 3,
          (context, index) => HomeCat(
                title: titles[index],
              )),
    );
  }
}
