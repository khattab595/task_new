// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_live_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateLiveState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LiveStream model) success,
    required TResult Function(KFailure error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LiveStream model)? success,
    TResult? Function(KFailure error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LiveStream model)? success,
    TResult Function(KFailure error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateLiveStateInitial value) initial,
    required TResult Function(CreateLiveStateLoading value) loading,
    required TResult Function(CreateLiveStateSuccess value) success,
    required TResult Function(CreateLiveStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateLiveStateInitial value)? initial,
    TResult? Function(CreateLiveStateLoading value)? loading,
    TResult? Function(CreateLiveStateSuccess value)? success,
    TResult? Function(CreateLiveStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateLiveStateInitial value)? initial,
    TResult Function(CreateLiveStateLoading value)? loading,
    TResult Function(CreateLiveStateSuccess value)? success,
    TResult Function(CreateLiveStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateLiveStateCopyWith<$Res> {
  factory $CreateLiveStateCopyWith(
          CreateLiveState value, $Res Function(CreateLiveState) then) =
      _$CreateLiveStateCopyWithImpl<$Res, CreateLiveState>;
}

/// @nodoc
class _$CreateLiveStateCopyWithImpl<$Res, $Val extends CreateLiveState>
    implements $CreateLiveStateCopyWith<$Res> {
  _$CreateLiveStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateLiveStateInitialImplCopyWith<$Res> {
  factory _$$CreateLiveStateInitialImplCopyWith(
          _$CreateLiveStateInitialImpl value,
          $Res Function(_$CreateLiveStateInitialImpl) then) =
      __$$CreateLiveStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateLiveStateInitialImplCopyWithImpl<$Res>
    extends _$CreateLiveStateCopyWithImpl<$Res, _$CreateLiveStateInitialImpl>
    implements _$$CreateLiveStateInitialImplCopyWith<$Res> {
  __$$CreateLiveStateInitialImplCopyWithImpl(
      _$CreateLiveStateInitialImpl _value,
      $Res Function(_$CreateLiveStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateLiveStateInitialImpl implements CreateLiveStateInitial {
  const _$CreateLiveStateInitialImpl();

  @override
  String toString() {
    return 'CreateLiveState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateLiveStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LiveStream model) success,
    required TResult Function(KFailure error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LiveStream model)? success,
    TResult? Function(KFailure error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LiveStream model)? success,
    TResult Function(KFailure error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateLiveStateInitial value) initial,
    required TResult Function(CreateLiveStateLoading value) loading,
    required TResult Function(CreateLiveStateSuccess value) success,
    required TResult Function(CreateLiveStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateLiveStateInitial value)? initial,
    TResult? Function(CreateLiveStateLoading value)? loading,
    TResult? Function(CreateLiveStateSuccess value)? success,
    TResult? Function(CreateLiveStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateLiveStateInitial value)? initial,
    TResult Function(CreateLiveStateLoading value)? loading,
    TResult Function(CreateLiveStateSuccess value)? success,
    TResult Function(CreateLiveStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CreateLiveStateInitial implements CreateLiveState {
  const factory CreateLiveStateInitial() = _$CreateLiveStateInitialImpl;
}

/// @nodoc
abstract class _$$CreateLiveStateLoadingImplCopyWith<$Res> {
  factory _$$CreateLiveStateLoadingImplCopyWith(
          _$CreateLiveStateLoadingImpl value,
          $Res Function(_$CreateLiveStateLoadingImpl) then) =
      __$$CreateLiveStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateLiveStateLoadingImplCopyWithImpl<$Res>
    extends _$CreateLiveStateCopyWithImpl<$Res, _$CreateLiveStateLoadingImpl>
    implements _$$CreateLiveStateLoadingImplCopyWith<$Res> {
  __$$CreateLiveStateLoadingImplCopyWithImpl(
      _$CreateLiveStateLoadingImpl _value,
      $Res Function(_$CreateLiveStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreateLiveStateLoadingImpl implements CreateLiveStateLoading {
  const _$CreateLiveStateLoadingImpl();

  @override
  String toString() {
    return 'CreateLiveState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateLiveStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LiveStream model) success,
    required TResult Function(KFailure error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LiveStream model)? success,
    TResult? Function(KFailure error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LiveStream model)? success,
    TResult Function(KFailure error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateLiveStateInitial value) initial,
    required TResult Function(CreateLiveStateLoading value) loading,
    required TResult Function(CreateLiveStateSuccess value) success,
    required TResult Function(CreateLiveStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateLiveStateInitial value)? initial,
    TResult? Function(CreateLiveStateLoading value)? loading,
    TResult? Function(CreateLiveStateSuccess value)? success,
    TResult? Function(CreateLiveStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateLiveStateInitial value)? initial,
    TResult Function(CreateLiveStateLoading value)? loading,
    TResult Function(CreateLiveStateSuccess value)? success,
    TResult Function(CreateLiveStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CreateLiveStateLoading implements CreateLiveState {
  const factory CreateLiveStateLoading() = _$CreateLiveStateLoadingImpl;
}

/// @nodoc
abstract class _$$CreateLiveStateSuccessImplCopyWith<$Res> {
  factory _$$CreateLiveStateSuccessImplCopyWith(
          _$CreateLiveStateSuccessImpl value,
          $Res Function(_$CreateLiveStateSuccessImpl) then) =
      __$$CreateLiveStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LiveStream model});
}

/// @nodoc
class __$$CreateLiveStateSuccessImplCopyWithImpl<$Res>
    extends _$CreateLiveStateCopyWithImpl<$Res, _$CreateLiveStateSuccessImpl>
    implements _$$CreateLiveStateSuccessImplCopyWith<$Res> {
  __$$CreateLiveStateSuccessImplCopyWithImpl(
      _$CreateLiveStateSuccessImpl _value,
      $Res Function(_$CreateLiveStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$CreateLiveStateSuccessImpl(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as LiveStream,
    ));
  }
}

/// @nodoc

class _$CreateLiveStateSuccessImpl implements CreateLiveStateSuccess {
  const _$CreateLiveStateSuccessImpl({required this.model});

  @override
  final LiveStream model;

  @override
  String toString() {
    return 'CreateLiveState.success(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateLiveStateSuccessImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateLiveStateSuccessImplCopyWith<_$CreateLiveStateSuccessImpl>
      get copyWith => __$$CreateLiveStateSuccessImplCopyWithImpl<
          _$CreateLiveStateSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LiveStream model) success,
    required TResult Function(KFailure error) error,
  }) {
    return success(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LiveStream model)? success,
    TResult? Function(KFailure error)? error,
  }) {
    return success?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LiveStream model)? success,
    TResult Function(KFailure error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateLiveStateInitial value) initial,
    required TResult Function(CreateLiveStateLoading value) loading,
    required TResult Function(CreateLiveStateSuccess value) success,
    required TResult Function(CreateLiveStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateLiveStateInitial value)? initial,
    TResult? Function(CreateLiveStateLoading value)? loading,
    TResult? Function(CreateLiveStateSuccess value)? success,
    TResult? Function(CreateLiveStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateLiveStateInitial value)? initial,
    TResult Function(CreateLiveStateLoading value)? loading,
    TResult Function(CreateLiveStateSuccess value)? success,
    TResult Function(CreateLiveStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class CreateLiveStateSuccess implements CreateLiveState {
  const factory CreateLiveStateSuccess({required final LiveStream model}) =
      _$CreateLiveStateSuccessImpl;

  LiveStream get model;
  @JsonKey(ignore: true)
  _$$CreateLiveStateSuccessImplCopyWith<_$CreateLiveStateSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateLiveStateErrorImplCopyWith<$Res> {
  factory _$$CreateLiveStateErrorImplCopyWith(_$CreateLiveStateErrorImpl value,
          $Res Function(_$CreateLiveStateErrorImpl) then) =
      __$$CreateLiveStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({KFailure error});

  $KFailureCopyWith<$Res> get error;
}

/// @nodoc
class __$$CreateLiveStateErrorImplCopyWithImpl<$Res>
    extends _$CreateLiveStateCopyWithImpl<$Res, _$CreateLiveStateErrorImpl>
    implements _$$CreateLiveStateErrorImplCopyWith<$Res> {
  __$$CreateLiveStateErrorImplCopyWithImpl(_$CreateLiveStateErrorImpl _value,
      $Res Function(_$CreateLiveStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$CreateLiveStateErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as KFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $KFailureCopyWith<$Res> get error {
    return $KFailureCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc

class _$CreateLiveStateErrorImpl implements CreateLiveStateError {
  const _$CreateLiveStateErrorImpl({required this.error});

  @override
  final KFailure error;

  @override
  String toString() {
    return 'CreateLiveState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateLiveStateErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateLiveStateErrorImplCopyWith<_$CreateLiveStateErrorImpl>
      get copyWith =>
          __$$CreateLiveStateErrorImplCopyWithImpl<_$CreateLiveStateErrorImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LiveStream model) success,
    required TResult Function(KFailure error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LiveStream model)? success,
    TResult? Function(KFailure error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LiveStream model)? success,
    TResult Function(KFailure error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreateLiveStateInitial value) initial,
    required TResult Function(CreateLiveStateLoading value) loading,
    required TResult Function(CreateLiveStateSuccess value) success,
    required TResult Function(CreateLiveStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreateLiveStateInitial value)? initial,
    TResult? Function(CreateLiveStateLoading value)? loading,
    TResult? Function(CreateLiveStateSuccess value)? success,
    TResult? Function(CreateLiveStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreateLiveStateInitial value)? initial,
    TResult Function(CreateLiveStateLoading value)? loading,
    TResult Function(CreateLiveStateSuccess value)? success,
    TResult Function(CreateLiveStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CreateLiveStateError implements CreateLiveState {
  const factory CreateLiveStateError({required final KFailure error}) =
      _$CreateLiveStateErrorImpl;

  KFailure get error;
  @JsonKey(ignore: true)
  _$$CreateLiveStateErrorImplCopyWith<_$CreateLiveStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
