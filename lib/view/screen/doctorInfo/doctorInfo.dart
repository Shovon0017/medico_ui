import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medico/common%20widget/CommonIcon.dart';
import 'package:medico/common%20widget/common_button.dart';
import 'package:medico/view/screen/Appoinment/AppointmentInfo.dart';
import 'package:medico/view/screen/notification/notification.dart';

class DoctorInfo extends StatelessWidget {
  const DoctorInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Doctor Info",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Image.asset("images/doctor images01.png"),
                Text(
                  "Assoc. Prof. Dr. Khandker Parvez Ahmad",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text("MBBS, Phd (Neurology) (ITALY))"),
                Text("MSc (Endocrinology) (UK"),
                CommonButton(
                    buttonColor: Colors.blue,
                    buttonName: "Booking Now",
                    onTap: () {
                      Get.to(()=>AppointmentInfo());
                    }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "specialties:",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    CommonButton(
                        buttonColor: Colors.blue,
                        buttonHeight: 25,
                        buttonWidth: 120,
                        buttonName: "Neurologist",
                        onTap: () {}),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Experience:",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15)),
                      TextSpan(
                          text: "17+ Years",
                          style: TextStyle(fontSize: 15, color: Colors.black))
                    ]))
                  ],
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "Working:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 15)),
                  TextSpan(
                      text: "Victoria Healthcare",
                      style: TextStyle(fontSize: 15, color: Colors.black))
                ])),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "BMDC Number:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 15)),
                  TextSpan(
                      text: "M37103",
                      style: TextStyle(fontSize: 15, color: Colors.black))
                ])),
                Text(
                  "Chamber & Time:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  "About",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  "www.drkparvez.com.I am working in Neurology and diabetes more than 19 years. I have visited all kind of neurological problem like stroke,headache,vertigo,tinitus,tremor, low back pain,neck pain,facial daviation,hand and feet weakness, numbness,tingiling sensation,all kind of nerve and spine problem, parkinson diseases, epilepsy,memory problem,migraine, sinusitis and diabetes, miltiple joint pain,numbness and tingiling sensation both upper and lower limb.PlID,i had training from Royal infarmary Hospital, Edinburgh, London.post-graduation research fellowship in Rome University, Hospital, Italy, and had training from Germany.One year postgraduate training from Dhaka medical College and hospital",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
