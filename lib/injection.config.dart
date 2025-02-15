// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i3;
import 'package:todo_fe/core/di/injectable_module.dart' as _i21;
import 'package:todo_fe/core/network/dio_client.dart' as _i5;
import 'package:todo_fe/core/network/network_info.dart' as _i7;
import 'package:todo_fe/features/tasks/data/datasources/task_remote_datasource.dart'
    as _i6;
import 'package:todo_fe/features/tasks/data/repositories/task_repository_impl.dart'
    as _i9;
import 'package:todo_fe/features/tasks/domain/repositories/task_repository.dart'
    as _i8;
import 'package:todo_fe/features/tasks/domain/usecases/complete_subtask.dart'
    as _i13;
import 'package:todo_fe/features/tasks/domain/usecases/complete_task.dart'
    as _i16;
import 'package:todo_fe/features/tasks/domain/usecases/create_subtasks.dart'
    as _i11;
import 'package:todo_fe/features/tasks/domain/usecases/create_task.dart'
    as _i14;
import 'package:todo_fe/features/tasks/domain/usecases/delete_subtask.dart'
    as _i12;
import 'package:todo_fe/features/tasks/domain/usecases/delete_task.dart'
    as _i15;
import 'package:todo_fe/features/tasks/domain/usecases/get_completed_tasks.dart'
    as _i19;
import 'package:todo_fe/features/tasks/domain/usecases/get_ongoing_tasks.dart'
    as _i18;
import 'package:todo_fe/features/tasks/domain/usecases/update_subtask.dart'
    as _i17;
import 'package:todo_fe/features/tasks/domain/usecases/update_task.dart'
    as _i10;
import 'package:todo_fe/features/tasks/presentation/blocs/task/task_bloc.dart'
    as _i20;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i3.InternetConnectionChecker>(
        () => registerModule.internetConnectionChecker);
    gh.lazySingleton<_i4.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i5.DioClient>(() => _i5.DioClient());
    gh.factory<_i6.TaskRemoteDataSource>(
        () => _i6.TaskRemoteDataSourceImpl(gh<_i5.DioClient>()));
    gh.factory<_i7.NetworkInfo>(
        () => _i7.NetworkInfoImpl(gh<_i3.InternetConnectionChecker>()));
    gh.factory<_i8.TaskRepository>(() => _i9.TaskRepositoryImpl(
          remoteDataSource: gh<_i6.TaskRemoteDataSource>(),
          networkInfo: gh<_i7.NetworkInfo>(),
        ));
    gh.factory<_i10.UpdateTask>(
        () => _i10.UpdateTask(gh<_i8.TaskRepository>()));
    gh.factory<_i11.CreateSubTask>(
        () => _i11.CreateSubTask(gh<_i8.TaskRepository>()));
    gh.factory<_i12.DeleteSubTask>(
        () => _i12.DeleteSubTask(gh<_i8.TaskRepository>()));
    gh.factory<_i13.CompleteSubTask>(
        () => _i13.CompleteSubTask(gh<_i8.TaskRepository>()));
    gh.factory<_i14.CreateTask>(
        () => _i14.CreateTask(gh<_i8.TaskRepository>()));
    gh.factory<_i15.DeleteTask>(
        () => _i15.DeleteTask(gh<_i8.TaskRepository>()));
    gh.factory<_i16.CompleteTask>(
        () => _i16.CompleteTask(gh<_i8.TaskRepository>()));
    gh.factory<_i17.UpdateSubTask>(
        () => _i17.UpdateSubTask(gh<_i8.TaskRepository>()));
    gh.factory<_i18.GetOngoingTasks>(
        () => _i18.GetOngoingTasks(gh<_i8.TaskRepository>()));
    gh.factory<_i19.GetCompletedTasks>(
        () => _i19.GetCompletedTasks(gh<_i8.TaskRepository>()));
    gh.factory<_i20.TaskBloc>(() => _i20.TaskBloc(
          getOngoingTasks: gh<_i18.GetOngoingTasks>(),
          getCompletedTasks: gh<_i19.GetCompletedTasks>(),
          createTask: gh<_i14.CreateTask>(),
          createSubTasks: gh<_i11.CreateSubTask>(),
          completeTask: gh<_i16.CompleteTask>(),
          updateTask: gh<_i10.UpdateTask>(),
          deleteTask: gh<_i15.DeleteTask>(),
          completeSubTask: gh<_i13.CompleteSubTask>(),
          deleteSubTask: gh<_i12.DeleteSubTask>(),
          updateSubTask: gh<_i17.UpdateSubTask>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i21.RegisterModule {}
