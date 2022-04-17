import 'package:flutter/material.dart';
import 'package:my_app/todo_app/data/tasks_data.dart';
import 'package:my_app/todo_app/models/task_model.dart';
import 'package:my_app/todo_app/pages/all_tasks.dart';
import 'package:my_app/todo_app/pages/complete_tasks.dart';
import 'package:my_app/todo_app/pages/incomplete_tasks.dart';

class TodoHomePage extends StatefulWidget {
  @override
  State<TodoHomePage> createState() => _TodoHomePageState();
}

class _TodoHomePageState extends State<TodoHomePage> {
  changeTaskCompleteness(Task task) {
    int index = tasksList.indexOf(task);
    tasksList[index].isCompleted = !tasksList[index].isCompleted;
    setState(() {});
  }

  det_task(Task task) {
    int index = tasksList.indexOf(task);
    tasksList.removeAt(index);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('TODO APP'),
            bottom: const TabBar(tabs: [
              Tab(
                icon: Icon(Icons.list),
                text: 'all tasks',
              ),
              Tab(
                icon: Icon(Icons.done),
                text: 'complete tasks',
              ),
              Tab(
                icon: Icon(Icons.cancel),
                text: 'incomplete tasks',
              )
            ]),
          ),
          body: TabBarView(
            children: [
              AllTasksScreen(changeTaskCompleteness, det_task),
              CompleteTasksScreen(changeTaskCompleteness, det_task),
              InCompleteTasksScreen(changeTaskCompleteness, det_task)
            ],
          ),
        ));
  }
}
