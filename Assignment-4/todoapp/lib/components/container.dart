import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 55,
        height: 20,
        margin: const EdgeInsets.only(left:10 ,  bottom: 50),
        decoration: BoxDecoration(
          color: Colors.yellow[600],
          borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        ));
  }
}
