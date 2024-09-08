import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:medico/view/screen/Appoinment/AppointmentInfo.dart';
import 'package:medico/view/screen/Doctor_Report/doctor_report.dart';
import 'package:medico/view/screen/FAQ/FAQ.dart';
import 'package:medico/view/screen/branchInfo/banchInfo.dart';
import 'package:medico/view/screen/category/category.dart';
import 'package:medico/view/screen/department/department_api_version.dart';
import 'package:medico/view/screen/department/department_ui_version.dart';
import 'package:medico/view/screen/doctor%20list/doctorListSearch.dart';
import 'package:medico/view/screen/doctorInfo/doctorInfo.dart';
import 'package:medico/view/screen/home02%20only%20ui%20version/home02.dart';
import 'package:medico/view/screen/hospitalInfo/hospitalInfo.dart';
import 'package:medico/view/screen/investigation/investigation.dart';
import 'package:medico/view/screen/navigation%20bar/navigation.dart';
import 'package:medico/view/screen/notification/notification.dart';
import 'package:medico/view/screen/payLater/payLater.dart';
import 'package:medico/view/screen/paymentScreen/paymentscreen.dart';
import 'package:medico/view/screen/setting/setting.dart';
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
      home: NotificationShow(),
    );
  }
}
