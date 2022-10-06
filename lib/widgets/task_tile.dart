import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;

  final void Function(bool?) checkboxChange;
  TaskTile(
      {required this.isChecked,
      required this.taskTitle,
      required this.checkboxChange,
      
      });

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      //onLongPress: () => updateTask(),
      // ignore: prefer_const_constructors
      trailing: Row(
        mainAxisSize: MainAxisSize.min, 
        children: [
          Checkbox(
            activeColor: Colors.amber,
            value: isChecked,
            onChanged: checkboxChange,
          ),
          IconButton(
            
            icon: Icon(Icons.delete),
            onPressed: () {
              
            },
            color: Theme.of(context).errorColor,
          ),
          
        ])
    );
  }
}
