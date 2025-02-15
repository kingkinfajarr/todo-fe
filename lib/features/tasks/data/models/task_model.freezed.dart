// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TaskModel _$TaskModelFromJson(Map<String, dynamic> json) {
  return _TaskModel.fromJson(json);
}

/// @nodoc
mixin _$TaskModel {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get deadline => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_completed')
  bool get isCompleted => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'completed_at')
  DateTime? get completedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_due')
  bool get isDue => throw _privateConstructorUsedError;
  double get progress => throw _privateConstructorUsedError;
  @JsonKey(name: 'sub_tasks')
  List<SubTaskModel> get subTasks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskModelCopyWith<TaskModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskModelCopyWith<$Res> {
  factory $TaskModelCopyWith(TaskModel value, $Res Function(TaskModel) then) =
      _$TaskModelCopyWithImpl<$Res, TaskModel>;
  @useResult
  $Res call(
      {int id,
      String title,
      String? description,
      DateTime? deadline,
      @JsonKey(name: 'is_completed') bool isCompleted,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'completed_at') DateTime? completedAt,
      @JsonKey(name: 'is_due') bool isDue,
      double progress,
      @JsonKey(name: 'sub_tasks') List<SubTaskModel> subTasks});
}

/// @nodoc
class _$TaskModelCopyWithImpl<$Res, $Val extends TaskModel>
    implements $TaskModelCopyWith<$Res> {
  _$TaskModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? deadline = freezed,
    Object? isCompleted = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? completedAt = freezed,
    Object? isDue = null,
    Object? progress = null,
    Object? subTasks = null,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      isDue: null == isDue
          ? _value.isDue
          : isDue // ignore: cast_nullable_to_non_nullable
              as bool,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      subTasks: null == subTasks
          ? _value.subTasks
          : subTasks // ignore: cast_nullable_to_non_nullable
              as List<SubTaskModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskModelImplCopyWith<$Res>
    implements $TaskModelCopyWith<$Res> {
  factory _$$TaskModelImplCopyWith(
          _$TaskModelImpl value, $Res Function(_$TaskModelImpl) then) =
      __$$TaskModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String? description,
      DateTime? deadline,
      @JsonKey(name: 'is_completed') bool isCompleted,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'completed_at') DateTime? completedAt,
      @JsonKey(name: 'is_due') bool isDue,
      double progress,
      @JsonKey(name: 'sub_tasks') List<SubTaskModel> subTasks});
}

/// @nodoc
class __$$TaskModelImplCopyWithImpl<$Res>
    extends _$TaskModelCopyWithImpl<$Res, _$TaskModelImpl>
    implements _$$TaskModelImplCopyWith<$Res> {
  __$$TaskModelImplCopyWithImpl(
      _$TaskModelImpl _value, $Res Function(_$TaskModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? deadline = freezed,
    Object? isCompleted = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? completedAt = freezed,
    Object? isDue = null,
    Object? progress = null,
    Object? subTasks = null,
  }) {
    return _then(_$TaskModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      isDue: null == isDue
          ? _value.isDue
          : isDue // ignore: cast_nullable_to_non_nullable
              as bool,
      progress: null == progress
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as double,
      subTasks: null == subTasks
          ? _value._subTasks
          : subTasks // ignore: cast_nullable_to_non_nullable
              as List<SubTaskModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskModelImpl extends _TaskModel {
  const _$TaskModelImpl(
      {required this.id,
      required this.title,
      this.description,
      this.deadline,
      @JsonKey(name: 'is_completed') required this.isCompleted,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'completed_at') this.completedAt,
      @JsonKey(name: 'is_due') required this.isDue,
      required this.progress,
      @JsonKey(name: 'sub_tasks') required final List<SubTaskModel> subTasks})
      : _subTasks = subTasks,
        super._();

  factory _$TaskModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskModelImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String? description;
  @override
  final DateTime? deadline;
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
  @JsonKey(name: 'is_due')
  final bool isDue;
  @override
  final double progress;
  final List<SubTaskModel> _subTasks;
  @override
  @JsonKey(name: 'sub_tasks')
  List<SubTaskModel> get subTasks {
    if (_subTasks is EqualUnmodifiableListView) return _subTasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subTasks);
  }

  @override
  String toString() {
    return 'TaskModel(id: $id, title: $title, description: $description, deadline: $deadline, isCompleted: $isCompleted, createdAt: $createdAt, updatedAt: $updatedAt, completedAt: $completedAt, isDue: $isDue, progress: $progress, subTasks: $subTasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.isDue, isDue) || other.isDue == isDue) &&
            (identical(other.progress, progress) ||
                other.progress == progress) &&
            const DeepCollectionEquality().equals(other._subTasks, _subTasks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      deadline,
      isCompleted,
      createdAt,
      updatedAt,
      completedAt,
      isDue,
      progress,
      const DeepCollectionEquality().hash(_subTasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskModelImplCopyWith<_$TaskModelImpl> get copyWith =>
      __$$TaskModelImplCopyWithImpl<_$TaskModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskModelImplToJson(
      this,
    );
  }
}

abstract class _TaskModel extends TaskModel {
  const factory _TaskModel(
      {required final int id,
      required final String title,
      final String? description,
      final DateTime? deadline,
      @JsonKey(name: 'is_completed') required final bool isCompleted,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'updated_at') required final DateTime updatedAt,
      @JsonKey(name: 'completed_at') final DateTime? completedAt,
      @JsonKey(name: 'is_due') required final bool isDue,
      required final double progress,
      @JsonKey(name: 'sub_tasks')
      required final List<SubTaskModel> subTasks}) = _$TaskModelImpl;
  const _TaskModel._() : super._();

  factory _TaskModel.fromJson(Map<String, dynamic> json) =
      _$TaskModelImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String? get description;
  @override
  DateTime? get deadline;
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
  @JsonKey(name: 'is_due')
  bool get isDue;
  @override
  double get progress;
  @override
  @JsonKey(name: 'sub_tasks')
  List<SubTaskModel> get subTasks;
  @override
  @JsonKey(ignore: true)
  _$$TaskModelImplCopyWith<_$TaskModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
