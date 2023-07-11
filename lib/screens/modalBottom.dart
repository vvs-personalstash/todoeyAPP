import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Task_data.dart';
import 'package:todoey/task.dart';

class BottomAddTaskk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      padding: EdgeInsets.only(top: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Add Task',
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 30.0,
            ),
          ),
          TextField(
            onChanged: (newText) {
              newTaskTitle = newText;
            },
            textAlign: TextAlign.center,
            autofocus: true,
            decoration:
                InputDecoration(contentPadding: EdgeInsets.only(bottom: 20.0)),
          ),
          SizedBox(
            height: 40.0,
          ),
          TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStatePropertyAll(Colors.lightBlueAccent)),
              onPressed: () {
                context.read<data>().AddTask(newTaskTitle!);
                Navigator.pop(context);
              },
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
