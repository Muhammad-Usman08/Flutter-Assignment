import 'package:flutter/material.dart';

class MyTextFields extends StatelessWidget {
  dynamic icon;
  String hintText;

  MyTextFields({
    super.key,
    required this.hintText,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 45, right: 45, top: 20),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(23.0),
            border: InputBorder.none,
            fillColor: Colors.grey[100],
            filled: true,
            hintText: hintText,
            prefixIcon: icon),
      ),
    );
  }
}
