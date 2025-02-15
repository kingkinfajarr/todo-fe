// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateTaskRequestImpl _$$CreateTaskRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateTaskRequestImpl(
      title: json['title'] as String,
      description: json['description'] as String?,
      deadline: json['deadline'] == null
          ? null
          : DateTime.parse(json['deadline'] as String),
    );

Map<String, dynamic> _$$CreateTaskRequestImplToJson(
        _$CreateTaskRequestImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'deadline': instance.deadline?.toIso8601String(),
    };

_$UpdateTaskRequestImpl _$$UpdateTaskRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateTaskRequestImpl(
      title: json['title'] as String?,
      description: json['description'] as String?,
      deadline: json['deadline'] == null
          ? null
          : DateTime.parse(json['deadline'] as String),
    );

Map<String, dynamic> _$$UpdateTaskRequestImplToJson(
        _$UpdateTaskRequestImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'deadline': instance.deadline?.toIso8601String(),
    };

_$CreateSubTaskRequestImpl _$$CreateSubTaskRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateSubTaskRequestImpl(
      title: json['title'] as String,
    );

Map<String, dynamic> _$$CreateSubTaskRequestImplToJson(
        _$CreateSubTaskRequestImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
    };
