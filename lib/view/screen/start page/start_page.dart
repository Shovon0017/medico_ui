

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medico/common%20widget/common_button.dart';
import 'package:medico/view/screen/language%20selection/language_selection.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor:  Color(0xffFFFFFF),
      body: Center(
        child:
        Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/start image.png"),
            SizedBox(
              height: 200,
            ),
            CommonButton(buttonColor:Color(0xff22A6FE)
                ,buttonName: "GET STARTED", onTap:(){
            Get.to(()=>LanguageSelection())  ;
            })
          ],
        ),
      ),
    );
  }
}
