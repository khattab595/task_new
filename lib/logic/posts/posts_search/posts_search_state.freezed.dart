// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'posts_search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostsSearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(SearchResponse posts) success,
    required TResult Function(KFailure error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(SearchResponse posts)? success,
    TResult? Function(KFailure error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(SearchResponse posts)? success,
    TResult Function(KFailure error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostsSearchStateLoading value) loading,
    required TResult Function(PostsSearchStateSuccess value) success,
    required TResult Function(PostsSearchStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostsSearchStateLoading value)? loading,
    TResult? Function(PostsSearchStateSuccess value)? success,
    TResult? Function(PostsSearchStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostsSearchStateLoading value)? loading,
    TResult Function(PostsSearchStateSuccess value)? success,
    TResult Function(PostsSearchStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostsSearchStateCopyWith<$Res> {
  factory $PostsSearchStateCopyWith(
          PostsSearchState value, $Res Function(PostsSearchState) then) =
      _$PostsSearchStateCopyWithImpl<$Res, PostsSearchState>;
}

/// @nodoc
class _$PostsSearchStateCopyWithImpl<$Res, $Val extends PostsSearchState>
    implements $PostsSearchStateCopyWith<$Res> {
  _$PostsSearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PostsSearchStateLoadingImplCopyWith<$Res> {
  factory _$$PostsSearchStateLoadingImplCopyWith(
          _$PostsSearchStateLoadingImpl value,
          $Res Function(_$PostsSearchStateLoadingImpl) then) =
      __$$PostsSearchStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PostsSearchStateLoadingImplCopyWithImpl<$Res>
    extends _$PostsSearchStateCopyWithImpl<$Res, _$PostsSearchStateLoadingImpl>
    implements _$$PostsSearchStateLoadingImplCopyWith<$Res> {
  __$$PostsSearchStateLoadingImplCopyWithImpl(
      _$PostsSearchStateLoadingImpl _value,
      $Res Function(_$PostsSearchStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PostsSearchStateLoadingImpl implements PostsSearchStateLoading {
  const _$PostsSearchStateLoadingImpl();

  @override
  String toString() {
    return 'PostsSearchState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostsSearchStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(SearchResponse posts) success,
    required TResult Function(KFailure error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(SearchResponse posts)? success,
    TResult? Function(KFailure error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(SearchResponse posts)? success,
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
    required TResult Function(PostsSearchStateLoading value) loading,
    required TResult Function(PostsSearchStateSuccess value) success,
    required TResult Function(PostsSearchStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostsSearchStateLoading value)? loading,
    TResult? Function(PostsSearchStateSuccess value)? success,
    TResult? Function(PostsSearchStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostsSearchStateLoading value)? loading,
    TResult Function(PostsSearchStateSuccess value)? success,
    TResult Function(PostsSearchStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PostsSearchStateLoading implements PostsSearchState {
  const factory PostsSearchStateLoading() = _$PostsSearchStateLoadingImpl;
}

/// @nodoc
abstract class _$$PostsSearchStateSuccessImplCopyWith<$Res> {
  factory _$$PostsSearchStateSuccessImplCopyWith(
          _$PostsSearchStateSuccessImpl value,
          $Res Function(_$PostsSearchStateSuccessImpl) then) =
      __$$PostsSearchStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchResponse posts});
}

/// @nodoc
class __$$PostsSearchStateSuccessImplCopyWithImpl<$Res>
    extends _$PostsSearchStateCopyWithImpl<$Res, _$PostsSearchStateSuccessImpl>
    implements _$$PostsSearchStateSuccessImplCopyWith<$Res> {
  __$$PostsSearchStateSuccessImplCopyWithImpl(
      _$PostsSearchStateSuccessImpl _value,
      $Res Function(_$PostsSearchStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
  }) {
    return _then(_$PostsSearchStateSuccessImpl(
      null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as SearchResponse,
    ));
  }
}

/// @nodoc

class _$PostsSearchStateSuccessImpl implements PostsSearchStateSuccess {
  const _$PostsSearchStateSuccessImpl(this.posts);

  @override
  final SearchResponse posts;

  @override
  String toString() {
    return 'PostsSearchState.success(posts: $posts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostsSearchStateSuccessImpl &&
            (identical(other.posts, posts) || other.posts == posts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, posts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostsSearchStateSuccessImplCopyWith<_$PostsSearchStateSuccessImpl>
      get copyWith => __$$PostsSearchStateSuccessImplCopyWithImpl<
          _$PostsSearchStateSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(SearchResponse posts) success,
    required TResult Function(KFailure error) error,
  }) {
    return success(posts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(SearchResponse posts)? success,
    TResult? Function(KFailure error)? error,
  }) {
    return success?.call(posts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(SearchResponse posts)? success,
    TResult Function(KFailure error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PostsSearchStateLoading value) loading,
    required TResult Function(PostsSearchStateSuccess value) success,
    required TResult Function(PostsSearchStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostsSearchStateLoading value)? loading,
    TResult? Function(PostsSearchStateSuccess value)? success,
    TResult? Function(PostsSearchStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostsSearchStateLoading value)? loading,
    TResult Function(PostsSearchStateSuccess value)? success,
    TResult Function(PostsSearchStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class PostsSearchStateSuccess implements PostsSearchState {
  const factory PostsSearchStateSuccess(final SearchResponse posts) =
      _$PostsSearchStateSuccessImpl;

  SearchResponse get posts;
  @JsonKey(ignore: true)
  _$$PostsSearchStateSuccessImplCopyWith<_$PostsSearchStateSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostsSearchStateErrorImplCopyWith<$Res> {
  factory _$$PostsSearchStateErrorImplCopyWith(
          _$PostsSearchStateErrorImpl value,
          $Res Function(_$PostsSearchStateErrorImpl) then) =
      __$$PostsSearchStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({KFailure error});

  $KFailureCopyWith<$Res> get error;
}

/// @nodoc
class __$$PostsSearchStateErrorImplCopyWithImpl<$Res>
    extends _$PostsSearchStateCopyWithImpl<$Res, _$PostsSearchStateErrorImpl>
    implements _$$PostsSearchStateErrorImplCopyWith<$Res> {
  __$$PostsSearchStateErrorImplCopyWithImpl(_$PostsSearchStateErrorImpl _value,
      $Res Function(_$PostsSearchStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$PostsSearchStateErrorImpl(
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

class _$PostsSearchStateErrorImpl implements PostsSearchStateError {
  const _$PostsSearchStateErrorImpl({required this.error});

  @override
  final KFailure error;

  @override
  String toString() {
    return 'PostsSearchState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostsSearchStateErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostsSearchStateErrorImplCopyWith<_$PostsSearchStateErrorImpl>
      get copyWith => __$$PostsSearchStateErrorImplCopyWithImpl<
          _$PostsSearchStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(SearchResponse posts) success,
    required TResult Function(KFailure error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(SearchResponse posts)? success,
    TResult? Function(KFailure error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(SearchResponse posts)? success,
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
    required TResult Function(PostsSearchStateLoading value) loading,
    required TResult Function(PostsSearchStateSuccess value) success,
    required TResult Function(PostsSearchStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PostsSearchStateLoading value)? loading,
    TResult? Function(PostsSearchStateSuccess value)? success,
    TResult? Function(PostsSearchStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PostsSearchStateLoading value)? loading,
    TResult Function(PostsSearchStateSuccess value)? success,
    TResult Function(PostsSearchStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class PostsSearchStateError implements PostsSearchState {
  const factory PostsSearchStateError({required final KFailure error}) =
      _$PostsSearchStateErrorImpl;

  KFailure get error;
  @JsonKey(ignore: true)
  _$$PostsSearchStateErrorImplCopyWith<_$PostsSearchStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
