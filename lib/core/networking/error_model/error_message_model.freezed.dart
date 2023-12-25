// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error_message_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ErrorMessageModel _$ErrorMessageModelFromJson(Map<String, dynamic> json) {
  return _ErrorMessageModel.fromJson(json);
}

/// @nodoc
mixin _$ErrorMessageModel {
  @JsonKey(name: 'status_code')
  int? get status_code => throw _privateConstructorUsedError;
  @JsonKey(name: 'status_message')
  String get status_message => throw _privateConstructorUsedError;
  @JsonKey(name: 'success')
  bool get success => throw _privateConstructorUsedError;
  PageStates get errorType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorMessageModelCopyWith<ErrorMessageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorMessageModelCopyWith<$Res> {
  factory $ErrorMessageModelCopyWith(
          ErrorMessageModel value, $Res Function(ErrorMessageModel) then) =
      _$ErrorMessageModelCopyWithImpl<$Res, ErrorMessageModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status_code') int? status_code,
      @JsonKey(name: 'status_message') String status_message,
      @JsonKey(name: 'success') bool success,
      PageStates errorType});
}

/// @nodoc
class _$ErrorMessageModelCopyWithImpl<$Res, $Val extends ErrorMessageModel>
    implements $ErrorMessageModelCopyWith<$Res> {
  _$ErrorMessageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status_code = freezed,
    Object? status_message = null,
    Object? success = null,
    Object? errorType = null,
  }) {
    return _then(_value.copyWith(
      status_code: freezed == status_code
          ? _value.status_code
          : status_code // ignore: cast_nullable_to_non_nullable
              as int?,
      status_message: null == status_message
          ? _value.status_message
          : status_message // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      errorType: null == errorType
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as PageStates,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ErrorMessageModelImplCopyWith<$Res>
    implements $ErrorMessageModelCopyWith<$Res> {
  factory _$$ErrorMessageModelImplCopyWith(_$ErrorMessageModelImpl value,
          $Res Function(_$ErrorMessageModelImpl) then) =
      __$$ErrorMessageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status_code') int? status_code,
      @JsonKey(name: 'status_message') String status_message,
      @JsonKey(name: 'success') bool success,
      PageStates errorType});
}

/// @nodoc
class __$$ErrorMessageModelImplCopyWithImpl<$Res>
    extends _$ErrorMessageModelCopyWithImpl<$Res, _$ErrorMessageModelImpl>
    implements _$$ErrorMessageModelImplCopyWith<$Res> {
  __$$ErrorMessageModelImplCopyWithImpl(_$ErrorMessageModelImpl _value,
      $Res Function(_$ErrorMessageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status_code = freezed,
    Object? status_message = null,
    Object? success = null,
    Object? errorType = null,
  }) {
    return _then(_$ErrorMessageModelImpl(
      status_code: freezed == status_code
          ? _value.status_code
          : status_code // ignore: cast_nullable_to_non_nullable
              as int?,
      status_message: null == status_message
          ? _value.status_message
          : status_message // ignore: cast_nullable_to_non_nullable
              as String,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      errorType: null == errorType
          ? _value.errorType
          : errorType // ignore: cast_nullable_to_non_nullable
              as PageStates,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorMessageModelImpl implements _ErrorMessageModel {
  const _$ErrorMessageModelImpl(
      {@JsonKey(name: 'status_code') this.status_code,
      @JsonKey(name: 'status_message') required this.status_message,
      @JsonKey(name: 'success') required this.success,
      required this.errorType});

  factory _$ErrorMessageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorMessageModelImplFromJson(json);

  @override
  @JsonKey(name: 'status_code')
  final int? status_code;
  @override
  @JsonKey(name: 'status_message')
  final String status_message;
  @override
  @JsonKey(name: 'success')
  final bool success;
  @override
  final PageStates errorType;

  @override
  String toString() {
    return 'ErrorMessageModel(status_code: $status_code, status_message: $status_message, success: $success, errorType: $errorType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorMessageModelImpl &&
            (identical(other.status_code, status_code) ||
                other.status_code == status_code) &&
            (identical(other.status_message, status_message) ||
                other.status_message == status_message) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.errorType, errorType) ||
                other.errorType == errorType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status_code, status_message, success, errorType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorMessageModelImplCopyWith<_$ErrorMessageModelImpl> get copyWith =>
      __$$ErrorMessageModelImplCopyWithImpl<_$ErrorMessageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorMessageModelImplToJson(
      this,
    );
  }
}

abstract class _ErrorMessageModel implements ErrorMessageModel {
  const factory _ErrorMessageModel(
      {@JsonKey(name: 'status_code') final int? status_code,
      @JsonKey(name: 'status_message') required final String status_message,
      @JsonKey(name: 'success') required final bool success,
      required final PageStates errorType}) = _$ErrorMessageModelImpl;

  factory _ErrorMessageModel.fromJson(Map<String, dynamic> json) =
      _$ErrorMessageModelImpl.fromJson;

  @override
  @JsonKey(name: 'status_code')
  int? get status_code;
  @override
  @JsonKey(name: 'status_message')
  String get status_message;
  @override
  @JsonKey(name: 'success')
  bool get success;
  @override
  PageStates get errorType;
  @override
  @JsonKey(ignore: true)
  _$$ErrorMessageModelImplCopyWith<_$ErrorMessageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
