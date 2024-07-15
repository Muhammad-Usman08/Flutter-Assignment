// import 'package:calculator/components/button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //variables
  String output = '0';

  String myOutput = '0';

  double num1 = 0;

  double num2 = 0;

  String operator = '';

//Calculation Function
  calculation(String buttonText) {
    if (buttonText == 'C') {
      myOutput = '0';
      operator = '';
      num1 = 0;
      num2 = 0;
    } else if (buttonText == '+' ||
        buttonText == '-' ||
        buttonText == 'x' ||
        buttonText == '/' ||
        buttonText == '%') {
      num1 = double.parse(output);
      operator = buttonText;
      myOutput = '0';
    } else if (buttonText == '.') {
      if (myOutput.contains(".")) {
        print("Already contains a decimals");
        return;
      } else {
        myOutput = myOutput + buttonText;
      }
    } else if (buttonText == '=') {
      num2 = double.parse(output);
      if (operator == '+') {
        myOutput = (num1 + num2).toString();
      }
      if (operator == '-') {
        myOutput = (num1 - num2).toString();
      }
      if (operator == 'x') {
        myOutput = (num1 * num2).toString();
      }
      if (operator == '/') {
        myOutput = (num1 / num2).toString();
      }
      if (operator == '%') {
        myOutput = (num1 % num2).toString();
      }
      num1 = 0;
      num2 = 0;
      operator = '';
    } else {
      myOutput = myOutput + buttonText;
    }
    setState(() {
      output = double.parse(myOutput).toString();
    });
  }

//Button Widget
  Widget myButton(dynamic color, String buttonText) {
    return (Container(
      margin: const EdgeInsets.only(left: 8, top: 6),
      child: ElevatedButton(
        onPressed: () {
          calculation(buttonText);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: const CircleBorder(),
          padding: const EdgeInsets.all(20),
          fixedSize: const Size(80, 75),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
              fontSize: 27,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ));
  }

  Widget bigbutton(String buttonText) {
    return (Container(
      margin: const EdgeInsets.only(left: 8, top: 8),
      child: ElevatedButton(
        onPressed: () {
          calculation(buttonText);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF333333),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
          // padding: const EdgeInsets.all(50),
          fixedSize: const Size(165, 75),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: const TextStyle(
              fontSize: 27,
              color: Colors.white,
            ),
          ),
        ),
      ),
    ));
  } //Button Widget end

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
              child: Text(
                output,
                style: const TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
            ),

            //Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                myButton(Colors.grey, 'C'),
                myButton(Colors.grey, 'Del'),
                myButton(Colors.grey, '%'),
                myButton(const Color(0xFFff9f0a), '/'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                myButton(const Color(0xFF333333), '7'),
                myButton(const Color(0xFF333333), '8'),
                myButton(const Color(0xFF333333), '9'),
                myButton(const Color(0xFFff9f0a), 'x'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                myButton(const Color(0xFF333333), '4'),
                myButton(const Color(0xFF333333), '5'),
                myButton(const Color(0xFF333333), '6'),
                myButton(const Color(0xFFff9f0a), '-'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                myButton(const Color(0xFF333333), '1'),
                myButton(const Color(0xFF333333), '2'),
                myButton(const Color(0xFF333333), '3'),
                myButton(const Color(0xFFff9f0a), '+'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                bigbutton('0'),
                myButton(const Color(0xFF333333), '.'),
                myButton(const Color(0xFFff9f0a), '=')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
