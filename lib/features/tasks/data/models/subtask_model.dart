import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/subtask.dart';

part 'subtask_model.freezed.dart';
part 'subtask_model.g.dart';

@freezed
class SubTaskModel with _$SubTaskModel {
  const SubTaskModel._();

  const factory SubTaskModel({
    required int id,
    required String title,
    @JsonKey(name: 'is_completed') required bool isCompleted,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'completed_at') DateTime? completedAt,
    @JsonKey(name: 'task_id') required int taskId,
  }) = _SubTaskModel;

  factory SubTaskModel.fromJson(Map<String, dynamic> json) =>
      _$SubTaskModelFromJson(json);

  factory SubTaskModel.fromEntity(SubTask subTask) {
    return SubTaskModel(
      id: subTask.id,
      title: subTask.title,
      isCompleted: subTask.isCompleted,
      createdAt: subTask.createdAt,
      updatedAt: subTask.updatedAt,
      completedAt: subTask.completedAt,
      taskId: subTask.taskId,
    );
  }

  SubTask toEntity() {
    return SubTask(
      id: id,
      title: title,
      isCompleted: isCompleted,
      createdAt: createdAt,
      updatedAt: updatedAt,
      completedAt: completedAt,
      taskId: taskId,
    );
  }
}
