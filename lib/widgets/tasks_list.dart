import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

import '../models/task.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> _tasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy cookies'),
    Task(name: 'buy bread'),
    Task(name: 'buy eggs'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => TaskTile(
        name: _tasks[index].name,
        isChecked: _tasks[index].isDone,
        onCheckboxChange: (bool? value) {
          setState(() => _tasks[index].toggleDone());
        },
      ),
      itemCount: _tasks.length,
    );
  }
}
