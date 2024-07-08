import 'package:calculator/components/button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      //AppBar
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Simple Calculator',
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(left: 35, right: 35, bottom: 10),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(22.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(number: 'C'),
                MyButton(number: 'Del'),
                MyButton(number: '%'),
                YellowBtn(number: '/')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(number: '7'),
                MyButton(number: '8'),
                MyButton(number: '9'),
                YellowBtn(number: 'x')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(number: '4'),
                MyButton(number: '5'),
                MyButton(number: '6'),
                YellowBtn(number: '-')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(number: '1'),
                MyButton(number: '2'),
                MyButton(number: '3'),
                YellowBtn(number: '+')
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                  margin: const EdgeInsets.only(left: 10, top: 10),
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 10),
                        child: const Text(
                          '0',
                          style: TextStyle(fontSize: 20),
                        ),
                      ))),
              MyButton(number: '.'),
              YellowBtn(number: '='),
            ])
          ],
        ),
      ),
    );
  }
}
