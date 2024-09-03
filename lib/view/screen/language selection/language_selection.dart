
import 'package:flutter/material.dart';
import 'package:medico/common%20widget/common_button.dart';

class LanguageSelection extends StatelessWidget {
  const LanguageSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( backgroundColor:Color(0xffFFFFFF),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/english select logo.png"),
            SizedBox(height: 90),
            CommonButton(buttonColor:Colors.grey ,
                buttonName: "বাংলা",textColor: Colors.white, onTap: (){

            }),
            CommonButton(buttonColor:Color(0xff22A6FE) ,
                buttonName: "English", onTap: (){

            })
          ],
        ),
      ),
    );
  }
}
