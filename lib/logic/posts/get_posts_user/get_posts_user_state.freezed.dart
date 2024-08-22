// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_posts_user_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetPostsUserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() loadMore,
    required TResult Function(KFailure error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? loadMore,
    TResult? Function(KFailure error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? loadMore,
    TResult Function(KFailure error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPostsStateInitial value) initial,
    required TResult Function(GetPostsStateLoading value) loading,
    required TResult Function(GetPostsStateSuccess value) success,
    required TResult Function(GetPostsStateLoadMore value) loadMore,
    required TResult Function(GetPostsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPostsStateInitial value)? initial,
    TResult? Function(GetPostsStateLoading value)? loading,
    TResult? Function(GetPostsStateSuccess value)? success,
    TResult? Function(GetPostsStateLoadMore value)? loadMore,
    TResult? Function(GetPostsStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPostsStateInitial value)? initial,
    TResult Function(GetPostsStateLoading value)? loading,
    TResult Function(GetPostsStateSuccess value)? success,
    TResult Function(GetPostsStateLoadMore value)? loadMore,
    TResult Function(GetPostsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPostsUserStateCopyWith<$Res> {
  factory $GetPostsUserStateCopyWith(
          GetPostsUserState value, $Res Function(GetPostsUserState) then) =
      _$GetPostsUserStateCopyWithImpl<$Res, GetPostsUserState>;
}

/// @nodoc
class _$GetPostsUserStateCopyWithImpl<$Res, $Val extends GetPostsUserState>
    implements $GetPostsUserStateCopyWith<$Res> {
  _$GetPostsUserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPostsStateInitialImplCopyWith<$Res> {
  factory _$$GetPostsStateInitialImplCopyWith(_$GetPostsStateInitialImpl value,
          $Res Function(_$GetPostsStateInitialImpl) then) =
      __$$GetPostsStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPostsStateInitialImplCopyWithImpl<$Res>
    extends _$GetPostsUserStateCopyWithImpl<$Res, _$GetPostsStateInitialImpl>
    implements _$$GetPostsStateInitialImplCopyWith<$Res> {
  __$$GetPostsStateInitialImplCopyWithImpl(_$GetPostsStateInitialImpl _value,
      $Res Function(_$GetPostsStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetPostsStateInitialImpl implements GetPostsStateInitial {
  const _$GetPostsStateInitialImpl();

  @override
  String toString() {
    return 'GetPostsUserState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPostsStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() loadMore,
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
    TResult? Function()? loadMore,
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
    TResult Function()? loadMore,
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
    required TResult Function(GetPostsStateInitial value) initial,
    required TResult Function(GetPostsStateLoading value) loading,
    required TResult Function(GetPostsStateSuccess value) success,
    required TResult Function(GetPostsStateLoadMore value) loadMore,
    required TResult Function(GetPostsStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPostsStateInitial value)? initial,
    TResult? Function(GetPostsStateLoading value)? loading,
    TResult? Function(GetPostsStateSuccess value)? success,
    TResult? Function(GetPostsStateLoadMore value)? loadMore,
    TResult? Function(GetPostsStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPostsStateInitial value)? initial,
    TResult Function(GetPostsStateLoading value)? loading,
    TResult Function(GetPostsStateSuccess value)? success,
    TResult Function(GetPostsStateLoadMore value)? loadMore,
    TResult Function(GetPostsStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class GetPostsStateInitial implements GetPostsUserState {
  const factory GetPostsStateInitial() = _$GetPostsStateInitialImpl;
}

/// @nodoc
abstract class _$$GetPostsStateLoadingImplCopyWith<$Res> {
  factory _$$GetPostsStateLoadingImplCopyWith(_$GetPostsStateLoadingImpl value,
          $Res Function(_$GetPostsStateLoadingImpl) then) =
      __$$GetPostsStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPostsStateLoadingImplCopyWithImpl<$Res>
    extends _$GetPostsUserStateCopyWithImpl<$Res, _$GetPostsStateLoadingImpl>
    implements _$$GetPostsStateLoadingImplCopyWith<$Res> {
  __$$GetPostsStateLoadingImplCopyWithImpl(_$GetPostsStateLoadingImpl _value,
      $Res Function(_$GetPostsStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetPostsStateLoadingImpl implements GetPostsStateLoading {
  const _$GetPostsStateLoadingImpl();

  @override
  String toString() {
    return 'GetPostsUserState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPostsStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() loadMore,
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
    TResult? Function()? loadMore,
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
    TResult Function()? loadMore,
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
    required TResult Function(GetPostsStateInitial value) initial,
    required TResult Function(GetPostsStateLoading value) loading,
    required TResult Function(GetPostsStateSuccess value) success,
    required TResult Function(GetPostsStateLoadMore value) loadMore,
    required TResult Function(GetPostsStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPostsStateInitial value)? initial,
    TResult? Function(GetPostsStateLoading value)? loading,
    TResult? Function(GetPostsStateSuccess value)? success,
    TResult? Function(GetPostsStateLoadMore value)? loadMore,
    TResult? Function(GetPostsStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPostsStateInitial value)? initial,
    TResult Function(GetPostsStateLoading value)? loading,
    TResult Function(GetPostsStateSuccess value)? success,
    TResult Function(GetPostsStateLoadMore value)? loadMore,
    TResult Function(GetPostsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class GetPostsStateLoading implements GetPostsUserState {
  const factory GetPostsStateLoading() = _$GetPostsStateLoadingImpl;
}

/// @nodoc
abstract class _$$GetPostsStateSuccessImplCopyWith<$Res> {
  factory _$$GetPostsStateSuccessImplCopyWith(_$GetPostsStateSuccessImpl value,
          $Res Function(_$GetPostsStateSuccessImpl) then) =
      __$$GetPostsStateSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPostsStateSuccessImplCopyWithImpl<$Res>
    extends _$GetPostsUserStateCopyWithImpl<$Res, _$GetPostsStateSuccessImpl>
    implements _$$GetPostsStateSuccessImplCopyWith<$Res> {
  __$$GetPostsStateSuccessImplCopyWithImpl(_$GetPostsStateSuccessImpl _value,
      $Res Function(_$GetPostsStateSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetPostsStateSuccessImpl implements GetPostsStateSuccess {
  const _$GetPostsStateSuccessImpl();

  @override
  String toString() {
    return 'GetPostsUserState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPostsStateSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() loadMore,
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
    TResult? Function()? loadMore,
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
    TResult Function()? loadMore,
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
    required TResult Function(GetPostsStateInitial value) initial,
    required TResult Function(GetPostsStateLoading value) loading,
    required TResult Function(GetPostsStateSuccess value) success,
    required TResult Function(GetPostsStateLoadMore value) loadMore,
    required TResult Function(GetPostsStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPostsStateInitial value)? initial,
    TResult? Function(GetPostsStateLoading value)? loading,
    TResult? Function(GetPostsStateSuccess value)? success,
    TResult? Function(GetPostsStateLoadMore value)? loadMore,
    TResult? Function(GetPostsStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPostsStateInitial value)? initial,
    TResult Function(GetPostsStateLoading value)? loading,
    TResult Function(GetPostsStateSuccess value)? success,
    TResult Function(GetPostsStateLoadMore value)? loadMore,
    TResult Function(GetPostsStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class GetPostsStateSuccess implements GetPostsUserState {
  const factory GetPostsStateSuccess() = _$GetPostsStateSuccessImpl;
}

/// @nodoc
abstract class _$$GetPostsStateLoadMoreImplCopyWith<$Res> {
  factory _$$GetPostsStateLoadMoreImplCopyWith(
          _$GetPostsStateLoadMoreImpl value,
          $Res Function(_$GetPostsStateLoadMoreImpl) then) =
      __$$GetPostsStateLoadMoreImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPostsStateLoadMoreImplCopyWithImpl<$Res>
    extends _$GetPostsUserStateCopyWithImpl<$Res, _$GetPostsStateLoadMoreImpl>
    implements _$$GetPostsStateLoadMoreImplCopyWith<$Res> {
  __$$GetPostsStateLoadMoreImplCopyWithImpl(_$GetPostsStateLoadMoreImpl _value,
      $Res Function(_$GetPostsStateLoadMoreImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetPostsStateLoadMoreImpl implements GetPostsStateLoadMore {
  const _$GetPostsStateLoadMoreImpl();

  @override
  String toString() {
    return 'GetPostsUserState.loadMore()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPostsStateLoadMoreImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() loadMore,
    required TResult Function(KFailure error) error,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? loadMore,
    TResult? Function(KFailure error)? error,
  }) {
    return loadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? loadMore,
    TResult Function(KFailure error)? error,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPostsStateInitial value) initial,
    required TResult Function(GetPostsStateLoading value) loading,
    required TResult Function(GetPostsStateSuccess value) success,
    required TResult Function(GetPostsStateLoadMore value) loadMore,
    required TResult Function(GetPostsStateError value) error,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPostsStateInitial value)? initial,
    TResult? Function(GetPostsStateLoading value)? loading,
    TResult? Function(GetPostsStateSuccess value)? success,
    TResult? Function(GetPostsStateLoadMore value)? loadMore,
    TResult? Function(GetPostsStateError value)? error,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPostsStateInitial value)? initial,
    TResult Function(GetPostsStateLoading value)? loading,
    TResult Function(GetPostsStateSuccess value)? success,
    TResult Function(GetPostsStateLoadMore value)? loadMore,
    TResult Function(GetPostsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class GetPostsStateLoadMore implements GetPostsUserState {
  const factory GetPostsStateLoadMore() = _$GetPostsStateLoadMoreImpl;
}

/// @nodoc
abstract class _$$GetPostsStateErrorImplCopyWith<$Res> {
  factory _$$GetPostsStateErrorImplCopyWith(_$GetPostsStateErrorImpl value,
          $Res Function(_$GetPostsStateErrorImpl) then) =
      __$$GetPostsStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({KFailure error});

  $KFailureCopyWith<$Res> get error;
}

/// @nodoc
class __$$GetPostsStateErrorImplCopyWithImpl<$Res>
    extends _$GetPostsUserStateCopyWithImpl<$Res, _$GetPostsStateErrorImpl>
    implements _$$GetPostsStateErrorImplCopyWith<$Res> {
  __$$GetPostsStateErrorImplCopyWithImpl(_$GetPostsStateErrorImpl _value,
      $Res Function(_$GetPostsStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GetPostsStateErrorImpl(
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

class _$GetPostsStateErrorImpl implements GetPostsStateError {
  const _$GetPostsStateErrorImpl({required this.error});

  @override
  final KFailure error;

  @override
  String toString() {
    return 'GetPostsUserState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPostsStateErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPostsStateErrorImplCopyWith<_$GetPostsStateErrorImpl> get copyWith =>
      __$$GetPostsStateErrorImplCopyWithImpl<_$GetPostsStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() loadMore,
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
    TResult? Function()? loadMore,
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
    TResult Function()? loadMore,
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
    required TResult Function(GetPostsStateInitial value) initial,
    required TResult Function(GetPostsStateLoading value) loading,
    required TResult Function(GetPostsStateSuccess value) success,
    required TResult Function(GetPostsStateLoadMore value) loadMore,
    required TResult Function(GetPostsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPostsStateInitial value)? initial,
    TResult? Function(GetPostsStateLoading value)? loading,
    TResult? Function(GetPostsStateSuccess value)? success,
    TResult? Function(GetPostsStateLoadMore value)? loadMore,
    TResult? Function(GetPostsStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPostsStateInitial value)? initial,
    TResult Function(GetPostsStateLoading value)? loading,
    TResult Function(GetPostsStateSuccess value)? success,
    TResult Function(GetPostsStateLoadMore value)? loadMore,
    TResult Function(GetPostsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetPostsStateError implements GetPostsUserState {
  const factory GetPostsStateError({required final KFailure error}) =
      _$GetPostsStateErrorImpl;

  KFailure get error;
  @JsonKey(ignore: true)
  _$$GetPostsStateErrorImplCopyWith<_$GetPostsStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
