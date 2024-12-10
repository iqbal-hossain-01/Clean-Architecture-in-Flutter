// import 'package:freezed_annotation/freezed_annotation.dart';
//
// part 'task.freezed.dart';
// part 'task.g.dart';
//
// @freezed
// class Task with _$Task {
//   const factory Task({
//     required String id,
//     required String title,
//     required bool isCompleted,
// }) = _Task;
//
//   factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
//
// }

class Task {
  final String id;
  final String title;
  final bool isCompleted;

  Task({
    required this.id,
    required this.title,
    this.isCompleted = false,
  });
}