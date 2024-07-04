import 'package:flutter/material.dart';
import 'package:todoapp/screens/todo.dart';

class AddTodo extends StatefulWidget {
  const AddTodo({super.key});

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  //Controllers
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  //list
  List todos = [
    {'title': '', 'description': ''}
  ];

  //add todo
  addItem() {
    if (titleController.text != '' || descriptionController != '') {
      setState(() {
        todos.add({
          'title': '${titleController.text}',
          'description': '${descriptionController.text}'
        });
        print(todos);
        titleController.clear();
        descriptionController.clear();
      });
    } else {
      print('cannot be emptiyed');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6b79c0),
      body: Column(
        children: [
          // Container(
          //   height: 200,
          //   width: 400,
          //   child: ListView.builder(
          //       itemCount: item.length,
          //       itemBuilder: (context, index) {
          //         return ListTile(
          //           title: Text('${item[index]['title']}'),
          //           subtitle: Text('${item[index]['description']}'),
          //         );
          //       }),
          // ),
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
                  child: Image.asset(
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

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 45),
                width: 160,
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
              ),
              Container(
                margin: const EdgeInsets.only(top: 45),
                width: 160,
                height: 40,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Todo()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green[400],
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w700, color: Colors.black)),
                    child: const Text('Check Todo')),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
