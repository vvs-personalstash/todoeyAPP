import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Task_data.dart';
import 'package:todoey/screens/taskscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => data())],
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
