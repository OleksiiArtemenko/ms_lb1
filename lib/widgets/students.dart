import 'package:flutter/material.dart';
import '../models/student.dart';
import 'student_item.dart';

class Students extends StatelessWidget {
  final List<Student> students = [
    Student(
      firstName: 'Oleksii',
      lastName: 'Artemenko',
      department: Department.it,
      grade: 90,
      gender: Gender.male,
    ),
    Student(
      firstName: 'Anton',
      lastName: 'Kohan',
      department: Department.law,
      grade: 85,
      gender: Gender.male,
    ),
    Student(
      firstName: 'Vladelen',
      lastName: 'Lomako',
      department: Department.medical,
      grade: 92,
      gender: Gender.male,
    ),
    Student(
      firstName: 'Viktoria',
      lastName: 'Gureeva',
      department: Department.finance,
      grade: 88,
      gender: Gender.female,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Students'),
      ),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          return StudentItem(student: students[index]);
        },
      ),
    );
  }
}
