import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  const CommonTextField({super.key, required this.Controller,required this.hinText});
  final TextEditingController Controller;

  final dynamic hinText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: Controller,
      decoration: InputDecoration(hintText: hinText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          focusedBorder:
          OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.red)),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: Colors.red))),
      validator: (value) {
        if (value == "" || value == null) {
          return "Field can't be empty";
        }
        return null;
      },
    );
  }
}