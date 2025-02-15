import 'package:dartz/dartz.dart' as dartz;
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../entities/subtask.dart';
import '../repositories/task_repository.dart';

@injectable
class UpdateSubTask {
  final TaskRepository repository;

  UpdateSubTask(this.repository);

  Future<dartz.Either<Failure, SubTask>> call(int id, String title) async {
    return await repository.updateSubTask(id, title);
  }
}
