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
      body: Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.centerRight,
              margin: const EdgeInsets.only(bottom: 30, right: 30),
              child: const Text(
                '0',
                style: TextStyle(
                  fontSize: 50,
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
                  color: Colors.grey,
                ),
                MyButton(
                  number: 'Del',
                  color: Colors.grey,
                ),
                MyButton(
                  number: '%',
                  color: Colors.grey,
                ),
                MyButton(
                  number: '/',
                  color: Color(0xFFff9f0a),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                  number: '7',
                  color: Color(0xFF333333),
                ),
                MyButton(
                  number: '8',
                  color: Color(0xFF333333),
                ),
                MyButton(
                  number: '9',
                  color: Color(0xFF333333),
                ),
                MyButton(
                  number: 'x',
                  color: Color(0xFFff9f0a),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                  number: '4',
                  color: Color(0xFF333333),
                ),
                MyButton(
                  number: '5',
                  color: Color(0xFF333333),
                ),
                MyButton(
                  number: '6',
                  color: Color(0xFF333333),
                ),
                MyButton(
                  number: '-',
                  color: Color(0xFFff9f0a),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                  number: '1',
                  color: Color(0xFF333333),
                ),
                MyButton(
                  number: '2',
                  color: Color(0xFF333333),
                ),
                MyButton(
                  number: '3',
                  color: Color(0xFF333333),
                ),
                MyButton(
                  number: '+',
                  color: Color(0xFFff9f0a),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 8, top: 8),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF333333),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      // padding: const EdgeInsets.all(50),
                      fixedSize: const Size(165, 75),
                    ),
                    child: const Center(
                      child: Text(
                        '0',
                        style: TextStyle(
                          fontSize: 27,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                const MyButton(
                  number: '.',
                  color: Color(0xFF333333),
                ),
                const MyButton(
                  number: '=',
                  color: Color(0xFFff9f0a),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
