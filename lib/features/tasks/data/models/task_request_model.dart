import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_request_model.freezed.dart';
part 'task_request_model.g.dart';

@freezed
class CreateTaskRequest with _$CreateTaskRequest {
  const factory CreateTaskRequest({
    required String title,
    String? description,
    DateTime? deadline,
  }) = _CreateTaskRequest;

  factory CreateTaskRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateTaskRequestFromJson(json);
}

@freezed
class UpdateTaskRequest with _$UpdateTaskRequest {
  const factory UpdateTaskRequest({
    String? title,
    String? description,
    DateTime? deadline,
  }) = _UpdateTaskRequest;

  factory UpdateTaskRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateTaskRequestFromJson(json);
}

@freezed
class CreateSubTaskRequest with _$CreateSubTaskRequest {
  const factory CreateSubTaskRequest({
    required String title,
  }) = _CreateSubTaskRequest;

  factory CreateSubTaskRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateSubTaskRequestFromJson(json);
}
