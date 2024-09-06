import 'package:flutter/material.dart';

class AppointmentInfo extends StatelessWidget {
  const AppointmentInfo({super.key});

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
            child: Icon(Icons.notifications_active_outlined),
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Appointment Info",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Doctor Name:",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                TextSpan(
                    text: "Assoc. Prof. Dr. Khandker Parvez Ahm",
                    style: TextStyle(fontSize: 15, color: Colors.black))
              ])),
              SizedBox(height: 20),
              Text(
                "Patient Info",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(height: 10),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Patient Name:",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                TextSpan(
                    text: "Amirul Islam Amir",
                    style: TextStyle(fontSize: 15, color: Colors.black))
              ])),
              SizedBox(height: 10),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Patient Mobile Number:",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                TextSpan(
                    text: "015987654123",
                    style: TextStyle(fontSize: 15, color: Colors.black))
              ])),
              SizedBox(height: 10),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "type:",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                TextSpan(
                    text: "New",
                    style: TextStyle(fontSize: 15, color: Colors.black))
              ])),
              SizedBox(height: 10),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "gender:",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                TextSpan(
                    text: "Male",
                    style: TextStyle(fontSize: 15, color: Colors.black))
              ])),
              SizedBox(height: 10),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "chamber:",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                TextSpan(
                    text: "Delta Hospital Mymensingh",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black))
              ])),
              SizedBox(height: 10),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "4:00 PM",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                TextSpan(
                    text: "(Thu-Fri)",
                    style: TextStyle(fontSize: 15, color: Colors.black))
              ])),
              SizedBox(height: 10),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "address:",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                TextSpan(
                    text: " 55/5, Medical College Gate, Charpara, Mymensingh",
                    style: TextStyle(fontSize: 15, color: Colors.black))
              ])),
              SizedBox(height: 10),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "contact:",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                TextSpan(
                    text: "+8801847158301, +8801847158302",
                    style: TextStyle(fontSize: 15, color: Colors.black))
              ])),
              SizedBox(height: 10),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Doctor Fee:",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                TextSpan(
                    text: "1800 Tk",
                    style: TextStyle(fontSize: 15, color: Colors.black))
              ])),
            ],
          ),
        ),
      ),
    );
  }
}
