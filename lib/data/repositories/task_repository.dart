import 'package:clean_architecture_todo_app/data/models/task.dart';

class TaskRepository {
  final List<Task> _tasks = [];

  Future<List<Task>> getTasks() async {
    return _tasks;
  }

  Future<void> addTask(Task task) async {
    _tasks.add(task);
  }

  Future<void> deleteTask(String id) async {
    _tasks.removeWhere((task) => task.id == id);
  }
}