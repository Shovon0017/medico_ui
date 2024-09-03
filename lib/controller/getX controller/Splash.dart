import 'dart:async';

import 'package:get/get.dart';
import 'package:medico/view/screen/start%20page/start_page.dart';
class SplashController extends GetxController {
   nextPage(){
    Timer(Duration(seconds: 3), (){
      Get.to(()=>StartPage());
    });
   }
   @override
  void onInit() {
    nextPage();
    super.onInit();
  }
}
