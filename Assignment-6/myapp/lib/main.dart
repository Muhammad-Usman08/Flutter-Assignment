import 'package:flutter/material.dart';
// import 'package:myapp/screens/details.dart';
import 'package:myapp/screens/wish_list.dart';
// import 'package:myapp/screens/discover_screens.dart';
// import 'package:myapp/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Property App',
      home: WishList(),
    );
  }
}
