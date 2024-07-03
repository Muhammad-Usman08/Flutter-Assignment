import 'package:flutter/material.dart';
import 'package:todoapp/components/task.dart';
import 'package:todoapp/screens/add.dart';

class Todo extends StatelessWidget {
  const Todo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6b79c0),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Header
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 30),
                    child: const Text(
                      'Welcome to Notes',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 29),
                    )),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/logo.jpeg',
                      width: 60,
                      height: 60.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 40),
              child: const Text(
                'Have a great day',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ), //Header end

            //Section 1
            Container(
                margin: const EdgeInsets.only(left: 40, top: 40),
                child: const Text(
                  'My Priority Task ',
                  style: TextStyle(fontSize: 23),
                )),

            //Section 2
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyTask(
                  time: '2 hours Ago',
                  course: 'Mobile App \nUi Design',
                  caption: 'using Figma and \nother tools',
                ),
                MyTask(
                    time: '4 hours Ago',
                    course: 'Capture sun \nRise Shots',
                    caption: 'complete GuruShot Challenge')
              ],
            ),

            //Section 3
            Container(
                margin: const EdgeInsets.only(top: 50, left: 30),
                child: const Text(
                  'My Tasks',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                )),
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Today's Task",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Weekly Task",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    "Monthly Task",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),

            //Section 4
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 30),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(style: BorderStyle.none),
                          borderRadius: BorderRadius.circular(20)),
                      child: ListTile(
                          title: const Text('data'),
                          subtitle: const Text('klsahdkal'),
                          trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.delete))),
                    );
                  }),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    margin: const EdgeInsets.only(top: 30, bottom: 20),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const AddTodo()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.yellow[700],
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w900,
                                color: Colors.black)),
                        child: const Text('Add more todo'))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
