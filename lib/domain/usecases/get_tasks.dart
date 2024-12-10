import 'package:clean_architecture_todo_app/domain/entities/task_entity.dart';
import 'package:clean_architecture_todo_app/domain/repositories/task_repository_interface.dart';

class GetTasks {
  final TaskRepositoryInterface repository;

  GetTasks(this.repository);

  Future<List<TaskEntity>> call() async {
    return await repository.getTasks();
  }
}