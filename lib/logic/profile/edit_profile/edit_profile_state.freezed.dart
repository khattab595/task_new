// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(UserModel userModel) success,
    required TResult Function(KFailure error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function(UserModel userModel)? success,
    TResult? Function(KFailure error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(UserModel userModel)? success,
    TResult Function(KFailure error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditProfileStateLoading value) loading,
    required TResult Function(EditProfileStateInitial value) initial,
    required TResult Function(EditProfileStateSuccess value) success,
    required TResult Function(EditProfileStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditProfileStateLoading value)? loading,
    TResult? Function(EditProfileStateInitial value)? initial,
    TResult? Function(EditProfileStateSuccess value)? success,
    TResult? Function(EditProfileStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileStateLoading value)? loading,
    TResult Function(EditProfileStateInitial value)? initial,
    TResult Function(EditProfileStateSuccess value)? success,
    TResult Function(EditProfileStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileStateCopyWith<$Res> {
  factory $EditProfileStateCopyWith(
          EditProfileState value, $Res Function(EditProfileState) then) =
      _$EditProfileStateCopyWithImpl<$Res, EditProfileState>;
}

/// @nodoc
class _$EditProfileStateCopyWithImpl<$Res, $Val extends EditProfileState>
    implements $EditProfileStateCopyWith<$Res> {
  _$EditProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EditProfileStateLoadingImplCopyWith<$Res> {
  factory _$$EditProfileStateLoadingImplCopyWith(
          _$EditProfileStateLoadingImpl value,
          $Res Function(_$EditProfileStateLoadingImpl) then) =
      __$$EditProfileStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditProfileStateLoadingImplCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res, _$EditProfileStateLoadingImpl>
    implements _$$EditProfileStateLoadingImplCopyWith<$Res> {
  __$$EditProfileStateLoadingImplCopyWithImpl(
      _$EditProfileStateLoadingImpl _value,
      $Res Function(_$EditProfileStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditProfileStateLoadingImpl implements EditProfileStateLoading {
  const _$EditProfileStateLoadingImpl();

  @override
  String toString() {
    return 'EditProfileState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(UserModel userModel) success,
    required TResult Function(KFailure error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function(UserModel userModel)? success,
    TResult? Function(KFailure error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(UserModel userModel)? success,
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
    required TResult Function(EditProfileStateLoading value) loading,
    required TResult Function(EditProfileStateInitial value) initial,
    required TResult Function(EditProfileStateSuccess value) success,
    required TResult Function(EditProfileStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditProfileStateLoading value)? loading,
    TResult? Function(EditProfileStateInitial value)? initial,
    TResult? Function(EditProfileStateSuccess value)? success,
    TResult? Function(EditProfileStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileStateLoading value)? loading,
    TResult Function(EditProfileStateInitial value)? initial,
    TResult Function(EditProfileStateSuccess value)? success,
    TResult Function(EditProfileStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class EditProfileStateLoading implements EditProfileState {
  const factory EditProfileStateLoading() = _$EditProfileStateLoadingImpl;
}

/// @nodoc
abstract class _$$EditProfileStateInitialImplCopyWith<$Res> {
  factory _$$EditProfileStateInitialImplCopyWith(
          _$EditProfileStateInitialImpl value,
          $Res Function(_$EditProfileStateInitialImpl) then) =
      __$$EditProfileStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditProfileStateInitialImplCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res, _$EditProfileStateInitialImpl>
    implements _$$EditProfileStateInitialImplCopyWith<$Res> {
  __$$EditProfileStateInitialImplCopyWithImpl(
      _$EditProfileStateInitialImpl _value,
      $Res Function(_$EditProfileStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditProfileStateInitialImpl implements EditProfileStateInitial {
  const _$EditProfileStateInitialImpl();

  @override
  String toString() {
    return 'EditProfileState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(UserModel userModel) success,
    required TResult Function(KFailure error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function(UserModel userModel)? success,
    TResult? Function(KFailure error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(UserModel userModel)? success,
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
    required TResult Function(EditProfileStateLoading value) loading,
    required TResult Function(EditProfileStateInitial value) initial,
    required TResult Function(EditProfileStateSuccess value) success,
    required TResult Function(EditProfileStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditProfileStateLoading value)? loading,
    TResult? Function(EditProfileStateInitial value)? initial,
    TResult? Function(EditProfileStateSuccess value)? success,
    TResult? Function(EditProfileStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileStateLoading value)? loading,
    TResult Function(EditProfileStateInitial value)? initial,
    TResult Function(EditProfileStateSuccess value)? success,
    TResult Function(EditProfileStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class EditProfileStateInitial implements EditProfileState {
  const factory EditProfileStateInitial() = _$EditProfileStateInitialImpl;
}

/// @nodoc
abstract class _$$EditProfileStateSuccessImplCopyWith<$Res> {
  factory _$$EditProfileStateSuccessImplCopyWith(
          _$EditProfileStateSuccessImpl value,
          $Res Function(_$EditProfileStateSuccessImpl) then) =
      __$$EditProfileStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel userModel});
}

/// @nodoc
class __$$EditProfileStateSuccessImplCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res, _$EditProfileStateSuccessImpl>
    implements _$$EditProfileStateSuccessImplCopyWith<$Res> {
  __$$EditProfileStateSuccessImplCopyWithImpl(
      _$EditProfileStateSuccessImpl _value,
      $Res Function(_$EditProfileStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userModel = null,
  }) {
    return _then(_$EditProfileStateSuccessImpl(
      null == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$EditProfileStateSuccessImpl implements EditProfileStateSuccess {
  const _$EditProfileStateSuccessImpl(this.userModel);

  @override
  final UserModel userModel;

  @override
  String toString() {
    return 'EditProfileState.success(userModel: $userModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileStateSuccessImpl &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileStateSuccessImplCopyWith<_$EditProfileStateSuccessImpl>
      get copyWith => __$$EditProfileStateSuccessImplCopyWithImpl<
          _$EditProfileStateSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(UserModel userModel) success,
    required TResult Function(KFailure error) error,
  }) {
    return success(userModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function(UserModel userModel)? success,
    TResult? Function(KFailure error)? error,
  }) {
    return success?.call(userModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(UserModel userModel)? success,
    TResult Function(KFailure error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(userModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditProfileStateLoading value) loading,
    required TResult Function(EditProfileStateInitial value) initial,
    required TResult Function(EditProfileStateSuccess value) success,
    required TResult Function(EditProfileStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditProfileStateLoading value)? loading,
    TResult? Function(EditProfileStateInitial value)? initial,
    TResult? Function(EditProfileStateSuccess value)? success,
    TResult? Function(EditProfileStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileStateLoading value)? loading,
    TResult Function(EditProfileStateInitial value)? initial,
    TResult Function(EditProfileStateSuccess value)? success,
    TResult Function(EditProfileStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class EditProfileStateSuccess implements EditProfileState {
  const factory EditProfileStateSuccess(final UserModel userModel) =
      _$EditProfileStateSuccessImpl;

  UserModel get userModel;
  @JsonKey(ignore: true)
  _$$EditProfileStateSuccessImplCopyWith<_$EditProfileStateSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditProfileStateErrorImplCopyWith<$Res> {
  factory _$$EditProfileStateErrorImplCopyWith(
          _$EditProfileStateErrorImpl value,
          $Res Function(_$EditProfileStateErrorImpl) then) =
      __$$EditProfileStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({KFailure error});

  $KFailureCopyWith<$Res> get error;
}

/// @nodoc
class __$$EditProfileStateErrorImplCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res, _$EditProfileStateErrorImpl>
    implements _$$EditProfileStateErrorImplCopyWith<$Res> {
  __$$EditProfileStateErrorImplCopyWithImpl(_$EditProfileStateErrorImpl _value,
      $Res Function(_$EditProfileStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$EditProfileStateErrorImpl(
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

class _$EditProfileStateErrorImpl implements EditProfileStateError {
  const _$EditProfileStateErrorImpl({required this.error});

  @override
  final KFailure error;

  @override
  String toString() {
    return 'EditProfileState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileStateErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileStateErrorImplCopyWith<_$EditProfileStateErrorImpl>
      get copyWith => __$$EditProfileStateErrorImplCopyWithImpl<
          _$EditProfileStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(UserModel userModel) success,
    required TResult Function(KFailure error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function(UserModel userModel)? success,
    TResult? Function(KFailure error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(UserModel userModel)? success,
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
    required TResult Function(EditProfileStateLoading value) loading,
    required TResult Function(EditProfileStateInitial value) initial,
    required TResult Function(EditProfileStateSuccess value) success,
    required TResult Function(EditProfileStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditProfileStateLoading value)? loading,
    TResult? Function(EditProfileStateInitial value)? initial,
    TResult? Function(EditProfileStateSuccess value)? success,
    TResult? Function(EditProfileStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileStateLoading value)? loading,
    TResult Function(EditProfileStateInitial value)? initial,
    TResult Function(EditProfileStateSuccess value)? success,
    TResult Function(EditProfileStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class EditProfileStateError implements EditProfileState {
  const factory EditProfileStateError({required final KFailure error}) =
      _$EditProfileStateErrorImpl;

  KFailure get error;
  @JsonKey(ignore: true)
  _$$EditProfileStateErrorImplCopyWith<_$EditProfileStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
