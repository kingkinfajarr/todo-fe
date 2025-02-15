import 'package:equatable/equatable.dart';
import 'subtask.dart';

class Task extends Equatable {
  final int id;
  final String title;
  final String? description;
  final DateTime? deadline;
  final bool isCompleted;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime? completedAt;
  final bool isDue;
  final double progress;
  final List<SubTask> subTasks;

  const Task({
    required this.id,
    required this.title,
    this.description,
    this.deadline,
    required this.isCompleted,
    required this.createdAt,
    required this.updatedAt,
    this.completedAt,
    required this.isDue,
    required this.progress,
    required this.subTasks,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        description,
        deadline,
        isCompleted,
        createdAt,
        updatedAt,
        completedAt,
        isDue,
        progress,
        subTasks,
      ];

  Task copyWith({
    int? id,
    String? title,
    String? description,
    DateTime? deadline,
    bool? isCompleted,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? completedAt,
    bool? isDue,
    double? progress,
    List<SubTask>? subTasks,
  }) {
    return Task(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      deadline: deadline ?? this.deadline,
      isCompleted: isCompleted ?? this.isCompleted,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      completedAt: completedAt ?? this.completedAt,
      isDue: isDue ?? this.isDue,
      progress: progress ?? this.progress,
      subTasks: subTasks ?? this.subTasks,
    );
  }
}
