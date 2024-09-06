

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medico/common%20widget/common_button.dart';
import 'package:medico/view/screen/home02%20only%20ui%20version/home02.dart';
import 'package:medico/view/screen/navigation%20bar/navigation.dart';

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
            child: Icon(Icons.notifications_active_outlined),
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
                buttonColor: Colors.grey,
                buttonName: "Payment Ok", onTap: (){
                  Get.to(()=>NavigationBarShow());
            })
          ],
        ),
      ),
    );
  }
}
