import 'package:flutter/material.dart';

class MyTextFields extends StatelessWidget {
  final dynamic icon;
  final String hintText;
  final dynamic mycontroller;

  const MyTextFields({
    super.key,
    required this.hintText,
    required this.icon,
    required this.mycontroller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 45, right: 45, top: 20),
      child: TextField(
        controller: mycontroller ,
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
