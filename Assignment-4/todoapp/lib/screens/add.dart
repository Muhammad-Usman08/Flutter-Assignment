import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddTodo extends StatefulWidget {
  const AddTodo({super.key});

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  //Controllers
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  //add todo
  addItem() {
    var title = titleController.text;
    var description = descriptionController.text;
    print('title : $title');
    print('description : $description');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6b79c0),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: const Text(
                  'Create New Task',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: ClipOval(
                  child: Image.network(
                    'assets/images/logo.jpeg',
                    width: 60.0,
                    height: 60.0,
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),

          //Title
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: ListTile(
              title: const Text(
                'Title',
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500),
              ),
              subtitle: Container(
                margin: const EdgeInsets.only(top: 20),
                child: TextField(
                  controller: titleController,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(22.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Enter Title'),
                ),
              ),
            ),
          ),

          //Description
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: ListTile(
              title: const Text(
                'Description',
                style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500),
              ),
              subtitle: Container(
                margin: const EdgeInsets.only(top: 20),
                child: TextField(
                  controller: descriptionController,
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(
                          top: 0, bottom: 100.0, left: 20),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Enter Description'),
                ),
              ),
            ),
          ),

          Container(
            margin: const EdgeInsets.only(top: 45),
            width: 200,
            height: 40,
            child: ElevatedButton(
                onPressed: () {
                  addItem();
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green[400],
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.w700, color: Colors.black)),
                child: const Text('Add Todo')),
          )
        ],
      ),
    );
  }
}
