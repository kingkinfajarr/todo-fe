import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/task.dart';
import 'subtask_model.dart';

part 'task_model.freezed.dart';
part 'task_model.g.dart';

@freezed
class TaskModel with _$TaskModel {
  const TaskModel._();

  const factory TaskModel({
    required int id,
    required String title,
    String? description,
    DateTime? deadline,
    @JsonKey(name: 'is_completed') required bool isCompleted,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'completed_at') DateTime? completedAt,
    @JsonKey(name: 'is_due') required bool isDue,
    required double progress,
    @JsonKey(name: 'sub_tasks') required List<SubTaskModel> subTasks,
  }) = _TaskModel;

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      _$TaskModelFromJson(json);

  factory TaskModel.fromEntity(Task task) {
    return TaskModel(
      id: task.id,
      title: task.title,
      description: task.description,
      deadline: task.deadline,
      isCompleted: task.isCompleted,
      createdAt: task.createdAt,
      updatedAt: task.updatedAt,
      completedAt: task.completedAt,
      isDue: task.isDue,
      progress: task.progress,
      subTasks: task.subTasks.map((e) => SubTaskModel.fromEntity(e)).toList(),
    );
  }

  Task toEntity() {
    return Task(
      id: id,
      title: title,
      description: description,
      deadline: deadline,
      isCompleted: isCompleted,
      createdAt: createdAt,
      updatedAt: updatedAt,
      completedAt: completedAt,
      isDue: isDue,
      progress: progress,
      subTasks: subTasks.map((e) => e.toEntity()).toList(),
    );
  }
}
