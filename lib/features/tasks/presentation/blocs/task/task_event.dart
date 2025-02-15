import 'package:equatable/equatable.dart';

abstract class TaskEvent extends Equatable {
  const TaskEvent();

  @override
  List<Object?> get props => [];
}

class GetOngoingTasksEvent extends TaskEvent {}

class GetCompletedTasksEvent extends TaskEvent {}

class CreateTaskEvent extends TaskEvent {
  final String title;
  final String? description;
  final DateTime? deadline;

  const CreateTaskEvent({
    required this.title,
    this.description,
    this.deadline,
  });

  @override
  List<Object?> get props => [title, description, deadline];
}

class UpdateTaskEvent extends TaskEvent {
  final int id;
  final String? title;
  final String? description;
  final DateTime? deadline;

  const UpdateTaskEvent({
    required this.id,
    this.title,
    this.description,
    this.deadline,
  });

  @override
  List<Object?> get props => [id, title, description, deadline];
}

class DeleteTaskEvent extends TaskEvent {
  final int id;

  const DeleteTaskEvent({required this.id});

  @override
  List<Object> get props => [id];
}

class CompleteTaskEvent extends TaskEvent {
  final int id;

  const CompleteTaskEvent({required this.id});

  @override
  List<Object> get props => [id];
}

class CreateSubTaskEvent extends TaskEvent {
  final int taskId;
  final List<String> titles;

  const CreateSubTaskEvent({
    required this.taskId,
    required this.titles,
  });

  @override
  List<Object> get props => [taskId, titles];
}

class CompleteSubTaskEvent extends TaskEvent {
  final int id;

  const CompleteSubTaskEvent({required this.id});

  @override
  List<Object> get props => [id];
}

class DeleteSubTaskEvent extends TaskEvent {
  final int id;

  const DeleteSubTaskEvent({required this.id});

  @override
  List<Object> get props => [id];
}

class UpdateSubTaskEvent extends TaskEvent {
  final int id;
  final String title;

  const UpdateSubTaskEvent({
    required this.id,
    required this.title,
  });

  @override
  List<Object> get props => [id, title];
}
