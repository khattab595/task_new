// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'end_live_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EndLiveState {
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
    required TResult Function(EndLiveStateInitial value) initial,
    required TResult Function(EndLiveStateLoading value) loading,
    required TResult Function(EndLiveStateSuccess value) success,
    required TResult Function(EndLiveStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EndLiveStateInitial value)? initial,
    TResult? Function(EndLiveStateLoading value)? loading,
    TResult? Function(EndLiveStateSuccess value)? success,
    TResult? Function(EndLiveStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EndLiveStateInitial value)? initial,
    TResult Function(EndLiveStateLoading value)? loading,
    TResult Function(EndLiveStateSuccess value)? success,
    TResult Function(EndLiveStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EndLiveStateCopyWith<$Res> {
  factory $EndLiveStateCopyWith(
          EndLiveState value, $Res Function(EndLiveState) then) =
      _$EndLiveStateCopyWithImpl<$Res, EndLiveState>;
}

/// @nodoc
class _$EndLiveStateCopyWithImpl<$Res, $Val extends EndLiveState>
    implements $EndLiveStateCopyWith<$Res> {
  _$EndLiveStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EndLiveStateInitialImplCopyWith<$Res> {
  factory _$$EndLiveStateInitialImplCopyWith(_$EndLiveStateInitialImpl value,
          $Res Function(_$EndLiveStateInitialImpl) then) =
      __$$EndLiveStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EndLiveStateInitialImplCopyWithImpl<$Res>
    extends _$EndLiveStateCopyWithImpl<$Res, _$EndLiveStateInitialImpl>
    implements _$$EndLiveStateInitialImplCopyWith<$Res> {
  __$$EndLiveStateInitialImplCopyWithImpl(_$EndLiveStateInitialImpl _value,
      $Res Function(_$EndLiveStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EndLiveStateInitialImpl implements EndLiveStateInitial {
  const _$EndLiveStateInitialImpl();

  @override
  String toString() {
    return 'EndLiveState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EndLiveStateInitialImpl);
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
    required TResult Function(EndLiveStateInitial value) initial,
    required TResult Function(EndLiveStateLoading value) loading,
    required TResult Function(EndLiveStateSuccess value) success,
    required TResult Function(EndLiveStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EndLiveStateInitial value)? initial,
    TResult? Function(EndLiveStateLoading value)? loading,
    TResult? Function(EndLiveStateSuccess value)? success,
    TResult? Function(EndLiveStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EndLiveStateInitial value)? initial,
    TResult Function(EndLiveStateLoading value)? loading,
    TResult Function(EndLiveStateSuccess value)? success,
    TResult Function(EndLiveStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class EndLiveStateInitial implements EndLiveState {
  const factory EndLiveStateInitial() = _$EndLiveStateInitialImpl;
}

/// @nodoc
abstract class _$$EndLiveStateLoadingImplCopyWith<$Res> {
  factory _$$EndLiveStateLoadingImplCopyWith(_$EndLiveStateLoadingImpl value,
          $Res Function(_$EndLiveStateLoadingImpl) then) =
      __$$EndLiveStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EndLiveStateLoadingImplCopyWithImpl<$Res>
    extends _$EndLiveStateCopyWithImpl<$Res, _$EndLiveStateLoadingImpl>
    implements _$$EndLiveStateLoadingImplCopyWith<$Res> {
  __$$EndLiveStateLoadingImplCopyWithImpl(_$EndLiveStateLoadingImpl _value,
      $Res Function(_$EndLiveStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EndLiveStateLoadingImpl implements EndLiveStateLoading {
  const _$EndLiveStateLoadingImpl();

  @override
  String toString() {
    return 'EndLiveState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EndLiveStateLoadingImpl);
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
    required TResult Function(EndLiveStateInitial value) initial,
    required TResult Function(EndLiveStateLoading value) loading,
    required TResult Function(EndLiveStateSuccess value) success,
    required TResult Function(EndLiveStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EndLiveStateInitial value)? initial,
    TResult? Function(EndLiveStateLoading value)? loading,
    TResult? Function(EndLiveStateSuccess value)? success,
    TResult? Function(EndLiveStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EndLiveStateInitial value)? initial,
    TResult Function(EndLiveStateLoading value)? loading,
    TResult Function(EndLiveStateSuccess value)? success,
    TResult Function(EndLiveStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class EndLiveStateLoading implements EndLiveState {
  const factory EndLiveStateLoading() = _$EndLiveStateLoadingImpl;
}

/// @nodoc
abstract class _$$EndLiveStateSuccessImplCopyWith<$Res> {
  factory _$$EndLiveStateSuccessImplCopyWith(_$EndLiveStateSuccessImpl value,
          $Res Function(_$EndLiveStateSuccessImpl) then) =
      __$$EndLiveStateSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EndLiveStateSuccessImplCopyWithImpl<$Res>
    extends _$EndLiveStateCopyWithImpl<$Res, _$EndLiveStateSuccessImpl>
    implements _$$EndLiveStateSuccessImplCopyWith<$Res> {
  __$$EndLiveStateSuccessImplCopyWithImpl(_$EndLiveStateSuccessImpl _value,
      $Res Function(_$EndLiveStateSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EndLiveStateSuccessImpl implements EndLiveStateSuccess {
  const _$EndLiveStateSuccessImpl();

  @override
  String toString() {
    return 'EndLiveState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EndLiveStateSuccessImpl);
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
    required TResult Function(EndLiveStateInitial value) initial,
    required TResult Function(EndLiveStateLoading value) loading,
    required TResult Function(EndLiveStateSuccess value) success,
    required TResult Function(EndLiveStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EndLiveStateInitial value)? initial,
    TResult? Function(EndLiveStateLoading value)? loading,
    TResult? Function(EndLiveStateSuccess value)? success,
    TResult? Function(EndLiveStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EndLiveStateInitial value)? initial,
    TResult Function(EndLiveStateLoading value)? loading,
    TResult Function(EndLiveStateSuccess value)? success,
    TResult Function(EndLiveStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class EndLiveStateSuccess implements EndLiveState {
  const factory EndLiveStateSuccess() = _$EndLiveStateSuccessImpl;
}

/// @nodoc
abstract class _$$EndLiveStateErrorImplCopyWith<$Res> {
  factory _$$EndLiveStateErrorImplCopyWith(_$EndLiveStateErrorImpl value,
          $Res Function(_$EndLiveStateErrorImpl) then) =
      __$$EndLiveStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({KFailure error});

  $KFailureCopyWith<$Res> get error;
}

/// @nodoc
class __$$EndLiveStateErrorImplCopyWithImpl<$Res>
    extends _$EndLiveStateCopyWithImpl<$Res, _$EndLiveStateErrorImpl>
    implements _$$EndLiveStateErrorImplCopyWith<$Res> {
  __$$EndLiveStateErrorImplCopyWithImpl(_$EndLiveStateErrorImpl _value,
      $Res Function(_$EndLiveStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$EndLiveStateErrorImpl(
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

class _$EndLiveStateErrorImpl implements EndLiveStateError {
  const _$EndLiveStateErrorImpl({required this.error});

  @override
  final KFailure error;

  @override
  String toString() {
    return 'EndLiveState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EndLiveStateErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EndLiveStateErrorImplCopyWith<_$EndLiveStateErrorImpl> get copyWith =>
      __$$EndLiveStateErrorImplCopyWithImpl<_$EndLiveStateErrorImpl>(
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
    required TResult Function(EndLiveStateInitial value) initial,
    required TResult Function(EndLiveStateLoading value) loading,
    required TResult Function(EndLiveStateSuccess value) success,
    required TResult Function(EndLiveStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EndLiveStateInitial value)? initial,
    TResult? Function(EndLiveStateLoading value)? loading,
    TResult? Function(EndLiveStateSuccess value)? success,
    TResult? Function(EndLiveStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EndLiveStateInitial value)? initial,
    TResult Function(EndLiveStateLoading value)? loading,
    TResult Function(EndLiveStateSuccess value)? success,
    TResult Function(EndLiveStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class EndLiveStateError implements EndLiveState {
  const factory EndLiveStateError({required final KFailure error}) =
      _$EndLiveStateErrorImpl;

  KFailure get error;
  @JsonKey(ignore: true)
  _$$EndLiveStateErrorImplCopyWith<_$EndLiveStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
