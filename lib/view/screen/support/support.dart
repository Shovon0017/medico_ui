import 'package:flutter/material.dart';
import 'package:medico/common%20widget/common_button.dart';

class Support extends StatelessWidget {
  const Support({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Support",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),), centerTitle: true),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:10),
          child: Column(
            children: [SizedBox(height: 20),
              Image.asset("images/support pic.png"),SizedBox(height: 20),
              Text("How May we Help you Today",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
              SizedBox(height: 20),
              CommonButton(
                  buttonColor: Color(0xff22A6FE),
                  buttonName: "Share the problem in the Facebook group",
                  onTap: () {}),
              SizedBox(height: 10),
              CommonButton(
                  buttonColor: Color(0xff22A6FE),
                  buttonName: "Feedback & Suggesstion",
                  onTap: () {}),
              Container(
                height: 100,
                width: double.infinity,
                color: Color(0xffE9E9E9),
                child: Column(
                  children: [
                    Row(
                      children: [

                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
