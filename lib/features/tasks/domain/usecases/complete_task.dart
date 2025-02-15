import 'package:dartz/dartz.dart' as dartz;
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../repositories/task_repository.dart';
import '../entities/task.dart';

@injectable
class CompleteTask {
  final TaskRepository repository;

  CompleteTask(this.repository);

  Future<dartz.Either<Failure, Task>> call(int id) async {
    return await repository.completeTask(id);
  }
}
