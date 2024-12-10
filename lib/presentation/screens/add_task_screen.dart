import 'package:clean_architecture_todo_app/core/utils/constants.dart';
import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  static const String routeName = 'Add';
  AddTaskScreen({super.key});

  final TextEditingController _titleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title: const Text(Constants.addScreenName)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(labelText: 'Task Title'),
            ),
            ElevatedButton(
              onPressed: () {

              },
              child: const Text('Add Task'),
            ),
          ],
        ),
      ),
    );
  }
}
