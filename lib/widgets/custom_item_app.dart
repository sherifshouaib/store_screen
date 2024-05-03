import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test/widgets/custom_icon_button.dart';

class CustomItemApp extends StatelessWidget {
  const CustomItemApp({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomIconButton(icon: icon),
        Text(
          text,
          style: const TextStyle(color:  Colors.white,fontSize: 12),
        ),
      ],
    );
  }
}
