// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logout_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LogOutState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(KFailure error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(KFailure error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(KFailure error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogOutStateInitial value) initial,
    required TResult Function(LogOutStateLoading value) loading,
    required TResult Function(LogOutStateSuccess value) success,
    required TResult Function(LogOutStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogOutStateInitial value)? initial,
    TResult? Function(LogOutStateLoading value)? loading,
    TResult? Function(LogOutStateSuccess value)? success,
    TResult? Function(LogOutStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogOutStateInitial value)? initial,
    TResult Function(LogOutStateLoading value)? loading,
    TResult Function(LogOutStateSuccess value)? success,
    TResult Function(LogOutStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogOutStateCopyWith<$Res> {
  factory $LogOutStateCopyWith(
          LogOutState value, $Res Function(LogOutState) then) =
      _$LogOutStateCopyWithImpl<$Res, LogOutState>;
}

/// @nodoc
class _$LogOutStateCopyWithImpl<$Res, $Val extends LogOutState>
    implements $LogOutStateCopyWith<$Res> {
  _$LogOutStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LogOutStateInitialImplCopyWith<$Res> {
  factory _$$LogOutStateInitialImplCopyWith(_$LogOutStateInitialImpl value,
          $Res Function(_$LogOutStateInitialImpl) then) =
      __$$LogOutStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutStateInitialImplCopyWithImpl<$Res>
    extends _$LogOutStateCopyWithImpl<$Res, _$LogOutStateInitialImpl>
    implements _$$LogOutStateInitialImplCopyWith<$Res> {
  __$$LogOutStateInitialImplCopyWithImpl(_$LogOutStateInitialImpl _value,
      $Res Function(_$LogOutStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogOutStateInitialImpl implements LogOutStateInitial {
  const _$LogOutStateInitialImpl();

  @override
  String toString() {
    return 'LogOutState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(KFailure error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(KFailure error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
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
    required TResult Function(LogOutStateInitial value) initial,
    required TResult Function(LogOutStateLoading value) loading,
    required TResult Function(LogOutStateSuccess value) success,
    required TResult Function(LogOutStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogOutStateInitial value)? initial,
    TResult? Function(LogOutStateLoading value)? loading,
    TResult? Function(LogOutStateSuccess value)? success,
    TResult? Function(LogOutStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogOutStateInitial value)? initial,
    TResult Function(LogOutStateLoading value)? loading,
    TResult Function(LogOutStateSuccess value)? success,
    TResult Function(LogOutStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LogOutStateInitial implements LogOutState {
  const factory LogOutStateInitial() = _$LogOutStateInitialImpl;
}

/// @nodoc
abstract class _$$LogOutStateLoadingImplCopyWith<$Res> {
  factory _$$LogOutStateLoadingImplCopyWith(_$LogOutStateLoadingImpl value,
          $Res Function(_$LogOutStateLoadingImpl) then) =
      __$$LogOutStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutStateLoadingImplCopyWithImpl<$Res>
    extends _$LogOutStateCopyWithImpl<$Res, _$LogOutStateLoadingImpl>
    implements _$$LogOutStateLoadingImplCopyWith<$Res> {
  __$$LogOutStateLoadingImplCopyWithImpl(_$LogOutStateLoadingImpl _value,
      $Res Function(_$LogOutStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogOutStateLoadingImpl implements LogOutStateLoading {
  const _$LogOutStateLoadingImpl();

  @override
  String toString() {
    return 'LogOutState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(KFailure error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(KFailure error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
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
    required TResult Function(LogOutStateInitial value) initial,
    required TResult Function(LogOutStateLoading value) loading,
    required TResult Function(LogOutStateSuccess value) success,
    required TResult Function(LogOutStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogOutStateInitial value)? initial,
    TResult? Function(LogOutStateLoading value)? loading,
    TResult? Function(LogOutStateSuccess value)? success,
    TResult? Function(LogOutStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogOutStateInitial value)? initial,
    TResult Function(LogOutStateLoading value)? loading,
    TResult Function(LogOutStateSuccess value)? success,
    TResult Function(LogOutStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LogOutStateLoading implements LogOutState {
  const factory LogOutStateLoading() = _$LogOutStateLoadingImpl;
}

/// @nodoc
abstract class _$$LogOutStateSuccessImplCopyWith<$Res> {
  factory _$$LogOutStateSuccessImplCopyWith(_$LogOutStateSuccessImpl value,
          $Res Function(_$LogOutStateSuccessImpl) then) =
      __$$LogOutStateSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutStateSuccessImplCopyWithImpl<$Res>
    extends _$LogOutStateCopyWithImpl<$Res, _$LogOutStateSuccessImpl>
    implements _$$LogOutStateSuccessImplCopyWith<$Res> {
  __$$LogOutStateSuccessImplCopyWithImpl(_$LogOutStateSuccessImpl _value,
      $Res Function(_$LogOutStateSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogOutStateSuccessImpl implements LogOutStateSuccess {
  const _$LogOutStateSuccessImpl();

  @override
  String toString() {
    return 'LogOutState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogOutStateSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(KFailure error) error,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(KFailure error)? error,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function(KFailure error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LogOutStateInitial value) initial,
    required TResult Function(LogOutStateLoading value) loading,
    required TResult Function(LogOutStateSuccess value) success,
    required TResult Function(LogOutStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogOutStateInitial value)? initial,
    TResult? Function(LogOutStateLoading value)? loading,
    TResult? Function(LogOutStateSuccess value)? success,
    TResult? Function(LogOutStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogOutStateInitial value)? initial,
    TResult Function(LogOutStateLoading value)? loading,
    TResult Function(LogOutStateSuccess value)? success,
    TResult Function(LogOutStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class LogOutStateSuccess implements LogOutState {
  const factory LogOutStateSuccess() = _$LogOutStateSuccessImpl;
}

/// @nodoc
abstract class _$$LogOutStateErrorImplCopyWith<$Res> {
  factory _$$LogOutStateErrorImplCopyWith(_$LogOutStateErrorImpl value,
          $Res Function(_$LogOutStateErrorImpl) then) =
      __$$LogOutStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({KFailure error});

  $KFailureCopyWith<$Res> get error;
}

/// @nodoc
class __$$LogOutStateErrorImplCopyWithImpl<$Res>
    extends _$LogOutStateCopyWithImpl<$Res, _$LogOutStateErrorImpl>
    implements _$$LogOutStateErrorImplCopyWith<$Res> {
  __$$LogOutStateErrorImplCopyWithImpl(_$LogOutStateErrorImpl _value,
      $Res Function(_$LogOutStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$LogOutStateErrorImpl(
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

class _$LogOutStateErrorImpl implements LogOutStateError {
  const _$LogOutStateErrorImpl({required this.error});

  @override
  final KFailure error;

  @override
  String toString() {
    return 'LogOutState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogOutStateErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogOutStateErrorImplCopyWith<_$LogOutStateErrorImpl> get copyWith =>
      __$$LogOutStateErrorImplCopyWithImpl<_$LogOutStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function(KFailure error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function(KFailure error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
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
    required TResult Function(LogOutStateInitial value) initial,
    required TResult Function(LogOutStateLoading value) loading,
    required TResult Function(LogOutStateSuccess value) success,
    required TResult Function(LogOutStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LogOutStateInitial value)? initial,
    TResult? Function(LogOutStateLoading value)? loading,
    TResult? Function(LogOutStateSuccess value)? success,
    TResult? Function(LogOutStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LogOutStateInitial value)? initial,
    TResult Function(LogOutStateLoading value)? loading,
    TResult Function(LogOutStateSuccess value)? success,
    TResult Function(LogOutStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LogOutStateError implements LogOutState {
  const factory LogOutStateError({required final KFailure error}) =
      _$LogOutStateErrorImpl;

  KFailure get error;
  @JsonKey(ignore: true)
  _$$LogOutStateErrorImplCopyWith<_$LogOutStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
