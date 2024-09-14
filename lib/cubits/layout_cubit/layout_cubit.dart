import 'package:api_e_commerce/presentation/settings/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../presentation/cart/cart.dart';
import '../../presentation/explore/explore.dart';
import '../../presentation/favourite/favourite.dart';
import '../../presentation/home/home.dart';
import 'layout_state.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitial());
  static LayoutCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<Widget> screens = [
    const Home(),
    const Explore(),
    const Cart(),
    const Favourite(),
    const Settings(),
  ];

  void changeNav(int index) {
    currentIndex = index;

    emit(NewsNavChangeStates());
  }
}
