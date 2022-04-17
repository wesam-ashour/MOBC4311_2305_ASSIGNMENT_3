import 'package:flutter/material.dart';
import 'package:my_app/todo_app/models/task_model.dart';

class TaskWidget extends StatelessWidget {
  Function fun;
  Function det;

  Task task;
  TaskWidget(this.task, this.fun, this.det);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: task.isCompleted ? Colors.green : Colors.black45,
          borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
      child: CheckboxListTile(
        title: Text(task.title),
        value: task.isCompleted,
        onChanged: (v) {
          fun(task);
        },
        secondary: IconButton(
          icon: Icon(
            Icons.delete,
          ),
          onPressed: () {
            det(task);
          },
        ),
      ),
    );
  }
}
