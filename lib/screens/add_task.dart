import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  final Function addTaskCallback;

  AddTask(this.addTaskCallback);

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      padding: const EdgeInsets.only(
        top: 60,
        left: 20,
        right: 20,
        bottom: 80,
      ),
      child: Column(
        children: [
          // ignore: prefer_const_constructors
          Text(
            'Add new task',
            // ignore: prefer_const_constructors
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          // ignore: prefer_const_constructors
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          // ignore: prefer_const_constructors
          SizedBox(height: 20),
          TextButton(
            onPressed: () {
              // print(newTaskTitle);
              addTaskCallback(newTaskTitle);
            },
            // ignore: prefer_const_constructors, sort_child_properties_last
            child: Text('Add'),
            style: TextButton.styleFrom(
              backgroundColor: Colors.amber,
              
              // ignore: deprecated_member_use
              primary: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
