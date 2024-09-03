

import 'package:flutter/material.dart';

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

          ],
        ),
      ),
    );
  }
}
