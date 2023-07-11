import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:collection';
import 'task.dart';

class data with ChangeNotifier {
  List<Task> _TaskList = [
    Task(TaskText: 'Buy milk'),
    Task(TaskText: 'Buy Vegetables'),
    Task(TaskText: 'Do laundry')
  ];
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_TaskList);
  }

  int get TaskCount {
    return _TaskList.length;
  }

  void AddTask(String title) {
    _TaskList.add(Task(TaskText: title));

    notifyListeners();
  }

  void modifyTask(Task task) {
    task.ToggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _TaskList.remove(task);
    notifyListeners();
  }
}
