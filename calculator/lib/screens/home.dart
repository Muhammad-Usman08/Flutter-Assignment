import 'package:calculator/components/button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

//Calculation Function
  calculation() {}

  //button Widget
  // Widget buttonText(){
  //   return (

  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Simple Calculator',
          style: TextStyle(
              fontWeight: FontWeight.w600, color: Colors.white, fontSize: 20),
        ),
      ),
      // body Started
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerRight,
            margin: EdgeInsets.only(bottom: 30),
            child: const Text(
              '0',
              style: TextStyle(
                fontSize: 43,
                color: Colors.white,
              ),
            ),
          ),

          //Buttons
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyButton(
                number: 'C',
              ),
              MyButton(
                number: '/',
              ),
              MyButton(
                number: 'x',
              ),
              MyButton(
                number: 'Del',
              ),
            ],
          ),
           const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyButton(
                number: '7',
              ),
              MyButton(
                number: '8',
              ),
              MyButton(
                number: '9',
              ),
              MyButton(
                number: '-',
              ),
            ],
          ),
           const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyButton(
                number: '4',
              ),
              MyButton(
                number: '5',
              ),
              MyButton(
                number: '6',
              ),
              MyButton(
                number: '+',
              ),
            ],
          ),
           const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyButton(
                number: '1',
              ),
              MyButton(
                number: '2',
              ),
              MyButton(
                number: '3',
              ),
              MyButton(
                number: '=',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
