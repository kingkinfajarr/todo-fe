import 'package:equatable/equatable.dart';
import '../../../domain/entities/subtask.dart';
import '../../../domain/entities/task.dart';

abstract class TaskState extends Equatable {
  const TaskState();

  @override
  List<Object?> get props => [];
}

class TaskInitial extends TaskState {}

class TaskLoading extends TaskState {}

class TasksLoaded extends TaskState {
  final List<Task> tasks;
  final bool isOngoing;

  const TasksLoaded(this.tasks, {this.isOngoing = true});

  @override
  List<Object> get props => [tasks, isOngoing];
}

class TaskCreated extends TaskState {
  final Task task;

  const TaskCreated(this.task);

  @override
  List<Object> get props => [task];
}

class TaskUpdated extends TaskState {
  final Task task;

  const TaskUpdated(this.task);

  @override
  List<Object> get props => [task];
}

class TaskDeleted extends TaskState {}

class TaskCompleted extends TaskState {
  final Task task;

  const TaskCompleted(this.task);

  @override
  List<Object> get props => [task];
}

class SubTaskCreated extends TaskState {
  final SubTask subTask;

  const SubTaskCreated(this.subTask);

  @override
  List<Object> get props => [subTask];
}

class SubTaskCompleted extends TaskState {
  final int id;

  const SubTaskCompleted(this.id);

  @override
  List<Object> get props => [id];
}

class SubTaskDeleted extends TaskState {
  final int id;

  const SubTaskDeleted(this.id);

  @override
  List<Object> get props => [id];
}

class TaskError extends TaskState {
  final String message;

  const TaskError(this.message);

  @override
  List<Object> get props => [message];
}

class SubTaskUpdated extends TaskState {
  final SubTask subTask;

  const SubTaskUpdated(this.subTask);

  @override
  List<Object> get props => [subTask];
}
