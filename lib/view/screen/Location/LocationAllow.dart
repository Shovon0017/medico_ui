

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medico/common%20widget/common_button.dart';
import 'package:medico/view/screen/home02%20only%20ui%20version/home02.dart';
import 'package:medico/view/screen/navigation%20bar/navigation.dart';
class LocationAllow extends StatelessWidget {
  const LocationAllow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:20),
            child: Container(
              height: 500,
              width: double.infinity,
              decoration: BoxDecoration(color: Color(0xffF1F1F1),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal:20),
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.location_on_outlined),
                    Text("Allow Maps to access this device’s precise location?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,)),
                    SizedBox(
                      height: 10,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 160,
                          width: 130,
                          child: Column(
                            children: [
                              Image.asset("images/Precise Img.png"),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Precise",style: TextStyle(fontSize: 17),)
                            ],
                          ),
                        ),
                        Container(
                          height: 160,
                          width: 130,
                          child: Column(
                            children: [
                              Image.asset("images/Approx Img.png"),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Approximate",style: TextStyle(fontSize: 17),)
                            ],
                          ),
                        ),
                      ],
                    ),SizedBox(
                      height: 30,
                    ),
                    CommonButton(
                        buttonColor: Color(0xffD2E4FC),
                        buttonName: "While using the app",textColor: Colors.black, onTap: (){
                      Get.to(()=>NavigationBarShow());
                    }),
                    CommonButton(
                        buttonColor: Color(0xffD2E4FC),
                        buttonName: "Only this time",textColor: Colors.black, onTap: (){
                      Get.to(()=>NavigationBarShow());
                    }),
                    CommonButton(
                        buttonColor: Color(0xffD2E4FC),
                        buttonName: "Don’t allow",textColor: Colors.black, onTap: (){
                      Get.to(()=>NavigationBarShow());
                    })
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
