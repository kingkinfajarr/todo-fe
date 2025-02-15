import 'package:dartz/dartz.dart' as dartz;
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../entities/subtask.dart';
import '../repositories/task_repository.dart';

@injectable
class CompleteSubTask {
  final TaskRepository repository;

  CompleteSubTask(this.repository);

  Future<dartz.Either<Failure, SubTask>> call(int id) async {
    return await repository.completeSubTask(id);
  }
}
