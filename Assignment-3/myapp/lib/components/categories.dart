import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  String image;
  Categories({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipOval(
        child: Image.network(
          '$image',
          width: 60.0,
          height: 60.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
