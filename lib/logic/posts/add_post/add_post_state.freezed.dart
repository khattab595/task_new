// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_post_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddPostState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(AddPostModel addPostModel) successAddPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(AddPostModel addPostModel)? successAddPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(AddPostModel addPostModel)? successAddPost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPostStateInitial value) initial,
    required TResult Function(AddPostStateLoading value) loading,
    required TResult Function(AddPostStateError value) error,
    required TResult Function(AddPostStateSuccess value) successAddPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPostStateInitial value)? initial,
    TResult? Function(AddPostStateLoading value)? loading,
    TResult? Function(AddPostStateError value)? error,
    TResult? Function(AddPostStateSuccess value)? successAddPost,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPostStateInitial value)? initial,
    TResult Function(AddPostStateLoading value)? loading,
    TResult Function(AddPostStateError value)? error,
    TResult Function(AddPostStateSuccess value)? successAddPost,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPostStateCopyWith<$Res> {
  factory $AddPostStateCopyWith(
          AddPostState value, $Res Function(AddPostState) then) =
      _$AddPostStateCopyWithImpl<$Res, AddPostState>;
}

/// @nodoc
class _$AddPostStateCopyWithImpl<$Res, $Val extends AddPostState>
    implements $AddPostStateCopyWith<$Res> {
  _$AddPostStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddPostStateInitialImplCopyWith<$Res> {
  factory _$$AddPostStateInitialImplCopyWith(_$AddPostStateInitialImpl value,
          $Res Function(_$AddPostStateInitialImpl) then) =
      __$$AddPostStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddPostStateInitialImplCopyWithImpl<$Res>
    extends _$AddPostStateCopyWithImpl<$Res, _$AddPostStateInitialImpl>
    implements _$$AddPostStateInitialImplCopyWith<$Res> {
  __$$AddPostStateInitialImplCopyWithImpl(_$AddPostStateInitialImpl _value,
      $Res Function(_$AddPostStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddPostStateInitialImpl implements AddPostStateInitial {
  const _$AddPostStateInitialImpl();

  @override
  String toString() {
    return 'AddPostState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPostStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(AddPostModel addPostModel) successAddPost,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(AddPostModel addPostModel)? successAddPost,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(AddPostModel addPostModel)? successAddPost,
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
    required TResult Function(AddPostStateInitial value) initial,
    required TResult Function(AddPostStateLoading value) loading,
    required TResult Function(AddPostStateError value) error,
    required TResult Function(AddPostStateSuccess value) successAddPost,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPostStateInitial value)? initial,
    TResult? Function(AddPostStateLoading value)? loading,
    TResult? Function(AddPostStateError value)? error,
    TResult? Function(AddPostStateSuccess value)? successAddPost,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPostStateInitial value)? initial,
    TResult Function(AddPostStateLoading value)? loading,
    TResult Function(AddPostStateError value)? error,
    TResult Function(AddPostStateSuccess value)? successAddPost,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AddPostStateInitial implements AddPostState {
  const factory AddPostStateInitial() = _$AddPostStateInitialImpl;
}

/// @nodoc
abstract class _$$AddPostStateLoadingImplCopyWith<$Res> {
  factory _$$AddPostStateLoadingImplCopyWith(_$AddPostStateLoadingImpl value,
          $Res Function(_$AddPostStateLoadingImpl) then) =
      __$$AddPostStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddPostStateLoadingImplCopyWithImpl<$Res>
    extends _$AddPostStateCopyWithImpl<$Res, _$AddPostStateLoadingImpl>
    implements _$$AddPostStateLoadingImplCopyWith<$Res> {
  __$$AddPostStateLoadingImplCopyWithImpl(_$AddPostStateLoadingImpl _value,
      $Res Function(_$AddPostStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddPostStateLoadingImpl implements AddPostStateLoading {
  const _$AddPostStateLoadingImpl();

  @override
  String toString() {
    return 'AddPostState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPostStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(AddPostModel addPostModel) successAddPost,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(AddPostModel addPostModel)? successAddPost,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(AddPostModel addPostModel)? successAddPost,
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
    required TResult Function(AddPostStateInitial value) initial,
    required TResult Function(AddPostStateLoading value) loading,
    required TResult Function(AddPostStateError value) error,
    required TResult Function(AddPostStateSuccess value) successAddPost,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPostStateInitial value)? initial,
    TResult? Function(AddPostStateLoading value)? loading,
    TResult? Function(AddPostStateError value)? error,
    TResult? Function(AddPostStateSuccess value)? successAddPost,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPostStateInitial value)? initial,
    TResult Function(AddPostStateLoading value)? loading,
    TResult Function(AddPostStateError value)? error,
    TResult Function(AddPostStateSuccess value)? successAddPost,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AddPostStateLoading implements AddPostState {
  const factory AddPostStateLoading() = _$AddPostStateLoadingImpl;
}

/// @nodoc
abstract class _$$AddPostStateErrorImplCopyWith<$Res> {
  factory _$$AddPostStateErrorImplCopyWith(_$AddPostStateErrorImpl value,
          $Res Function(_$AddPostStateErrorImpl) then) =
      __$$AddPostStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$AddPostStateErrorImplCopyWithImpl<$Res>
    extends _$AddPostStateCopyWithImpl<$Res, _$AddPostStateErrorImpl>
    implements _$$AddPostStateErrorImplCopyWith<$Res> {
  __$$AddPostStateErrorImplCopyWithImpl(_$AddPostStateErrorImpl _value,
      $Res Function(_$AddPostStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AddPostStateErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddPostStateErrorImpl implements AddPostStateError {
  const _$AddPostStateErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'AddPostState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPostStateErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPostStateErrorImplCopyWith<_$AddPostStateErrorImpl> get copyWith =>
      __$$AddPostStateErrorImplCopyWithImpl<_$AddPostStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(AddPostModel addPostModel) successAddPost,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(AddPostModel addPostModel)? successAddPost,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(AddPostModel addPostModel)? successAddPost,
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
    required TResult Function(AddPostStateInitial value) initial,
    required TResult Function(AddPostStateLoading value) loading,
    required TResult Function(AddPostStateError value) error,
    required TResult Function(AddPostStateSuccess value) successAddPost,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPostStateInitial value)? initial,
    TResult? Function(AddPostStateLoading value)? loading,
    TResult? Function(AddPostStateError value)? error,
    TResult? Function(AddPostStateSuccess value)? successAddPost,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPostStateInitial value)? initial,
    TResult Function(AddPostStateLoading value)? loading,
    TResult Function(AddPostStateError value)? error,
    TResult Function(AddPostStateSuccess value)? successAddPost,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AddPostStateError implements AddPostState {
  const factory AddPostStateError({required final String error}) =
      _$AddPostStateErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$AddPostStateErrorImplCopyWith<_$AddPostStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddPostStateSuccessImplCopyWith<$Res> {
  factory _$$AddPostStateSuccessImplCopyWith(_$AddPostStateSuccessImpl value,
          $Res Function(_$AddPostStateSuccessImpl) then) =
      __$$AddPostStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AddPostModel addPostModel});
}

/// @nodoc
class __$$AddPostStateSuccessImplCopyWithImpl<$Res>
    extends _$AddPostStateCopyWithImpl<$Res, _$AddPostStateSuccessImpl>
    implements _$$AddPostStateSuccessImplCopyWith<$Res> {
  __$$AddPostStateSuccessImplCopyWithImpl(_$AddPostStateSuccessImpl _value,
      $Res Function(_$AddPostStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addPostModel = null,
  }) {
    return _then(_$AddPostStateSuccessImpl(
      null == addPostModel
          ? _value.addPostModel
          : addPostModel // ignore: cast_nullable_to_non_nullable
              as AddPostModel,
    ));
  }
}

/// @nodoc

class _$AddPostStateSuccessImpl implements AddPostStateSuccess {
  const _$AddPostStateSuccessImpl(this.addPostModel);

  @override
  final AddPostModel addPostModel;

  @override
  String toString() {
    return 'AddPostState.successAddPost(addPostModel: $addPostModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPostStateSuccessImpl &&
            (identical(other.addPostModel, addPostModel) ||
                other.addPostModel == addPostModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addPostModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPostStateSuccessImplCopyWith<_$AddPostStateSuccessImpl> get copyWith =>
      __$$AddPostStateSuccessImplCopyWithImpl<_$AddPostStateSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) error,
    required TResult Function(AddPostModel addPostModel) successAddPost,
  }) {
    return successAddPost(addPostModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? error,
    TResult? Function(AddPostModel addPostModel)? successAddPost,
  }) {
    return successAddPost?.call(addPostModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? error,
    TResult Function(AddPostModel addPostModel)? successAddPost,
    required TResult orElse(),
  }) {
    if (successAddPost != null) {
      return successAddPost(addPostModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddPostStateInitial value) initial,
    required TResult Function(AddPostStateLoading value) loading,
    required TResult Function(AddPostStateError value) error,
    required TResult Function(AddPostStateSuccess value) successAddPost,
  }) {
    return successAddPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AddPostStateInitial value)? initial,
    TResult? Function(AddPostStateLoading value)? loading,
    TResult? Function(AddPostStateError value)? error,
    TResult? Function(AddPostStateSuccess value)? successAddPost,
  }) {
    return successAddPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddPostStateInitial value)? initial,
    TResult Function(AddPostStateLoading value)? loading,
    TResult Function(AddPostStateError value)? error,
    TResult Function(AddPostStateSuccess value)? successAddPost,
    required TResult orElse(),
  }) {
    if (successAddPost != null) {
      return successAddPost(this);
    }
    return orElse();
  }
}

abstract class AddPostStateSuccess implements AddPostState {
  const factory AddPostStateSuccess(final AddPostModel addPostModel) =
      _$AddPostStateSuccessImpl;

  AddPostModel get addPostModel;
  @JsonKey(ignore: true)
  _$$AddPostStateSuccessImplCopyWith<_$AddPostStateSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
