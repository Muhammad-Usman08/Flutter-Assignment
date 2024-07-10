import 'package:flutter/material.dart';

class Links extends StatelessWidget {
  dynamic color;
  dynamic icon;
  Links({super.key, required this.color, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 18, bottom: 18, left: 32, right: 32),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFF8e8e8e)),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Icon(
        icon,
        color: color,
        size: 30,
      ),
    );
  }
}
