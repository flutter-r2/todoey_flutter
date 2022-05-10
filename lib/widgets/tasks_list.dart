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
          return TaskTile(
            name: taskData.tasks[index].name,
            isChecked: taskData.tasks[index].isDone,
            onCheckboxChange: () {}, //=> setState(() => task.toggleDone()),
          );
        },
        itemCount: taskData.taskCount,
      );
    });
  }
}
