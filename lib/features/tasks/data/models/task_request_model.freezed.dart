// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateTaskRequest _$CreateTaskRequestFromJson(Map<String, dynamic> json) {
  return _CreateTaskRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateTaskRequest {
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get deadline => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateTaskRequestCopyWith<CreateTaskRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTaskRequestCopyWith<$Res> {
  factory $CreateTaskRequestCopyWith(
          CreateTaskRequest value, $Res Function(CreateTaskRequest) then) =
      _$CreateTaskRequestCopyWithImpl<$Res, CreateTaskRequest>;
  @useResult
  $Res call({String title, String? description, DateTime? deadline});
}

/// @nodoc
class _$CreateTaskRequestCopyWithImpl<$Res, $Val extends CreateTaskRequest>
    implements $CreateTaskRequestCopyWith<$Res> {
  _$CreateTaskRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? deadline = freezed,
  }) {
    return _then(_value.copyWith(
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateTaskRequestImplCopyWith<$Res>
    implements $CreateTaskRequestCopyWith<$Res> {
  factory _$$CreateTaskRequestImplCopyWith(_$CreateTaskRequestImpl value,
          $Res Function(_$CreateTaskRequestImpl) then) =
      __$$CreateTaskRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String? description, DateTime? deadline});
}

/// @nodoc
class __$$CreateTaskRequestImplCopyWithImpl<$Res>
    extends _$CreateTaskRequestCopyWithImpl<$Res, _$CreateTaskRequestImpl>
    implements _$$CreateTaskRequestImplCopyWith<$Res> {
  __$$CreateTaskRequestImplCopyWithImpl(_$CreateTaskRequestImpl _value,
      $Res Function(_$CreateTaskRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = freezed,
    Object? deadline = freezed,
  }) {
    return _then(_$CreateTaskRequestImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateTaskRequestImpl implements _CreateTaskRequest {
  const _$CreateTaskRequestImpl(
      {required this.title, this.description, this.deadline});

  factory _$CreateTaskRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateTaskRequestImplFromJson(json);

  @override
  final String title;
  @override
  final String? description;
  @override
  final DateTime? deadline;

  @override
  String toString() {
    return 'CreateTaskRequest(title: $title, description: $description, deadline: $deadline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTaskRequestImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, deadline);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTaskRequestImplCopyWith<_$CreateTaskRequestImpl> get copyWith =>
      __$$CreateTaskRequestImplCopyWithImpl<_$CreateTaskRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateTaskRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateTaskRequest implements CreateTaskRequest {
  const factory _CreateTaskRequest(
      {required final String title,
      final String? description,
      final DateTime? deadline}) = _$CreateTaskRequestImpl;

  factory _CreateTaskRequest.fromJson(Map<String, dynamic> json) =
      _$CreateTaskRequestImpl.fromJson;

  @override
  String get title;
  @override
  String? get description;
  @override
  DateTime? get deadline;
  @override
  @JsonKey(ignore: true)
  _$$CreateTaskRequestImplCopyWith<_$CreateTaskRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateTaskRequest _$UpdateTaskRequestFromJson(Map<String, dynamic> json) {
  return _UpdateTaskRequest.fromJson(json);
}

/// @nodoc
mixin _$UpdateTaskRequest {
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  DateTime? get deadline => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateTaskRequestCopyWith<UpdateTaskRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTaskRequestCopyWith<$Res> {
  factory $UpdateTaskRequestCopyWith(
          UpdateTaskRequest value, $Res Function(UpdateTaskRequest) then) =
      _$UpdateTaskRequestCopyWithImpl<$Res, UpdateTaskRequest>;
  @useResult
  $Res call({String? title, String? description, DateTime? deadline});
}

/// @nodoc
class _$UpdateTaskRequestCopyWithImpl<$Res, $Val extends UpdateTaskRequest>
    implements $UpdateTaskRequestCopyWith<$Res> {
  _$UpdateTaskRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? deadline = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateTaskRequestImplCopyWith<$Res>
    implements $UpdateTaskRequestCopyWith<$Res> {
  factory _$$UpdateTaskRequestImplCopyWith(_$UpdateTaskRequestImpl value,
          $Res Function(_$UpdateTaskRequestImpl) then) =
      __$$UpdateTaskRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? title, String? description, DateTime? deadline});
}

/// @nodoc
class __$$UpdateTaskRequestImplCopyWithImpl<$Res>
    extends _$UpdateTaskRequestCopyWithImpl<$Res, _$UpdateTaskRequestImpl>
    implements _$$UpdateTaskRequestImplCopyWith<$Res> {
  __$$UpdateTaskRequestImplCopyWithImpl(_$UpdateTaskRequestImpl _value,
      $Res Function(_$UpdateTaskRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? deadline = freezed,
  }) {
    return _then(_$UpdateTaskRequestImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      deadline: freezed == deadline
          ? _value.deadline
          : deadline // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateTaskRequestImpl implements _UpdateTaskRequest {
  const _$UpdateTaskRequestImpl({this.title, this.description, this.deadline});

  factory _$UpdateTaskRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateTaskRequestImplFromJson(json);

  @override
  final String? title;
  @override
  final String? description;
  @override
  final DateTime? deadline;

  @override
  String toString() {
    return 'UpdateTaskRequest(title: $title, description: $description, deadline: $deadline)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTaskRequestImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.deadline, deadline) ||
                other.deadline == deadline));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, deadline);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTaskRequestImplCopyWith<_$UpdateTaskRequestImpl> get copyWith =>
      __$$UpdateTaskRequestImplCopyWithImpl<_$UpdateTaskRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateTaskRequestImplToJson(
      this,
    );
  }
}

abstract class _UpdateTaskRequest implements UpdateTaskRequest {
  const factory _UpdateTaskRequest(
      {final String? title,
      final String? description,
      final DateTime? deadline}) = _$UpdateTaskRequestImpl;

  factory _UpdateTaskRequest.fromJson(Map<String, dynamic> json) =
      _$UpdateTaskRequestImpl.fromJson;

  @override
  String? get title;
  @override
  String? get description;
  @override
  DateTime? get deadline;
  @override
  @JsonKey(ignore: true)
  _$$UpdateTaskRequestImplCopyWith<_$UpdateTaskRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CreateSubTaskRequest _$CreateSubTaskRequestFromJson(Map<String, dynamic> json) {
  return _CreateSubTaskRequest.fromJson(json);
}

/// @nodoc
mixin _$CreateSubTaskRequest {
  String get title => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateSubTaskRequestCopyWith<CreateSubTaskRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSubTaskRequestCopyWith<$Res> {
  factory $CreateSubTaskRequestCopyWith(CreateSubTaskRequest value,
          $Res Function(CreateSubTaskRequest) then) =
      _$CreateSubTaskRequestCopyWithImpl<$Res, CreateSubTaskRequest>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class _$CreateSubTaskRequestCopyWithImpl<$Res,
        $Val extends CreateSubTaskRequest>
    implements $CreateSubTaskRequestCopyWith<$Res> {
  _$CreateSubTaskRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateSubTaskRequestImplCopyWith<$Res>
    implements $CreateSubTaskRequestCopyWith<$Res> {
  factory _$$CreateSubTaskRequestImplCopyWith(_$CreateSubTaskRequestImpl value,
          $Res Function(_$CreateSubTaskRequestImpl) then) =
      __$$CreateSubTaskRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$CreateSubTaskRequestImplCopyWithImpl<$Res>
    extends _$CreateSubTaskRequestCopyWithImpl<$Res, _$CreateSubTaskRequestImpl>
    implements _$$CreateSubTaskRequestImplCopyWith<$Res> {
  __$$CreateSubTaskRequestImplCopyWithImpl(_$CreateSubTaskRequestImpl _value,
      $Res Function(_$CreateSubTaskRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$CreateSubTaskRequestImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateSubTaskRequestImpl implements _CreateSubTaskRequest {
  const _$CreateSubTaskRequestImpl({required this.title});

  factory _$CreateSubTaskRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateSubTaskRequestImplFromJson(json);

  @override
  final String title;

  @override
  String toString() {
    return 'CreateSubTaskRequest(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSubTaskRequestImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSubTaskRequestImplCopyWith<_$CreateSubTaskRequestImpl>
      get copyWith =>
          __$$CreateSubTaskRequestImplCopyWithImpl<_$CreateSubTaskRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateSubTaskRequestImplToJson(
      this,
    );
  }
}

abstract class _CreateSubTaskRequest implements CreateSubTaskRequest {
  const factory _CreateSubTaskRequest({required final String title}) =
      _$CreateSubTaskRequestImpl;

  factory _CreateSubTaskRequest.fromJson(Map<String, dynamic> json) =
      _$CreateSubTaskRequestImpl.fromJson;

  @override
  String get title;
  @override
  @JsonKey(ignore: true)
  _$$CreateSubTaskRequestImplCopyWith<_$CreateSubTaskRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
