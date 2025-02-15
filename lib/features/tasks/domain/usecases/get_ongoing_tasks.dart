import 'package:dartz/dartz.dart' as dartz;
import 'package:injectable/injectable.dart';
import '../../../../core/errors/failures.dart';
import '../repositories/task_repository.dart';
import '../entities/task.dart';

@injectable
class GetOngoingTasks {
  final TaskRepository repository;

  GetOngoingTasks(this.repository);

  Future<dartz.Either<Failure, List<Task>>> call() async {
    return await repository.getOngoingTasks();
  }
}
