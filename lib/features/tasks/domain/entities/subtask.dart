import 'package:equatable/equatable.dart';

class SubTask extends Equatable {
  final int id;
  final String title;
  final bool isCompleted;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? completedAt;
  final int taskId;

  const SubTask({
    required this.id,
    required this.title,
    required this.isCompleted,
    required this.createdAt,
    required this.updatedAt,
    this.completedAt,
    required this.taskId,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        isCompleted,
        createdAt,
        updatedAt,
        completedAt,
        taskId,
      ];

  SubTask copyWith({
    int? id,
    String? title,
    bool? isCompleted,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? completedAt,
    int? taskId,
  }) {
    return SubTask(
      id: id ?? this.id,
      title: title ?? this.title,
      isCompleted: isCompleted ?? this.isCompleted,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      completedAt: completedAt ?? this.completedAt,
      taskId: taskId ?? this.taskId,
    );
  }
}
