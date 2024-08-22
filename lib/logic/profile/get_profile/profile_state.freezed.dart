// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserUpdateNickNameCompanyModel userModel)
        successEditDetails,
    required TResult Function(UserModel userModel) success,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserUpdateNickNameCompanyModel userModel)?
        successEditDetails,
    TResult? Function(UserModel userModel)? success,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserUpdateNickNameCompanyModel userModel)?
        successEditDetails,
    TResult Function(UserModel userModel)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileStateInitial value) initial,
    required TResult Function(ProfileStateLoading value) loading,
    required TResult Function(ChangeDetailsProfileStateSuccess value)
        successEditDetails,
    required TResult Function(ProfileStateSuccess value) success,
    required TResult Function(ProfileStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateInitial value)? initial,
    TResult? Function(ProfileStateLoading value)? loading,
    TResult? Function(ChangeDetailsProfileStateSuccess value)?
        successEditDetails,
    TResult? Function(ProfileStateSuccess value)? success,
    TResult? Function(ProfileStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileStateInitial value)? initial,
    TResult Function(ProfileStateLoading value)? loading,
    TResult Function(ChangeDetailsProfileStateSuccess value)?
        successEditDetails,
    TResult Function(ProfileStateSuccess value)? success,
    TResult Function(ProfileStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProfileStateInitialImplCopyWith<$Res> {
  factory _$$ProfileStateInitialImplCopyWith(_$ProfileStateInitialImpl value,
          $Res Function(_$ProfileStateInitialImpl) then) =
      __$$ProfileStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileStateInitialImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateInitialImpl>
    implements _$$ProfileStateInitialImplCopyWith<$Res> {
  __$$ProfileStateInitialImplCopyWithImpl(_$ProfileStateInitialImpl _value,
      $Res Function(_$ProfileStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileStateInitialImpl implements ProfileStateInitial {
  const _$ProfileStateInitialImpl();

  @override
  String toString() {
    return 'ProfileState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserUpdateNickNameCompanyModel userModel)
        successEditDetails,
    required TResult Function(UserModel userModel) success,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserUpdateNickNameCompanyModel userModel)?
        successEditDetails,
    TResult? Function(UserModel userModel)? success,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserUpdateNickNameCompanyModel userModel)?
        successEditDetails,
    TResult Function(UserModel userModel)? success,
    TResult Function(String error)? error,
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
    required TResult Function(ProfileStateInitial value) initial,
    required TResult Function(ProfileStateLoading value) loading,
    required TResult Function(ChangeDetailsProfileStateSuccess value)
        successEditDetails,
    required TResult Function(ProfileStateSuccess value) success,
    required TResult Function(ProfileStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateInitial value)? initial,
    TResult? Function(ProfileStateLoading value)? loading,
    TResult? Function(ChangeDetailsProfileStateSuccess value)?
        successEditDetails,
    TResult? Function(ProfileStateSuccess value)? success,
    TResult? Function(ProfileStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileStateInitial value)? initial,
    TResult Function(ProfileStateLoading value)? loading,
    TResult Function(ChangeDetailsProfileStateSuccess value)?
        successEditDetails,
    TResult Function(ProfileStateSuccess value)? success,
    TResult Function(ProfileStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ProfileStateInitial implements ProfileState {
  const factory ProfileStateInitial() = _$ProfileStateInitialImpl;
}

/// @nodoc
abstract class _$$ProfileStateLoadingImplCopyWith<$Res> {
  factory _$$ProfileStateLoadingImplCopyWith(_$ProfileStateLoadingImpl value,
          $Res Function(_$ProfileStateLoadingImpl) then) =
      __$$ProfileStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileStateLoadingImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateLoadingImpl>
    implements _$$ProfileStateLoadingImplCopyWith<$Res> {
  __$$ProfileStateLoadingImplCopyWithImpl(_$ProfileStateLoadingImpl _value,
      $Res Function(_$ProfileStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProfileStateLoadingImpl implements ProfileStateLoading {
  const _$ProfileStateLoadingImpl();

  @override
  String toString() {
    return 'ProfileState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserUpdateNickNameCompanyModel userModel)
        successEditDetails,
    required TResult Function(UserModel userModel) success,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserUpdateNickNameCompanyModel userModel)?
        successEditDetails,
    TResult? Function(UserModel userModel)? success,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserUpdateNickNameCompanyModel userModel)?
        successEditDetails,
    TResult Function(UserModel userModel)? success,
    TResult Function(String error)? error,
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
    required TResult Function(ProfileStateInitial value) initial,
    required TResult Function(ProfileStateLoading value) loading,
    required TResult Function(ChangeDetailsProfileStateSuccess value)
        successEditDetails,
    required TResult Function(ProfileStateSuccess value) success,
    required TResult Function(ProfileStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateInitial value)? initial,
    TResult? Function(ProfileStateLoading value)? loading,
    TResult? Function(ChangeDetailsProfileStateSuccess value)?
        successEditDetails,
    TResult? Function(ProfileStateSuccess value)? success,
    TResult? Function(ProfileStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileStateInitial value)? initial,
    TResult Function(ProfileStateLoading value)? loading,
    TResult Function(ChangeDetailsProfileStateSuccess value)?
        successEditDetails,
    TResult Function(ProfileStateSuccess value)? success,
    TResult Function(ProfileStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProfileStateLoading implements ProfileState {
  const factory ProfileStateLoading() = _$ProfileStateLoadingImpl;
}

/// @nodoc
abstract class _$$ChangeDetailsProfileStateSuccessImplCopyWith<$Res> {
  factory _$$ChangeDetailsProfileStateSuccessImplCopyWith(
          _$ChangeDetailsProfileStateSuccessImpl value,
          $Res Function(_$ChangeDetailsProfileStateSuccessImpl) then) =
      __$$ChangeDetailsProfileStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserUpdateNickNameCompanyModel userModel});
}

/// @nodoc
class __$$ChangeDetailsProfileStateSuccessImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res,
        _$ChangeDetailsProfileStateSuccessImpl>
    implements _$$ChangeDetailsProfileStateSuccessImplCopyWith<$Res> {
  __$$ChangeDetailsProfileStateSuccessImplCopyWithImpl(
      _$ChangeDetailsProfileStateSuccessImpl _value,
      $Res Function(_$ChangeDetailsProfileStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userModel = null,
  }) {
    return _then(_$ChangeDetailsProfileStateSuccessImpl(
      null == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserUpdateNickNameCompanyModel,
    ));
  }
}

/// @nodoc

class _$ChangeDetailsProfileStateSuccessImpl
    implements ChangeDetailsProfileStateSuccess {
  const _$ChangeDetailsProfileStateSuccessImpl(this.userModel);

  @override
  final UserUpdateNickNameCompanyModel userModel;

  @override
  String toString() {
    return 'ProfileState.successEditDetails(userModel: $userModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeDetailsProfileStateSuccessImpl &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeDetailsProfileStateSuccessImplCopyWith<
          _$ChangeDetailsProfileStateSuccessImpl>
      get copyWith => __$$ChangeDetailsProfileStateSuccessImplCopyWithImpl<
          _$ChangeDetailsProfileStateSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserUpdateNickNameCompanyModel userModel)
        successEditDetails,
    required TResult Function(UserModel userModel) success,
    required TResult Function(String error) error,
  }) {
    return successEditDetails(userModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserUpdateNickNameCompanyModel userModel)?
        successEditDetails,
    TResult? Function(UserModel userModel)? success,
    TResult? Function(String error)? error,
  }) {
    return successEditDetails?.call(userModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserUpdateNickNameCompanyModel userModel)?
        successEditDetails,
    TResult Function(UserModel userModel)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (successEditDetails != null) {
      return successEditDetails(userModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileStateInitial value) initial,
    required TResult Function(ProfileStateLoading value) loading,
    required TResult Function(ChangeDetailsProfileStateSuccess value)
        successEditDetails,
    required TResult Function(ProfileStateSuccess value) success,
    required TResult Function(ProfileStateError value) error,
  }) {
    return successEditDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateInitial value)? initial,
    TResult? Function(ProfileStateLoading value)? loading,
    TResult? Function(ChangeDetailsProfileStateSuccess value)?
        successEditDetails,
    TResult? Function(ProfileStateSuccess value)? success,
    TResult? Function(ProfileStateError value)? error,
  }) {
    return successEditDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileStateInitial value)? initial,
    TResult Function(ProfileStateLoading value)? loading,
    TResult Function(ChangeDetailsProfileStateSuccess value)?
        successEditDetails,
    TResult Function(ProfileStateSuccess value)? success,
    TResult Function(ProfileStateError value)? error,
    required TResult orElse(),
  }) {
    if (successEditDetails != null) {
      return successEditDetails(this);
    }
    return orElse();
  }
}

abstract class ChangeDetailsProfileStateSuccess implements ProfileState {
  const factory ChangeDetailsProfileStateSuccess(
          final UserUpdateNickNameCompanyModel userModel) =
      _$ChangeDetailsProfileStateSuccessImpl;

  UserUpdateNickNameCompanyModel get userModel;
  @JsonKey(ignore: true)
  _$$ChangeDetailsProfileStateSuccessImplCopyWith<
          _$ChangeDetailsProfileStateSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileStateSuccessImplCopyWith<$Res> {
  factory _$$ProfileStateSuccessImplCopyWith(_$ProfileStateSuccessImpl value,
          $Res Function(_$ProfileStateSuccessImpl) then) =
      __$$ProfileStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel userModel});
}

/// @nodoc
class __$$ProfileStateSuccessImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateSuccessImpl>
    implements _$$ProfileStateSuccessImplCopyWith<$Res> {
  __$$ProfileStateSuccessImplCopyWithImpl(_$ProfileStateSuccessImpl _value,
      $Res Function(_$ProfileStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userModel = null,
  }) {
    return _then(_$ProfileStateSuccessImpl(
      null == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$ProfileStateSuccessImpl implements ProfileStateSuccess {
  const _$ProfileStateSuccessImpl(this.userModel);

  @override
  final UserModel userModel;

  @override
  String toString() {
    return 'ProfileState.success(userModel: $userModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateSuccessImpl &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateSuccessImplCopyWith<_$ProfileStateSuccessImpl> get copyWith =>
      __$$ProfileStateSuccessImplCopyWithImpl<_$ProfileStateSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserUpdateNickNameCompanyModel userModel)
        successEditDetails,
    required TResult Function(UserModel userModel) success,
    required TResult Function(String error) error,
  }) {
    return success(userModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserUpdateNickNameCompanyModel userModel)?
        successEditDetails,
    TResult? Function(UserModel userModel)? success,
    TResult? Function(String error)? error,
  }) {
    return success?.call(userModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserUpdateNickNameCompanyModel userModel)?
        successEditDetails,
    TResult Function(UserModel userModel)? success,
    TResult Function(String error)? error,
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
    required TResult Function(ProfileStateInitial value) initial,
    required TResult Function(ProfileStateLoading value) loading,
    required TResult Function(ChangeDetailsProfileStateSuccess value)
        successEditDetails,
    required TResult Function(ProfileStateSuccess value) success,
    required TResult Function(ProfileStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateInitial value)? initial,
    TResult? Function(ProfileStateLoading value)? loading,
    TResult? Function(ChangeDetailsProfileStateSuccess value)?
        successEditDetails,
    TResult? Function(ProfileStateSuccess value)? success,
    TResult? Function(ProfileStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileStateInitial value)? initial,
    TResult Function(ProfileStateLoading value)? loading,
    TResult Function(ChangeDetailsProfileStateSuccess value)?
        successEditDetails,
    TResult Function(ProfileStateSuccess value)? success,
    TResult Function(ProfileStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ProfileStateSuccess implements ProfileState {
  const factory ProfileStateSuccess(final UserModel userModel) =
      _$ProfileStateSuccessImpl;

  UserModel get userModel;
  @JsonKey(ignore: true)
  _$$ProfileStateSuccessImplCopyWith<_$ProfileStateSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileStateErrorImplCopyWith<$Res> {
  factory _$$ProfileStateErrorImplCopyWith(_$ProfileStateErrorImpl value,
          $Res Function(_$ProfileStateErrorImpl) then) =
      __$$ProfileStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ProfileStateErrorImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateErrorImpl>
    implements _$$ProfileStateErrorImplCopyWith<$Res> {
  __$$ProfileStateErrorImplCopyWithImpl(_$ProfileStateErrorImpl _value,
      $Res Function(_$ProfileStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ProfileStateErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ProfileStateErrorImpl implements ProfileStateError {
  const _$ProfileStateErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'ProfileState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateErrorImplCopyWith<_$ProfileStateErrorImpl> get copyWith =>
      __$$ProfileStateErrorImplCopyWithImpl<_$ProfileStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserUpdateNickNameCompanyModel userModel)
        successEditDetails,
    required TResult Function(UserModel userModel) success,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserUpdateNickNameCompanyModel userModel)?
        successEditDetails,
    TResult? Function(UserModel userModel)? success,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserUpdateNickNameCompanyModel userModel)?
        successEditDetails,
    TResult Function(UserModel userModel)? success,
    TResult Function(String error)? error,
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
    required TResult Function(ProfileStateInitial value) initial,
    required TResult Function(ProfileStateLoading value) loading,
    required TResult Function(ChangeDetailsProfileStateSuccess value)
        successEditDetails,
    required TResult Function(ProfileStateSuccess value) success,
    required TResult Function(ProfileStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileStateInitial value)? initial,
    TResult? Function(ProfileStateLoading value)? loading,
    TResult? Function(ChangeDetailsProfileStateSuccess value)?
        successEditDetails,
    TResult? Function(ProfileStateSuccess value)? success,
    TResult? Function(ProfileStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileStateInitial value)? initial,
    TResult Function(ProfileStateLoading value)? loading,
    TResult Function(ChangeDetailsProfileStateSuccess value)?
        successEditDetails,
    TResult Function(ProfileStateSuccess value)? success,
    TResult Function(ProfileStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProfileStateError implements ProfileState {
  const factory ProfileStateError({required final String error}) =
      _$ProfileStateErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ProfileStateErrorImplCopyWith<_$ProfileStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
