import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  String name;
  String image;
  Categories({super.key, required this.image , required this.name});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          child: ClipOval(
            child: Image.network(
              '$image',
              width: 60.0,
              height: 60.0,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text('$name')
      ],
    );
  }
}
