// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subtask_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubTaskModel _$SubTaskModelFromJson(Map<String, dynamic> json) {
  return _SubTaskModel.fromJson(json);
}

/// @nodoc
mixin _$SubTaskModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_completed')
  bool get isCompleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'completed_at')
  DateTime? get completedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'task_id')
  int get taskId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubTaskModelCopyWith<SubTaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubTaskModelCopyWith<$Res> {
  factory $SubTaskModelCopyWith(
          SubTaskModel value, $Res Function(SubTaskModel) then) =
      _$SubTaskModelCopyWithImpl<$Res, SubTaskModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      @JsonKey(name: 'is_completed') bool isCompleted,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'completed_at') DateTime? completedAt,
      @JsonKey(name: 'task_id') int taskId});
}

/// @nodoc
class _$SubTaskModelCopyWithImpl<$Res, $Val extends SubTaskModel>
    implements $SubTaskModelCopyWith<$Res> {
  _$SubTaskModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? isCompleted = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? completedAt = freezed,
    Object? taskId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubTaskModelImplCopyWith<$Res>
    implements $SubTaskModelCopyWith<$Res> {
  factory _$$SubTaskModelImplCopyWith(
          _$SubTaskModelImpl value, $Res Function(_$SubTaskModelImpl) then) =
      __$$SubTaskModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      @JsonKey(name: 'is_completed') bool isCompleted,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'completed_at') DateTime? completedAt,
      @JsonKey(name: 'task_id') int taskId});
}

/// @nodoc
class __$$SubTaskModelImplCopyWithImpl<$Res>
    extends _$SubTaskModelCopyWithImpl<$Res, _$SubTaskModelImpl>
    implements _$$SubTaskModelImplCopyWith<$Res> {
  __$$SubTaskModelImplCopyWithImpl(
      _$SubTaskModelImpl _value, $Res Function(_$SubTaskModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? isCompleted = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? completedAt = freezed,
    Object? taskId = null,
  }) {
    return _then(_$SubTaskModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubTaskModelImpl extends _SubTaskModel {
  const _$SubTaskModelImpl(
      {required this.id,
      required this.title,
      @JsonKey(name: 'is_completed') required this.isCompleted,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'completed_at') this.completedAt,
      @JsonKey(name: 'task_id') required this.taskId})
      : super._();

  factory _$SubTaskModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubTaskModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  @JsonKey(name: 'is_completed')
  final bool isCompleted;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'completed_at')
  final DateTime? completedAt;
  @override
  @JsonKey(name: 'task_id')
  final int taskId;

  @override
  String toString() {
    return 'SubTaskModel(id: $id, title: $title, isCompleted: $isCompleted, createdAt: $createdAt, updatedAt: $updatedAt, completedAt: $completedAt, taskId: $taskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubTaskModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, isCompleted,
      createdAt, updatedAt, completedAt, taskId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubTaskModelImplCopyWith<_$SubTaskModelImpl> get copyWith =>
      __$$SubTaskModelImplCopyWithImpl<_$SubTaskModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubTaskModelImplToJson(
      this,
    );
  }
}

abstract class _SubTaskModel extends SubTaskModel {
  const factory _SubTaskModel(
          {required final int id,
          required final String title,
          @JsonKey(name: 'is_completed') required final bool isCompleted,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt,
          @JsonKey(name: 'completed_at') final DateTime? completedAt,
          @JsonKey(name: 'task_id') required final int taskId}) =
      _$SubTaskModelImpl;
  const _SubTaskModel._() : super._();

  factory _SubTaskModel.fromJson(Map<String, dynamic> json) =
      _$SubTaskModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  @JsonKey(name: 'is_completed')
  bool get isCompleted;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(name: 'completed_at')
  DateTime? get completedAt;
  @override
  @JsonKey(name: 'task_id')
  int get taskId;
  @override
  @JsonKey(ignore: true)
  _$$SubTaskModelImplCopyWith<_$SubTaskModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
