// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/add_task.dart';

import '../models/task.dart';
import '../widgets/tasks_list.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  List<Task> tasks = [
    // Task(name: 'task 1'),
    // Task(name: 'task 2'),
    // Task(name: 'task 3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) => SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: AddTask((newTaskTitle) {
                    setState(() {
                      tasks.add(Task(name: newTaskTitle));
                      Navigator.pop(context);
                    });
                  }),
                ),
              ),
            );
          },
          backgroundColor: Colors.amber,
          child: Icon(
            Icons.add,
            size: 50,
          ),
        ),
        backgroundColor: Colors.teal[100],
        body: Container(
          padding: const EdgeInsets.only(
            top: 60,
            left: 20,
            right: 20,
            bottom: 80,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(width: 20),
                  Text(
                    'Todo List',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: TasksList(tasks),
                ),
              )
            ],
          ),
        ));
  }
}
