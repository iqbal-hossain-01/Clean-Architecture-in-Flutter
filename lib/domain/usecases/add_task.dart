import 'package:clean_architecture_todo_app/domain/entities/task_entity.dart';
import 'package:clean_architecture_todo_app/domain/repositories/task_repository_interface.dart';

class AddTask {
  final TaskRepositoryInterface repository;

  AddTask(this.repository);

  Future<void> call(TaskEntity task) async {
    await repository.addTask(task);
  }
}