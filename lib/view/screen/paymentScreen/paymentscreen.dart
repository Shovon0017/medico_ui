

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medico/common%20widget/CommonIcon.dart';
import 'package:medico/common%20widget/common_button.dart';
import 'package:medico/view/screen/home02%20only%20ui%20version/home02.dart';
import 'package:medico/view/screen/navigation%20bar/navigation.dart';
import 'package:medico/view/screen/notification/notification.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
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
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(

                child: Image.asset("images/payment.gif",fit: BoxFit.fill,)),
            Text("Payment Gateway",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            SizedBox(
              height: 30,
            ),
            CommonButton(
                buttonColor: Colors.blue,
                buttonName: "Payment Ok", onTap: (){
                  Get.offAll(()=>NavigationBarShow());
            })
          ],
        ),
      ),
    );
  }
}
