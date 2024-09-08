

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medico/common%20widget/CommonIcon.dart';
import 'package:medico/view/screen/notification/notification.dart';

class DoctorReport extends StatelessWidget {
  const DoctorReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xffFFFFFF),
      appBar:AppBar(
        backgroundColor: Color(0xffFFFFFF),
        title: SizedBox(
            height: 32,
            width: 114,
            child: Image.asset("images/splash logo.png")),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CommonIconButton(onTap: (){
              Get.to(()=>NotificationShow());
            }),
          )
        ],
      ) ,
      body: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Doctor Report",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
