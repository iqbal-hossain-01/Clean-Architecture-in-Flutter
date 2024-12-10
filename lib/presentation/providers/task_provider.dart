import 'package:clean_architecture_todo_app/data/repositories/task_repository.dart';
import 'package:clean_architecture_todo_app/domain/entities/task_entity.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final taskRepositoryProvider = Provider((ref) => TaskRepository());

final taskListProvider = StateNotifierProvider<TaskNotifier, List<TaskEntity>>(
    (ref) {
      final repository = ref.read(taskRepositoryProvider);
      return TaskNotifier(repository);
    }
);

class TaskNotifier extends StateNotifier<List<TaskEntity>> {
  final TaskRepository repository;

  TaskNotifier(this.repository) : super([]);

  void addTask(TaskEntity task) {
    state = [...state, task];
  }

  void loadTasks(List<TaskEntity> tasks) {
    state = tasks;
  }
}