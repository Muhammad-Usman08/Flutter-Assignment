import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final dynamic color;
  final String number;
  const MyButton({super.key, required this.number, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 8, top: 6),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(20),
          fixedSize: const Size(80, 75),
        ),
        child: Center(
          child: Text(
            number,
            style: const TextStyle(
              fontSize: 27,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
