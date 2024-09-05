import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:medico/view/screen/department/department_api_version.dart';
import 'package:medico/view/screen/department/department_ui_version.dart';
import 'package:medico/view/screen/home02%20only%20ui%20version/home02.dart';
import 'package:medico/view/screen/navigation%20bar/navigation.dart';
import 'package:medico/view/screen/splash/splash.dart';
import 'package:medico/view/screen/support/support.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(debugShowCheckedModeBanner: false,
      home: NavigationBarShow(),
    );
  }
}
