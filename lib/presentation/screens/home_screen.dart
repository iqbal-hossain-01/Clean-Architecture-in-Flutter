import 'package:clean_architecture_todo_app/core/utils/constants.dart';
import 'package:clean_architecture_todo_app/presentation/providers/task_provider.dart';
import 'package:clean_architecture_todo_app/presentation/widgets/task_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  static const String routeName = 'home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tasks = ref.watch(taskListProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text(Constants.appName),
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final task = tasks[index];
          return TaskWidget(
            title: task.title,
            isCompleted: task.isCompleted,
          );
        },
      ),
    );
  }
}
