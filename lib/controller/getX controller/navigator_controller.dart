import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medico/view/screen/department/department_ui_version.dart';
import 'package:medico/view/screen/home02%20only%20ui%20version/home02.dart';
import 'package:medico/view/screen/support/support.dart';

class BottomNavBarController extends GetxController {
  final pageController = PageController(initialPage: 0);
  final NotchBottomBarController nController =
  NotchBottomBarController(index: 0);
  RxInt index = 0.obs;
  RxInt maxCount = 3.obs;
  RxInt page = 0.obs;

  List<Widget> bottomBarPages = [
    Department_ui(),
    Support(),
    Home02()
  ];
}