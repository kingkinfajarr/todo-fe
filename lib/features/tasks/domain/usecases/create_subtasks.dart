import 'package:dartz/dartz.dart' as dartz;
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../entities/subtask.dart';
import '../repositories/task_repository.dart';

@injectable
class CreateSubTask {
  final TaskRepository repository;

  CreateSubTask(this.repository);

  Future<dartz.Either<Failure, SubTask>> call({
    required int id,
    required List<String> titles,
  }) async {
    return await repository.createSubTask(id, titles);
  }
}
