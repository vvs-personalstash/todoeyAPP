import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/components.dart/listtile.dart';
import 'package:todoey/components.dart/listview.dart';
import 'package:todoey/screens/modalBottom.dart';
import 'package:todoey/task.dart';
import 'package:todoey/Task_data.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ListView a;
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: Colors.black.withOpacity(0.5),
              context: context,
              builder: ((context) => SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: BottomAddTaskk(),
                  )));
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: 70.0, left: 30.0, right: 30.0, bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.list,
                    color: Colors.lightBlueAccent,
                    size: 30.0,
                    opticalSize: 25.0,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'TODOEY',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                    fontSize: 50.0,
                  ),
                ),
                Text(
                  '${context.watch<data>().TaskCount} Tasks Left',
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0))),
            child: TaskView(),
          )),
        ],
      ),
    );
  }
}
