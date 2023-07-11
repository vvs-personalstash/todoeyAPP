import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/components.dart/listtile.dart';
import '../task.dart';
import 'package:todoey/Task_data.dart';

class TaskView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<data>(builder: (context, TaskList, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final task = TaskList.tasks[index];
          return TaskTile(
            TaskTitle: task.TaskText,
            isChecked: task.checkBox,
            CheckBoxCallBack: (CheckBoxState) {
              context.read<data>().modifyTask(task);
            },
            longClicked: () {
              context.read<data>().deleteTask(task);
            },
          );
        },
        itemCount: context.watch<data>().TaskCount,
      );
    });
  }
}
