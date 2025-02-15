import 'package:injectable/injectable.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../core/constants/api_constants.dart';
import '../models/task_model.dart';
import '../models/subtask_model.dart';

abstract class TaskRemoteDataSource {
  Future<List<TaskModel>> getOngoingTasks();
  Future<List<TaskModel>> getCompletedTasks();
  Future<TaskModel> createTask(Map<String, dynamic> taskData);
  Future<TaskModel> updateTask(int id, Map<String, dynamic> taskData);
  Future<void> deleteTask(int id);
  Future<TaskModel> completeTask(int id);
  Future<SubTaskModel> createSubTask(
      int taskId, Map<String, dynamic> subTaskData);
  Future<SubTaskModel> completeSubTask(int id);
  Future<void> deleteSubTask(int id);
  Future<SubTaskModel> updateSubTask(int id, Map<String, dynamic> subTaskData);
}

@Injectable(as: TaskRemoteDataSource)
class TaskRemoteDataSourceImpl implements TaskRemoteDataSource {
  final DioClient _dioClient;

  TaskRemoteDataSourceImpl(this._dioClient);

  @override
  Future<List<TaskModel>> getOngoingTasks() async {
    try {
      final response = await _dioClient.get(ApiConstants.ongoingTasks);
      final List<dynamic> data = response.data['data'];
      return data.map((json) => TaskModel.fromJson(json)).toList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<TaskModel>> getCompletedTasks() async {
    try {
      final response = await _dioClient.get(ApiConstants.completedTasks);
      final List<dynamic> data = response.data['data'];
      return data.map((json) => TaskModel.fromJson(json)).toList();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<TaskModel> createTask(Map<String, dynamic> taskData) async {
    try {
      final response =
          await _dioClient.post(ApiConstants.tasks, data: taskData);
      return TaskModel.fromJson(response.data['data']);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<TaskModel> updateTask(int id, Map<String, dynamic> taskData) async {
    try {
      final response =
          await _dioClient.put('${ApiConstants.tasks}/$id', data: taskData);
      return TaskModel.fromJson(response.data['data']);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> deleteTask(int id) async {
    try {
      await _dioClient.delete('${ApiConstants.tasks}/$id');
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<TaskModel> completeTask(int id) async {
    try {
      final response =
          await _dioClient.put('${ApiConstants.tasks}/$id/complete');
      return TaskModel.fromJson(response.data['data']);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<SubTaskModel> createSubTask(
      int taskId, Map<String, dynamic> subTaskData) async {
    try {
      final response = await _dioClient
          .post('${ApiConstants.tasks}/$taskId/subtasks', data: subTaskData);
      return SubTaskModel.fromJson(response.data['data']);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<SubTaskModel> completeSubTask(int id) async {
    try {
      final response =
          await _dioClient.put('${ApiConstants.subtasks}/$id/complete');
      return SubTaskModel.fromJson(response.data['data']);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> deleteSubTask(int id) async {
    try {
      await _dioClient.delete('${ApiConstants.subtasks}/$id');
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<SubTaskModel> updateSubTask(
      int id, Map<String, dynamic> subTaskData) async {
    try {
      final response = await _dioClient.put(
        '${ApiConstants.subtasks}/$id',
        data: subTaskData,
      );
      return SubTaskModel.fromJson(response.data['data']);
    } catch (e) {
      rethrow;
    }
  }
}
