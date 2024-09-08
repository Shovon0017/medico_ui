import 'package:flutter/material.dart';
import 'package:medico/view/screen/doctor%20list/widget/doctorTextField.dart';

class AlertDiaLogShow extends StatelessWidget {
  const AlertDiaLogShow({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      content: Container(
        height: 40,
        width: double.infinity,
        child: Column(
          children: [
            DoctorTextField(onChanged: (String text){}, label: "Search doctor / BDMC"),
          ],
        ),
      ),
    );
  }
}
