import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String number;
  const MyButton({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, top: 10),
      child: ElevatedButton(
        onPressed: () {},
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Text(
            number,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
