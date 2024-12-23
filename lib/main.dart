import 'package:flutter/material.dart';
import 'widgets/students.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Student List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Students(),
    );
  }
}
