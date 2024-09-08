import 'package:flutter/material.dart';
import 'package:medico/common%20widget/common_text.dart';

class CommonIconButton extends StatelessWidget {
  const CommonIconButton(
      {super.key,
        required this.onTap});
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Icon(Icons.notifications_active),
    );
  }
}
