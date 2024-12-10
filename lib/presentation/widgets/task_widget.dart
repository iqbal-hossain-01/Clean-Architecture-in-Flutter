import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {
  final String title;
  final bool isCompleted;

  const TaskWidget({
    super.key,
    required this.title,
    required this.isCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: Checkbox(value: isCompleted, onChanged: (_) {}),
    );
  }
}
