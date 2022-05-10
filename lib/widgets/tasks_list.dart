import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

import '../models/task.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;

  // ignore: use_key_in_widget_constructors
  const TasksList({required this.tasks});

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final task = widget.tasks[index];
        return TaskTile(
          name: task.name,
          isChecked: task.isDone,
          onCheckboxChange: () => setState(() => task.toggleDone()),
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
