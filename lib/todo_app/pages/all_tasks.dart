import 'package:flutter/material.dart';
import 'package:my_app/todo_app/data/tasks_data.dart';
import 'package:my_app/todo_app/widgets/task_widget.dart';

class AllTasksScreen extends StatelessWidget {
  Function fun;
  Function det;
  AllTasksScreen(this.fun, this.det);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: tasksList.length,
        itemBuilder: (context, index) {
          return TaskWidget(tasksList[index], fun, det);
        });
  }
}
