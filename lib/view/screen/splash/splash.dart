

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medico/view/screen/start%20page/start_page.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});


  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const StartPage()));
    });
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/splash logo.png")
          ],
        ),
      ),
    );
  }
}
