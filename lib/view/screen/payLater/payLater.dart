import 'package:flutter/material.dart';

class Paylater extends StatelessWidget {
  const Paylater({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: Column(
          children: [
            Text("Appointment Info",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
            Text("Appointment Form",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
            Text(
              "Appointment Successfully Created",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            SizedBox(
              height: 150,
              width: double.infinity,
              child: Card(
                elevation: 3,
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
