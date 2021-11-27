import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../color.dart';

class IgController extends GetxController with SingleGetTickerProviderMixin {
  late TabController tabC = TabController(length: 2, vsync: this);

  final List<Widget> myTabs = [
    Tab(
      icon: Icon(
        Icons.ac_unit_outlined,
        color: appBlack,
      ),
    ),
    Tab(
      icon: Icon(
        Icons.grid_3x3,
        color: appBlack,
      ),
    ),
  ];
}
