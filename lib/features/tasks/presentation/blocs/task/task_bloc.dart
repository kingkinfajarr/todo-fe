import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:todo_fe/features/tasks/domain/usecases/complete_subtask.dart';
import 'package:todo_fe/features/tasks/domain/usecases/create_subtasks.dart';
import 'package:todo_fe/features/tasks/domain/usecases/delete_subtask.dart';
import 'package:todo_fe/features/tasks/domain/usecases/update_task.dart';
import '../../../domain/usecases/complete_task.dart';
import '../../../domain/usecases/create_task.dart';
import '../../../domain/usecases/delete_task.dart';
import '../../../domain/usecases/get_completed_tasks.dart';
import '../../../domain/usecases/get_ongoing_tasks.dart';
import '../../../domain/usecases/update_subtask.dart';
import 'task_event.dart';
import 'task_state.dart';

@injectable
class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final GetOngoingTasks getOngoingTasks;
  final GetCompletedTasks getCompletedTasks;
  final CreateTask createTask;
  final CreateSubTask createSubTasks;
  final CompleteTask completeTask;
  final UpdateTask updateTask;
  final DeleteTask deleteTask;
  final CompleteSubTask completeSubTask;
  final DeleteSubTask deleteSubTask;
  final UpdateSubTask updateSubTask;

  TaskBloc({
    required this.getOngoingTasks,
    required this.getCompletedTasks,
    required this.createTask,
    required this.createSubTasks,
    required this.completeTask,
    required this.updateTask,
    required this.deleteTask,
    required this.completeSubTask,
    required this.deleteSubTask,
    required this.updateSubTask,
  }) : super(TaskInitial()) {
    on<GetOngoingTasksEvent>(_onGetOngoingTasks);
    on<GetCompletedTasksEvent>(_onGetCompletedTasks);
    on<CreateTaskEvent>(_onCreateTask);
    on<CreateSubTaskEvent>(_onCreateSubTask);
    on<CompleteTaskEvent>(_onCompleteTask);
    on<UpdateTaskEvent>(_onUpdateTask);
    on<DeleteTaskEvent>(_onDeleteTask);
    on<CompleteSubTaskEvent>(_onCompleteSubTask);
    on<DeleteSubTaskEvent>(_onDeleteSubTask);
    on<UpdateSubTaskEvent>(_onUpdateSubTask);
  }

  Future<void> _onGetOngoingTasks(
    GetOngoingTasksEvent event,
    Emitter<TaskState> emit,
  ) async {
    emit(TaskLoading());
    final result = await getOngoingTasks();
    result.fold(
      (failure) => emit(TaskError(failure.message)),
      (tasks) => emit(TasksLoaded(tasks, isOngoing: true)),
    );
  }

  Future<void> _onGetCompletedTasks(
    GetCompletedTasksEvent event,
    Emitter<TaskState> emit,
  ) async {
    emit(TaskLoading());
    final result = await getCompletedTasks();
    result.fold(
      (failure) => emit(TaskError(failure.message)),
      (tasks) => emit(TasksLoaded(tasks, isOngoing: false)),
    );
  }

  Future<void> _onCreateTask(
    CreateTaskEvent event,
    Emitter<TaskState> emit,
  ) async {
    emit(TaskLoading());
    final result = await createTask(
      title: event.title,
      description: event.description,
      deadline: event.deadline,
    );
    result.fold(
      (failure) => emit(TaskError(failure.message)),
      (task) => emit(TaskCreated(task)),
    );
  }

  Future<void> _onCreateSubTask(
    CreateSubTaskEvent event,
    Emitter<TaskState> emit,
  ) async {
    emit(TaskLoading());
    final result = await createSubTasks(
      id: event.taskId,
      titles: event.titles,
    );
    result.fold(
      (failure) => emit(TaskError(failure.message)),
      (subTask) => emit(SubTaskCreated(subTask)),
    );
  }

  Future<void> _onCompleteTask(
    CompleteTaskEvent event,
    Emitter<TaskState> emit,
  ) async {
    emit(TaskLoading());
    final result = await completeTask(event.id);
    result.fold(
      (failure) => emit(TaskError(failure.message)),
      (task) => emit(TaskCompleted(task)),
    );
  }

  Future<void> _onUpdateTask(
    UpdateTaskEvent event,
    Emitter<TaskState> emit,
  ) async {
    emit(TaskLoading());
    final result = await updateTask(
      id: event.id,
      title: event.title,
      description: event.description,
      deadline: event.deadline,
    );
    result.fold(
      (failure) => emit(TaskError(failure.message)),
      (task) => emit(TaskUpdated(task)),
    );
  }

  Future<void> _onDeleteTask(
    DeleteTaskEvent event,
    Emitter<TaskState> emit,
  ) async {
    emit(TaskLoading());
    final result = await deleteTask(event.id);
    result.fold(
      (failure) => emit(TaskError(failure.message)),
      (_) => emit(TaskDeleted()),
    );
  }

  Future<void> _onCompleteSubTask(
    CompleteSubTaskEvent event,
    Emitter<TaskState> emit,
  ) async {
    emit(TaskLoading());
    final result = await completeSubTask(event.id);
    result.fold(
      (failure) => emit(TaskError(failure.message)),
      (subTask) => emit(SubTaskCompleted(subTask.id)),
    );
  }

  Future<void> _onDeleteSubTask(
    DeleteSubTaskEvent event,
    Emitter<TaskState> emit,
  ) async {
    emit(TaskLoading());
    final result = await deleteSubTask(event.id);
    result.fold(
      (failure) => emit(TaskError(failure.message)),
      (_) => emit(SubTaskDeleted(event.id)),
    );
  }

  Future<void> _onUpdateSubTask(
    UpdateSubTaskEvent event,
    Emitter<TaskState> emit,
  ) async {
    emit(TaskLoading());
    final result = await updateSubTask(event.id, event.title);
    result.fold(
      (failure) => emit(TaskError(failure.message)),
      (subTask) {
        emit(SubTaskUpdated(subTask));
        add(GetOngoingTasksEvent());
      },
    );
  }
}
