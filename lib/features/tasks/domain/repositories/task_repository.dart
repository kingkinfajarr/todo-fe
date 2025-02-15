import 'package:dartz/dartz.dart' as dartz;
import '../../../../core/errors/failures.dart';
import '../entities/task.dart';
import '../entities/subtask.dart';

abstract class TaskRepository {
  Future<dartz.Either<Failure, List<Task>>> getOngoingTasks();
  Future<dartz.Either<Failure, List<Task>>> getCompletedTasks();
  Future<dartz.Either<Failure, Task>> createTask(
    String title,
    String? description,
    DateTime? deadline,
  );
  Future<dartz.Either<Failure, Task>> updateTask(
    int id,
    String? title,
    String? description,
    DateTime? deadline,
  );
  Future<dartz.Either<Failure, void>> deleteTask(int id);
  Future<dartz.Either<Failure, Task>> completeTask(int id);
  Future<dartz.Either<Failure, SubTask>> createSubTask(
    int taskId,
    List<String> title,
  );
  Future<dartz.Either<Failure, SubTask>> completeSubTask(int id);
  Future<dartz.Either<Failure, void>> deleteSubTask(int id);
  Future<dartz.Either<Failure, SubTask>> updateSubTask(int id, String title);
}
