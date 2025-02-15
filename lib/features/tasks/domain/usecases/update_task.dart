import 'package:dartz/dartz.dart' as dartz;
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../entities/task.dart';
import '../repositories/task_repository.dart';

@injectable
class UpdateTask {
  final TaskRepository repository;

  UpdateTask(this.repository);

  Future<dartz.Either<Failure, Task>> call({
    required int id,
    String? title,
    String? description,
    DateTime? deadline,
  }) async {
    return await repository.updateTask(id, title, description, deadline);
  }
}
