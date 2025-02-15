import 'package:dartz/dartz.dart' as dartz;
import 'package:injectable/injectable.dart';

import '../../../../core/errors/failures.dart';
import '../entities/task.dart';
import '../repositories/task_repository.dart';

@injectable
class GetCompletedTasks {
  final TaskRepository _taskRepository;

  GetCompletedTasks(this._taskRepository);

  Future<dartz.Either<Failure, List<Task>>> call() async {
    return await _taskRepository.getCompletedTasks();
  }
}
