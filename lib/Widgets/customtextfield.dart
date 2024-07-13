import 'package:flutter/material.dart';

class customtextfield extends StatelessWidget {
  final String hinttext;
  final IconData icon;
  const customtextfield({
    super.key,
    required this.hinttext,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.5),
      ),
      child: TextField(
        decoration: InputDecoration(
            prefixIcon: Icon(icon),
            hintText: hinttext,
            border: InputBorder.none),
      ),
    );
  }
}
