import 'package:flutter/material.dart';
import 'package:medico/view/screen/doctor%20list/widget/doctorTextField.dart';

class AlertDiaLogShow extends StatelessWidget {
  final dynamic title;

  final dynamic content;

  const AlertDiaLogShow({super.key,required this.title,
  required this.content});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: title,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      content: content
    );
  }
}
