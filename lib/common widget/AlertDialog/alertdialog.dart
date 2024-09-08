import 'package:flutter/material.dart';
import 'package:medico/common%20widget/CommonTextField.dart';

class AlertDiaLogShow extends StatelessWidget {
  const AlertDiaLogShow({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        children: [
          CommonTextField(onChanged: ( ), labelText: "labelText"),
        ],
      ),
    );
  }
}
