import 'package:clean_architecture_todo_app/domain/entities/task_entity.dart';

abstract class TaskRepositoryInterface {
  Future<List<TaskEntity>> getTasks();
  Future<void> addTask(TaskEntity task);
}