import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

import '../models/task_data.dart';

// ignore: use_key_in_widget_constructors
class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          var task = taskData.tasks[index];
          return TaskTile(
            name: task.name,
            isChecked: task.isDone,
            onCheckboxChange: () => taskData.updateTask(task),
            onLongPress: () => taskData.deleteTask(task),
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
