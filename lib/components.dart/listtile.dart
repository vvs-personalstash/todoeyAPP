import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String TaskTitle;
  final Function(bool?) CheckBoxCallBack;
  final Function() longClicked;
  TaskTile(
      {required this.TaskTitle,
      required this.isChecked,
      required this.CheckBoxCallBack,
      required this.longClicked});
  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: longClicked,
        title: Text(TaskTitle,
            style: TextStyle(
              decoration:
                  isChecked ? TextDecoration.lineThrough : TextDecoration.none,
            )),
        trailing: Checkbox(
          value: isChecked, onChanged: CheckBoxCallBack, //checkBoxCallback,
        ));
  }
}
