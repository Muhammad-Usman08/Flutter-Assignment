import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  String number;
  MyButton({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, top: 10),
      child: ElevatedButton(
        onPressed: () {},
        child: Container(
          padding: EdgeInsets.all(10),
          child: Text(
            '$number',
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}

class YellowBtn extends StatelessWidget {
  String number;
  YellowBtn({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, top: 10),
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFff9f0a)),
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Text(
              '$number',
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
          )),
    );
  }
}
