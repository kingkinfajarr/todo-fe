import 'package:dartz/dartz.dart' as dartz;
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../repositories/task_repository.dart';
import '../entities/task.dart';

@injectable
class CreateTask {
  final TaskRepository repository;

  CreateTask(this.repository);

  Future<dartz.Either<Failure, Task>> call({
    required String title,
    String? description,
    DateTime? deadline,
  }) async {
    return await repository.createTask(title, description, deadline);
  }
}
