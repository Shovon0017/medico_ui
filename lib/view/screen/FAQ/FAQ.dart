

import 'package:flutter/material.dart';
import 'package:medico/common%20widget/search_field.dart';
import 'package:medico/view/screen/FAQ/search_FAQ.dart';
import 'package:medico/view/screen/Hospital_list/search_for_hospital.dart';
import 'package:medico/view/screen/investigation/search_investigation.dart';

class FAQ extends StatelessWidget {
  const FAQ({super.key});

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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:10),
          child: Column(
            children: [
              Text("FAQ",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              SearchFieldFAQ(onChanged: (String Text){
              }),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                    itemCount: 3,
                    physics: PageScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context,index){
                      return SizedBox(
                        height: 60,
                        width: double.infinity,
                        child: Card(
                          elevation: 5,
                          color: Color(0xffFFFFFF),
                          child: Row(
                            children: [
                              Icon(Icons.keyboard_arrow_right_outlined),
                              Text("How to Book a Doctor?")
                            ],
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),

    );
  }
}
