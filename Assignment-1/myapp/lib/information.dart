import 'package:flutter/material.dart';

class personal extends StatelessWidget {
  const personal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Personal Information'),
      ),
      body: Text(
          'Name : Muhammad Usman Khan,   Skills : HTML, Css , JavaScript , React Js, tailwind css , bootstrap , firebase, Hobbies : Gaming, Travelling, Profession : Software Engineer'),
    );
  }
}
