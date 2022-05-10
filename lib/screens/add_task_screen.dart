import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final void Function(String) addTask;

  // ignore: use_key_in_widget_constructors
  const AddTaskScreen({required this.addTask});

  @override
  Widget build(BuildContext context) {
    String taskName = '';

    return Container(
      color: const Color(0xFF757575),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (text) => taskName = text,
            ),
            TextButton(
              child: const Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
              ),
              onPressed: () => addTask(taskName),
            ),
          ],
        ),
      ),
    );
  }
}
