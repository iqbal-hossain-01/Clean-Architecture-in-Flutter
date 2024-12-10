import 'package:clean_architecture_todo_app/data/models/task.dart';

class LocalDataSource {
  final List<Task> _tasks = [];

  Future<List<Task>> fetchTasks() async {
    return _tasks;
  }

  Future<void> saveTask(Task task) async {
    _tasks.add(task);
  }
}