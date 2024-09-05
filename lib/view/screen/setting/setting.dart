
import 'package:flutter/material.dart';
import 'package:medico/common%20widget/common_button.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:10),
        child: Column(
          children: [
            Text("Setting",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: Card(
                elevation: 5,
                color: Color(0xffFFFFFF),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:20),
                      child: Text("Language"),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: Card(
                elevation: 5,
                color: Color(0xffFFFFFF),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:20),
                      child: Text("About"),
                    ),
                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
