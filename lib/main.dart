import 'package:flutter/material.dart';
import 'package:task/testtask/testtask_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'task',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: TesttaskWidget(),
    );
  }
}
