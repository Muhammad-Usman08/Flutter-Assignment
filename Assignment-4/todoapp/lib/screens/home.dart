import 'package:flutter/material.dart';
import 'package:todoapp/components/container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6b79c0),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header
            Center(
                child: Container(
              margin: const EdgeInsets.only(top: 40),
              child: const Text(
                'Manage Your \n Daily TO DO',
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
              ),
            )),

            // Section 1
            Image.asset(
              'assets/images/checklist.png',
              width: 300,
            ),

            //Section 2
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [MyContainer(), MyContainer(), MyContainer()],
            ),

            //Section 3
            Container(
              margin: const EdgeInsets.only(left: 30),
              child: const Text(
                'Without much worry just manage things as easy as piece of cake',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
              ),
            ),

            //Section 4
            Container(
                margin: const EdgeInsets.only(top: 30, bottom: 40),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.yellow[700],
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w900, color: Colors.black)),
                    child: const Text('Create a note')))
          ],
        ),
      ),
    );
  }
}
