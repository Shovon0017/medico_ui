import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:medico/view/screen/department/department.dart';
import 'package:medico/view/screen/home/home.dart';
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
      home: Support(),
    );
  }
}
