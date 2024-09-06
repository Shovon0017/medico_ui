

import 'package:flutter/material.dart';
import 'package:medico/common%20widget/common_button.dart';

class DoctorInfo extends StatelessWidget {
  const DoctorInfo({super.key});

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
        child:
        Padding(
          padding: const EdgeInsets.symmetric(horizontal:10),
          child: Column(
            children: [
              Text("Doctor Info",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
              Image.asset("images/doctor images01.png"),
              Text("Assoc. Prof. Dr. Khandker Parvez Ahmad",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              Text("MBBS, Phd (Neurology) (ITALY))"),
              Text("MSc (Endocrinology) (UK"),
              CommonButton(
                  buttonColor: Colors.blue,
                  buttonName: "Booking Now", onTap: (){
              }),
              Row(
                children: [
                  Text("specialties:"),
                  CommonButton(buttonColor: Colors.blue,buttonHeight: 25,buttonWidth: 120,
                      buttonName: "Neurologist", onTap: (){
                  })
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
