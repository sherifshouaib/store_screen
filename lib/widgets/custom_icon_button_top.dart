import 'package:flutter/material.dart';

class CustomIconButtonTop extends StatelessWidget {
  const CustomIconButtonTop({required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, left: 15),
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            size: 28,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
