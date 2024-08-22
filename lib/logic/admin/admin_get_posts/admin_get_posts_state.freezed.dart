// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_get_posts_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdminGetPostsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(PostsResponse postsResponse) success,
    required TResult Function(KFailure error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(PostsResponse postsResponse)? success,
    TResult? Function(KFailure error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(PostsResponse postsResponse)? success,
    TResult Function(KFailure error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdminGetPostsStateLoading value) loading,
    required TResult Function(AdminGetPostsStateSuccess value) success,
    required TResult Function(AdminGetPostsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AdminGetPostsStateLoading value)? loading,
    TResult? Function(AdminGetPostsStateSuccess value)? success,
    TResult? Function(AdminGetPostsStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdminGetPostsStateLoading value)? loading,
    TResult Function(AdminGetPostsStateSuccess value)? success,
    TResult Function(AdminGetPostsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminGetPostsStateCopyWith<$Res> {
  factory $AdminGetPostsStateCopyWith(
          AdminGetPostsState value, $Res Function(AdminGetPostsState) then) =
      _$AdminGetPostsStateCopyWithImpl<$Res, AdminGetPostsState>;
}

/// @nodoc
class _$AdminGetPostsStateCopyWithImpl<$Res, $Val extends AdminGetPostsState>
    implements $AdminGetPostsStateCopyWith<$Res> {
  _$AdminGetPostsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AdminGetPostsStateLoadingImplCopyWith<$Res> {
  factory _$$AdminGetPostsStateLoadingImplCopyWith(
          _$AdminGetPostsStateLoadingImpl value,
          $Res Function(_$AdminGetPostsStateLoadingImpl) then) =
      __$$AdminGetPostsStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AdminGetPostsStateLoadingImplCopyWithImpl<$Res>
    extends _$AdminGetPostsStateCopyWithImpl<$Res,
        _$AdminGetPostsStateLoadingImpl>
    implements _$$AdminGetPostsStateLoadingImplCopyWith<$Res> {
  __$$AdminGetPostsStateLoadingImplCopyWithImpl(
      _$AdminGetPostsStateLoadingImpl _value,
      $Res Function(_$AdminGetPostsStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AdminGetPostsStateLoadingImpl implements AdminGetPostsStateLoading {
  const _$AdminGetPostsStateLoadingImpl();

  @override
  String toString() {
    return 'AdminGetPostsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminGetPostsStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(PostsResponse postsResponse) success,
    required TResult Function(KFailure error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(PostsResponse postsResponse)? success,
    TResult? Function(KFailure error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(PostsResponse postsResponse)? success,
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
    required TResult Function(AdminGetPostsStateLoading value) loading,
    required TResult Function(AdminGetPostsStateSuccess value) success,
    required TResult Function(AdminGetPostsStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AdminGetPostsStateLoading value)? loading,
    TResult? Function(AdminGetPostsStateSuccess value)? success,
    TResult? Function(AdminGetPostsStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdminGetPostsStateLoading value)? loading,
    TResult Function(AdminGetPostsStateSuccess value)? success,
    TResult Function(AdminGetPostsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AdminGetPostsStateLoading implements AdminGetPostsState {
  const factory AdminGetPostsStateLoading() = _$AdminGetPostsStateLoadingImpl;
}

/// @nodoc
abstract class _$$AdminGetPostsStateSuccessImplCopyWith<$Res> {
  factory _$$AdminGetPostsStateSuccessImplCopyWith(
          _$AdminGetPostsStateSuccessImpl value,
          $Res Function(_$AdminGetPostsStateSuccessImpl) then) =
      __$$AdminGetPostsStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PostsResponse postsResponse});
}

/// @nodoc
class __$$AdminGetPostsStateSuccessImplCopyWithImpl<$Res>
    extends _$AdminGetPostsStateCopyWithImpl<$Res,
        _$AdminGetPostsStateSuccessImpl>
    implements _$$AdminGetPostsStateSuccessImplCopyWith<$Res> {
  __$$AdminGetPostsStateSuccessImplCopyWithImpl(
      _$AdminGetPostsStateSuccessImpl _value,
      $Res Function(_$AdminGetPostsStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postsResponse = null,
  }) {
    return _then(_$AdminGetPostsStateSuccessImpl(
      null == postsResponse
          ? _value.postsResponse
          : postsResponse // ignore: cast_nullable_to_non_nullable
              as PostsResponse,
    ));
  }
}

/// @nodoc

class _$AdminGetPostsStateSuccessImpl implements AdminGetPostsStateSuccess {
  const _$AdminGetPostsStateSuccessImpl(this.postsResponse);

  @override
  final PostsResponse postsResponse;

  @override
  String toString() {
    return 'AdminGetPostsState.success(postsResponse: $postsResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminGetPostsStateSuccessImpl &&
            (identical(other.postsResponse, postsResponse) ||
                other.postsResponse == postsResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postsResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminGetPostsStateSuccessImplCopyWith<_$AdminGetPostsStateSuccessImpl>
      get copyWith => __$$AdminGetPostsStateSuccessImplCopyWithImpl<
          _$AdminGetPostsStateSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(PostsResponse postsResponse) success,
    required TResult Function(KFailure error) error,
  }) {
    return success(postsResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(PostsResponse postsResponse)? success,
    TResult? Function(KFailure error)? error,
  }) {
    return success?.call(postsResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(PostsResponse postsResponse)? success,
    TResult Function(KFailure error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(postsResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdminGetPostsStateLoading value) loading,
    required TResult Function(AdminGetPostsStateSuccess value) success,
    required TResult Function(AdminGetPostsStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AdminGetPostsStateLoading value)? loading,
    TResult? Function(AdminGetPostsStateSuccess value)? success,
    TResult? Function(AdminGetPostsStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdminGetPostsStateLoading value)? loading,
    TResult Function(AdminGetPostsStateSuccess value)? success,
    TResult Function(AdminGetPostsStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AdminGetPostsStateSuccess implements AdminGetPostsState {
  const factory AdminGetPostsStateSuccess(final PostsResponse postsResponse) =
      _$AdminGetPostsStateSuccessImpl;

  PostsResponse get postsResponse;
  @JsonKey(ignore: true)
  _$$AdminGetPostsStateSuccessImplCopyWith<_$AdminGetPostsStateSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AdminGetPostsStateErrorImplCopyWith<$Res> {
  factory _$$AdminGetPostsStateErrorImplCopyWith(
          _$AdminGetPostsStateErrorImpl value,
          $Res Function(_$AdminGetPostsStateErrorImpl) then) =
      __$$AdminGetPostsStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({KFailure error});

  $KFailureCopyWith<$Res> get error;
}

/// @nodoc
class __$$AdminGetPostsStateErrorImplCopyWithImpl<$Res>
    extends _$AdminGetPostsStateCopyWithImpl<$Res,
        _$AdminGetPostsStateErrorImpl>
    implements _$$AdminGetPostsStateErrorImplCopyWith<$Res> {
  __$$AdminGetPostsStateErrorImplCopyWithImpl(
      _$AdminGetPostsStateErrorImpl _value,
      $Res Function(_$AdminGetPostsStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AdminGetPostsStateErrorImpl(
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

class _$AdminGetPostsStateErrorImpl implements AdminGetPostsStateError {
  const _$AdminGetPostsStateErrorImpl({required this.error});

  @override
  final KFailure error;

  @override
  String toString() {
    return 'AdminGetPostsState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminGetPostsStateErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminGetPostsStateErrorImplCopyWith<_$AdminGetPostsStateErrorImpl>
      get copyWith => __$$AdminGetPostsStateErrorImplCopyWithImpl<
          _$AdminGetPostsStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(PostsResponse postsResponse) success,
    required TResult Function(KFailure error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(PostsResponse postsResponse)? success,
    TResult? Function(KFailure error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(PostsResponse postsResponse)? success,
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
    required TResult Function(AdminGetPostsStateLoading value) loading,
    required TResult Function(AdminGetPostsStateSuccess value) success,
    required TResult Function(AdminGetPostsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AdminGetPostsStateLoading value)? loading,
    TResult? Function(AdminGetPostsStateSuccess value)? success,
    TResult? Function(AdminGetPostsStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdminGetPostsStateLoading value)? loading,
    TResult Function(AdminGetPostsStateSuccess value)? success,
    TResult Function(AdminGetPostsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AdminGetPostsStateError implements AdminGetPostsState {
  const factory AdminGetPostsStateError({required final KFailure error}) =
      _$AdminGetPostsStateErrorImpl;

  KFailure get error;
  @JsonKey(ignore: true)
  _$$AdminGetPostsStateErrorImplCopyWith<_$AdminGetPostsStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
