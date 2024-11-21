import 'package:flutter/material.dart';
import '../models/student.dart';

class StudentItem extends StatelessWidget {
  final Student student;

  const StudentItem({Key? key, required this.student}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor:
            student.gender == Gender.male ? Colors.blue : Colors.pink,
        child: Text(
          student.firstName[0],
          style: const TextStyle(color: Colors.white),
        ),
      ),
      title: Text('${student.firstName} ${student.lastName}'),
      subtitle: Text(student.department.name.toUpperCase()),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(departmentIcons[student.department]),
          const SizedBox(width: 8),
          Text(student.grade.toString()),
        ],
      ),
    );
  }
}
