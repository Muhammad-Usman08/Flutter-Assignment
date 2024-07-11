import 'package:flutter/material.dart';

class MyOptions extends StatelessWidget {
  final String option;
  const MyOptions({super.key, required this.option});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 12, bottom: 12, left: 30, right: 30),
      child: Text(
        option,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: const Color(0xFFEAF1FF)),
    );
  }
}
