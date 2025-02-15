import 'package:dartz/dartz.dart' as dartz;
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../repositories/task_repository.dart';

@injectable
class DeleteTask {
  final TaskRepository repository;

  DeleteTask(this.repository);

  Future<dartz.Either<Failure, void>> call(int id) async {
    return await repository.deleteTask(id);
  }
}
