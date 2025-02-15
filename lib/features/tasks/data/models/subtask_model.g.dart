// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subtask_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubTaskModelImpl _$$SubTaskModelImplFromJson(Map<String, dynamic> json) =>
    _$SubTaskModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      isCompleted: json['is_completed'] as bool,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      completedAt: json['completed_at'] == null
          ? null
          : DateTime.parse(json['completed_at'] as String),
      taskId: (json['task_id'] as num).toInt(),
    );

Map<String, dynamic> _$$SubTaskModelImplToJson(_$SubTaskModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'is_completed': instance.isCompleted,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'completed_at': instance.completedAt?.toIso8601String(),
      'task_id': instance.taskId,
    };
