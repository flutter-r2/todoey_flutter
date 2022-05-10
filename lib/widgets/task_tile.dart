import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String name;
  final VoidCallback onCheckboxChange;

  // ignore: use_key_in_widget_constructors
  const TaskTile(
      {required this.name,
      required this.isChecked,
      required this.onCheckboxChange});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (value) => onCheckboxChange(),
      ),
    );
  }
}
