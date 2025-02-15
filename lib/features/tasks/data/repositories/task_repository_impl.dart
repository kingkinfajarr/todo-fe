import 'package:dartz/dartz.dart' as dartz;
import 'package:injectable/injectable.dart';
import '../../../../core/network/network_info.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/errors/exceptions.dart';
import '../../domain/repositories/task_repository.dart';
import '../../domain/entities/task.dart';
import '../../domain/entities/subtask.dart';
import '../datasources/task_remote_datasource.dart';

@Injectable(as: TaskRepository)
class TaskRepositoryImpl implements TaskRepository {
  final TaskRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  TaskRepositoryImpl({
    required this.remoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<dartz.Either<Failure, List<Task>>> getOngoingTasks() async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDataSource.getOngoingTasks();
        return dartz.Right(result.map((model) => model.toEntity()).toList());
      } on ServerException catch (e) {
        return dartz.Left(ServerFailure(e.message));
      } on NetworkException catch (e) {
        return dartz.Left(NetworkFailure(e.message));
      } catch (e) {
        return dartz.Left(NotFoundFailure(e.toString()));
      }
    } else {
      return const dartz.Left(NetworkFailure('No internet connection'));
    }
  }

  @override
  Future<dartz.Either<Failure, List<Task>>> getCompletedTasks() async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDataSource.getCompletedTasks();
        return dartz.Right(result.map((model) => model.toEntity()).toList());
      } on ServerException catch (e) {
        return dartz.Left(ServerFailure(e.message));
      } on NetworkException catch (e) {
        return dartz.Left(NetworkFailure(e.message));
      } catch (e) {
        return dartz.Left(NotFoundFailure(e.toString()));
      }
    } else {
      return const dartz.Left(NetworkFailure('No internet connection'));
    }
  }

  @override
  Future<dartz.Either<Failure, Task>> createTask(
    String title,
    String? description,
    DateTime? deadline,
  ) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDataSource.createTask({
          'title': title,
          'description': description,
          'deadline': deadline?.toIso8601String(),
        });
        return dartz.Right(result.toEntity());
      } on ServerException catch (e) {
        return dartz.Left(ServerFailure(e.message));
      } on NetworkException catch (e) {
        return dartz.Left(NetworkFailure(e.message));
      }
    } else {
      return const dartz.Left(NetworkFailure('No internet connection'));
    }
  }

  @override
  Future<dartz.Either<Failure, Task>> updateTask(
    int id,
    String? title,
    String? description,
    DateTime? deadline,
  ) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDataSource.updateTask(id, {
          if (title != null) 'title': title,
          if (description != null) 'description': description,
          if (deadline != null) 'deadline': deadline.toIso8601String(),
        });
        return dartz.Right(result.toEntity());
      } on ServerException catch (e) {
        return dartz.Left(ServerFailure(e.message));
      } on NetworkException catch (e) {
        return dartz.Left(NetworkFailure(e.message));
      }
    } else {
      return const dartz.Left(NetworkFailure('No internet connection'));
    }
  }

  @override
  Future<dartz.Either<Failure, void>> deleteTask(int id) async {
    if (await networkInfo.isConnected) {
      try {
        await remoteDataSource.deleteTask(id);
        return const dartz.Right(null);
      } on ServerException catch (e) {
        return dartz.Left(ServerFailure(e.message));
      } on NetworkException catch (e) {
        return dartz.Left(NetworkFailure(e.message));
      }
    } else {
      return const dartz.Left(NetworkFailure('No internet connection'));
    }
  }

  @override
  Future<dartz.Either<Failure, Task>> completeTask(int id) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDataSource.completeTask(id);
        return dartz.Right(result.toEntity());
      } on ServerException catch (e) {
        return dartz.Left(ServerFailure(e.message));
      } on NetworkException catch (e) {
        return dartz.Left(NetworkFailure(e.message));
      } catch (e) {
        return dartz.Left(ServerFailure(e.toString()));
      }
    } else {
      return const dartz.Left(NetworkFailure('No internet connection'));
    }
  }

  @override
  Future<dartz.Either<Failure, SubTask>> createSubTask(
    int taskId,
    List<String> title,
  ) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDataSource.createSubTask(taskId, {
          'titles': title,
        });
        return dartz.Right(result.toEntity());
      } on ServerException catch (e) {
        return dartz.Left(ServerFailure(e.message));
      } on NetworkException catch (e) {
        return dartz.Left(NetworkFailure(e.message));
      }
    } else {
      return const dartz.Left(NetworkFailure('No internet connection'));
    }
  }

  @override
  Future<dartz.Either<Failure, SubTask>> completeSubTask(int id) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await remoteDataSource.completeSubTask(id);
        return dartz.Right(result.toEntity());
      } on ServerException catch (e) {
        return dartz.Left(ServerFailure(e.message));
      } on NetworkException catch (e) {
        return dartz.Left(NetworkFailure(e.message));
      }
    } else {
      return const dartz.Left(NetworkFailure('No internet connection'));
    }
  }

  @override
  Future<dartz.Either<Failure, void>> deleteSubTask(int id) async {
    try {
      await remoteDataSource.deleteSubTask(id);
      return const dartz.Right(null);
    } on ServerException catch (e) {
      return dartz.Left(ServerFailure(e.message));
    } on NetworkException catch (e) {
      return dartz.Left(NetworkFailure(e.message));
    }
  }

  @override
  Future<dartz.Either<Failure, SubTask>> updateSubTask(
      int id, String title) async {
    try {
      final result = await remoteDataSource.updateSubTask(id, {
        'title': title,
      });
      return dartz.Right(result.toEntity());
    } on ServerException catch (e) {
      return dartz.Left(ServerFailure(e.message));
    } on NetworkException catch (e) {
      return dartz.Left(NetworkFailure(e.message));
    }
  }
}
