// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel loginModel) success,
    required TResult Function(String error) error,
    required TResult Function() loadingRegister,
    required TResult Function(UserModel registerModel) successRegister,
    required TResult Function(String error) errorRegister,
    required TResult Function() genderChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserModel loginModel)? success,
    TResult? Function(String error)? error,
    TResult? Function()? loadingRegister,
    TResult? Function(UserModel registerModel)? successRegister,
    TResult? Function(String error)? errorRegister,
    TResult? Function()? genderChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel loginModel)? success,
    TResult Function(String error)? error,
    TResult Function()? loadingRegister,
    TResult Function(UserModel registerModel)? successRegister,
    TResult Function(String error)? errorRegister,
    TResult Function()? genderChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateError value) error,
    required TResult Function(RegisterStateLoading value) loadingRegister,
    required TResult Function(RegisterStateSuccess value) successRegister,
    required TResult Function(RegisterStateError value) errorRegister,
    required TResult Function(GenderState value) genderChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateSuccess value)? success,
    TResult? Function(AuthStateError value)? error,
    TResult? Function(RegisterStateLoading value)? loadingRegister,
    TResult? Function(RegisterStateSuccess value)? successRegister,
    TResult? Function(RegisterStateError value)? errorRegister,
    TResult? Function(GenderState value)? genderChange,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
    TResult Function(RegisterStateLoading value)? loadingRegister,
    TResult Function(RegisterStateSuccess value)? successRegister,
    TResult Function(RegisterStateError value)? errorRegister,
    TResult Function(GenderState value)? genderChange,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthStateInitialImplCopyWith<$Res> {
  factory _$$AuthStateInitialImplCopyWith(_$AuthStateInitialImpl value,
          $Res Function(_$AuthStateInitialImpl) then) =
      __$$AuthStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateInitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateInitialImpl>
    implements _$$AuthStateInitialImplCopyWith<$Res> {
  __$$AuthStateInitialImplCopyWithImpl(_$AuthStateInitialImpl _value,
      $Res Function(_$AuthStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthStateInitialImpl implements AuthStateInitial {
  const _$AuthStateInitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel loginModel) success,
    required TResult Function(String error) error,
    required TResult Function() loadingRegister,
    required TResult Function(UserModel registerModel) successRegister,
    required TResult Function(String error) errorRegister,
    required TResult Function() genderChange,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserModel loginModel)? success,
    TResult? Function(String error)? error,
    TResult? Function()? loadingRegister,
    TResult? Function(UserModel registerModel)? successRegister,
    TResult? Function(String error)? errorRegister,
    TResult? Function()? genderChange,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel loginModel)? success,
    TResult Function(String error)? error,
    TResult Function()? loadingRegister,
    TResult Function(UserModel registerModel)? successRegister,
    TResult Function(String error)? errorRegister,
    TResult Function()? genderChange,
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
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateError value) error,
    required TResult Function(RegisterStateLoading value) loadingRegister,
    required TResult Function(RegisterStateSuccess value) successRegister,
    required TResult Function(RegisterStateError value) errorRegister,
    required TResult Function(GenderState value) genderChange,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateSuccess value)? success,
    TResult? Function(AuthStateError value)? error,
    TResult? Function(RegisterStateLoading value)? loadingRegister,
    TResult? Function(RegisterStateSuccess value)? successRegister,
    TResult? Function(RegisterStateError value)? errorRegister,
    TResult? Function(GenderState value)? genderChange,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
    TResult Function(RegisterStateLoading value)? loadingRegister,
    TResult Function(RegisterStateSuccess value)? successRegister,
    TResult Function(RegisterStateError value)? errorRegister,
    TResult Function(GenderState value)? genderChange,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthStateInitial implements AuthState {
  const factory AuthStateInitial() = _$AuthStateInitialImpl;
}

/// @nodoc
abstract class _$$AuthStateLoadingImplCopyWith<$Res> {
  factory _$$AuthStateLoadingImplCopyWith(_$AuthStateLoadingImpl value,
          $Res Function(_$AuthStateLoadingImpl) then) =
      __$$AuthStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateLoadingImpl>
    implements _$$AuthStateLoadingImplCopyWith<$Res> {
  __$$AuthStateLoadingImplCopyWithImpl(_$AuthStateLoadingImpl _value,
      $Res Function(_$AuthStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthStateLoadingImpl implements AuthStateLoading {
  const _$AuthStateLoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel loginModel) success,
    required TResult Function(String error) error,
    required TResult Function() loadingRegister,
    required TResult Function(UserModel registerModel) successRegister,
    required TResult Function(String error) errorRegister,
    required TResult Function() genderChange,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserModel loginModel)? success,
    TResult? Function(String error)? error,
    TResult? Function()? loadingRegister,
    TResult? Function(UserModel registerModel)? successRegister,
    TResult? Function(String error)? errorRegister,
    TResult? Function()? genderChange,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel loginModel)? success,
    TResult Function(String error)? error,
    TResult Function()? loadingRegister,
    TResult Function(UserModel registerModel)? successRegister,
    TResult Function(String error)? errorRegister,
    TResult Function()? genderChange,
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
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateError value) error,
    required TResult Function(RegisterStateLoading value) loadingRegister,
    required TResult Function(RegisterStateSuccess value) successRegister,
    required TResult Function(RegisterStateError value) errorRegister,
    required TResult Function(GenderState value) genderChange,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateSuccess value)? success,
    TResult? Function(AuthStateError value)? error,
    TResult? Function(RegisterStateLoading value)? loadingRegister,
    TResult? Function(RegisterStateSuccess value)? successRegister,
    TResult? Function(RegisterStateError value)? errorRegister,
    TResult? Function(GenderState value)? genderChange,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
    TResult Function(RegisterStateLoading value)? loadingRegister,
    TResult Function(RegisterStateSuccess value)? successRegister,
    TResult Function(RegisterStateError value)? errorRegister,
    TResult Function(GenderState value)? genderChange,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthStateLoading implements AuthState {
  const factory AuthStateLoading() = _$AuthStateLoadingImpl;
}

/// @nodoc
abstract class _$$AuthStateSuccessImplCopyWith<$Res> {
  factory _$$AuthStateSuccessImplCopyWith(_$AuthStateSuccessImpl value,
          $Res Function(_$AuthStateSuccessImpl) then) =
      __$$AuthStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel loginModel});
}

/// @nodoc
class __$$AuthStateSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateSuccessImpl>
    implements _$$AuthStateSuccessImplCopyWith<$Res> {
  __$$AuthStateSuccessImplCopyWithImpl(_$AuthStateSuccessImpl _value,
      $Res Function(_$AuthStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginModel = null,
  }) {
    return _then(_$AuthStateSuccessImpl(
      null == loginModel
          ? _value.loginModel
          : loginModel // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$AuthStateSuccessImpl implements AuthStateSuccess {
  const _$AuthStateSuccessImpl(this.loginModel);

  @override
  final UserModel loginModel;

  @override
  String toString() {
    return 'AuthState.success(loginModel: $loginModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateSuccessImpl &&
            (identical(other.loginModel, loginModel) ||
                other.loginModel == loginModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateSuccessImplCopyWith<_$AuthStateSuccessImpl> get copyWith =>
      __$$AuthStateSuccessImplCopyWithImpl<_$AuthStateSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel loginModel) success,
    required TResult Function(String error) error,
    required TResult Function() loadingRegister,
    required TResult Function(UserModel registerModel) successRegister,
    required TResult Function(String error) errorRegister,
    required TResult Function() genderChange,
  }) {
    return success(loginModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserModel loginModel)? success,
    TResult? Function(String error)? error,
    TResult? Function()? loadingRegister,
    TResult? Function(UserModel registerModel)? successRegister,
    TResult? Function(String error)? errorRegister,
    TResult? Function()? genderChange,
  }) {
    return success?.call(loginModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel loginModel)? success,
    TResult Function(String error)? error,
    TResult Function()? loadingRegister,
    TResult Function(UserModel registerModel)? successRegister,
    TResult Function(String error)? errorRegister,
    TResult Function()? genderChange,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(loginModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateError value) error,
    required TResult Function(RegisterStateLoading value) loadingRegister,
    required TResult Function(RegisterStateSuccess value) successRegister,
    required TResult Function(RegisterStateError value) errorRegister,
    required TResult Function(GenderState value) genderChange,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateSuccess value)? success,
    TResult? Function(AuthStateError value)? error,
    TResult? Function(RegisterStateLoading value)? loadingRegister,
    TResult? Function(RegisterStateSuccess value)? successRegister,
    TResult? Function(RegisterStateError value)? errorRegister,
    TResult? Function(GenderState value)? genderChange,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
    TResult Function(RegisterStateLoading value)? loadingRegister,
    TResult Function(RegisterStateSuccess value)? successRegister,
    TResult Function(RegisterStateError value)? errorRegister,
    TResult Function(GenderState value)? genderChange,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AuthStateSuccess implements AuthState {
  const factory AuthStateSuccess(final UserModel loginModel) =
      _$AuthStateSuccessImpl;

  UserModel get loginModel;
  @JsonKey(ignore: true)
  _$$AuthStateSuccessImplCopyWith<_$AuthStateSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthStateErrorImplCopyWith<$Res> {
  factory _$$AuthStateErrorImplCopyWith(_$AuthStateErrorImpl value,
          $Res Function(_$AuthStateErrorImpl) then) =
      __$$AuthStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$AuthStateErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateErrorImpl>
    implements _$$AuthStateErrorImplCopyWith<$Res> {
  __$$AuthStateErrorImplCopyWithImpl(
      _$AuthStateErrorImpl _value, $Res Function(_$AuthStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$AuthStateErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthStateErrorImpl implements AuthStateError {
  const _$AuthStateErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'AuthState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateErrorImplCopyWith<_$AuthStateErrorImpl> get copyWith =>
      __$$AuthStateErrorImplCopyWithImpl<_$AuthStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel loginModel) success,
    required TResult Function(String error) error,
    required TResult Function() loadingRegister,
    required TResult Function(UserModel registerModel) successRegister,
    required TResult Function(String error) errorRegister,
    required TResult Function() genderChange,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserModel loginModel)? success,
    TResult? Function(String error)? error,
    TResult? Function()? loadingRegister,
    TResult? Function(UserModel registerModel)? successRegister,
    TResult? Function(String error)? errorRegister,
    TResult? Function()? genderChange,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel loginModel)? success,
    TResult Function(String error)? error,
    TResult Function()? loadingRegister,
    TResult Function(UserModel registerModel)? successRegister,
    TResult Function(String error)? errorRegister,
    TResult Function()? genderChange,
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
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateError value) error,
    required TResult Function(RegisterStateLoading value) loadingRegister,
    required TResult Function(RegisterStateSuccess value) successRegister,
    required TResult Function(RegisterStateError value) errorRegister,
    required TResult Function(GenderState value) genderChange,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateSuccess value)? success,
    TResult? Function(AuthStateError value)? error,
    TResult? Function(RegisterStateLoading value)? loadingRegister,
    TResult? Function(RegisterStateSuccess value)? successRegister,
    TResult? Function(RegisterStateError value)? errorRegister,
    TResult? Function(GenderState value)? genderChange,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
    TResult Function(RegisterStateLoading value)? loadingRegister,
    TResult Function(RegisterStateSuccess value)? successRegister,
    TResult Function(RegisterStateError value)? errorRegister,
    TResult Function(GenderState value)? genderChange,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AuthStateError implements AuthState {
  const factory AuthStateError({required final String error}) =
      _$AuthStateErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$AuthStateErrorImplCopyWith<_$AuthStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterStateLoadingImplCopyWith<$Res> {
  factory _$$RegisterStateLoadingImplCopyWith(_$RegisterStateLoadingImpl value,
          $Res Function(_$RegisterStateLoadingImpl) then) =
      __$$RegisterStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterStateLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$RegisterStateLoadingImpl>
    implements _$$RegisterStateLoadingImplCopyWith<$Res> {
  __$$RegisterStateLoadingImplCopyWithImpl(_$RegisterStateLoadingImpl _value,
      $Res Function(_$RegisterStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterStateLoadingImpl implements RegisterStateLoading {
  const _$RegisterStateLoadingImpl();

  @override
  String toString() {
    return 'AuthState.loadingRegister()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel loginModel) success,
    required TResult Function(String error) error,
    required TResult Function() loadingRegister,
    required TResult Function(UserModel registerModel) successRegister,
    required TResult Function(String error) errorRegister,
    required TResult Function() genderChange,
  }) {
    return loadingRegister();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserModel loginModel)? success,
    TResult? Function(String error)? error,
    TResult? Function()? loadingRegister,
    TResult? Function(UserModel registerModel)? successRegister,
    TResult? Function(String error)? errorRegister,
    TResult? Function()? genderChange,
  }) {
    return loadingRegister?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel loginModel)? success,
    TResult Function(String error)? error,
    TResult Function()? loadingRegister,
    TResult Function(UserModel registerModel)? successRegister,
    TResult Function(String error)? errorRegister,
    TResult Function()? genderChange,
    required TResult orElse(),
  }) {
    if (loadingRegister != null) {
      return loadingRegister();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateError value) error,
    required TResult Function(RegisterStateLoading value) loadingRegister,
    required TResult Function(RegisterStateSuccess value) successRegister,
    required TResult Function(RegisterStateError value) errorRegister,
    required TResult Function(GenderState value) genderChange,
  }) {
    return loadingRegister(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateSuccess value)? success,
    TResult? Function(AuthStateError value)? error,
    TResult? Function(RegisterStateLoading value)? loadingRegister,
    TResult? Function(RegisterStateSuccess value)? successRegister,
    TResult? Function(RegisterStateError value)? errorRegister,
    TResult? Function(GenderState value)? genderChange,
  }) {
    return loadingRegister?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
    TResult Function(RegisterStateLoading value)? loadingRegister,
    TResult Function(RegisterStateSuccess value)? successRegister,
    TResult Function(RegisterStateError value)? errorRegister,
    TResult Function(GenderState value)? genderChange,
    required TResult orElse(),
  }) {
    if (loadingRegister != null) {
      return loadingRegister(this);
    }
    return orElse();
  }
}

abstract class RegisterStateLoading implements AuthState {
  const factory RegisterStateLoading() = _$RegisterStateLoadingImpl;
}

/// @nodoc
abstract class _$$RegisterStateSuccessImplCopyWith<$Res> {
  factory _$$RegisterStateSuccessImplCopyWith(_$RegisterStateSuccessImpl value,
          $Res Function(_$RegisterStateSuccessImpl) then) =
      __$$RegisterStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel registerModel});
}

/// @nodoc
class __$$RegisterStateSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$RegisterStateSuccessImpl>
    implements _$$RegisterStateSuccessImplCopyWith<$Res> {
  __$$RegisterStateSuccessImplCopyWithImpl(_$RegisterStateSuccessImpl _value,
      $Res Function(_$RegisterStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registerModel = null,
  }) {
    return _then(_$RegisterStateSuccessImpl(
      null == registerModel
          ? _value.registerModel
          : registerModel // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$RegisterStateSuccessImpl implements RegisterStateSuccess {
  const _$RegisterStateSuccessImpl(this.registerModel);

  @override
  final UserModel registerModel;

  @override
  String toString() {
    return 'AuthState.successRegister(registerModel: $registerModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterStateSuccessImpl &&
            (identical(other.registerModel, registerModel) ||
                other.registerModel == registerModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, registerModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterStateSuccessImplCopyWith<_$RegisterStateSuccessImpl>
      get copyWith =>
          __$$RegisterStateSuccessImplCopyWithImpl<_$RegisterStateSuccessImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel loginModel) success,
    required TResult Function(String error) error,
    required TResult Function() loadingRegister,
    required TResult Function(UserModel registerModel) successRegister,
    required TResult Function(String error) errorRegister,
    required TResult Function() genderChange,
  }) {
    return successRegister(registerModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserModel loginModel)? success,
    TResult? Function(String error)? error,
    TResult? Function()? loadingRegister,
    TResult? Function(UserModel registerModel)? successRegister,
    TResult? Function(String error)? errorRegister,
    TResult? Function()? genderChange,
  }) {
    return successRegister?.call(registerModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel loginModel)? success,
    TResult Function(String error)? error,
    TResult Function()? loadingRegister,
    TResult Function(UserModel registerModel)? successRegister,
    TResult Function(String error)? errorRegister,
    TResult Function()? genderChange,
    required TResult orElse(),
  }) {
    if (successRegister != null) {
      return successRegister(registerModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateError value) error,
    required TResult Function(RegisterStateLoading value) loadingRegister,
    required TResult Function(RegisterStateSuccess value) successRegister,
    required TResult Function(RegisterStateError value) errorRegister,
    required TResult Function(GenderState value) genderChange,
  }) {
    return successRegister(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateSuccess value)? success,
    TResult? Function(AuthStateError value)? error,
    TResult? Function(RegisterStateLoading value)? loadingRegister,
    TResult? Function(RegisterStateSuccess value)? successRegister,
    TResult? Function(RegisterStateError value)? errorRegister,
    TResult? Function(GenderState value)? genderChange,
  }) {
    return successRegister?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
    TResult Function(RegisterStateLoading value)? loadingRegister,
    TResult Function(RegisterStateSuccess value)? successRegister,
    TResult Function(RegisterStateError value)? errorRegister,
    TResult Function(GenderState value)? genderChange,
    required TResult orElse(),
  }) {
    if (successRegister != null) {
      return successRegister(this);
    }
    return orElse();
  }
}

abstract class RegisterStateSuccess implements AuthState {
  const factory RegisterStateSuccess(final UserModel registerModel) =
      _$RegisterStateSuccessImpl;

  UserModel get registerModel;
  @JsonKey(ignore: true)
  _$$RegisterStateSuccessImplCopyWith<_$RegisterStateSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterStateErrorImplCopyWith<$Res> {
  factory _$$RegisterStateErrorImplCopyWith(_$RegisterStateErrorImpl value,
          $Res Function(_$RegisterStateErrorImpl) then) =
      __$$RegisterStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$RegisterStateErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$RegisterStateErrorImpl>
    implements _$$RegisterStateErrorImplCopyWith<$Res> {
  __$$RegisterStateErrorImplCopyWithImpl(_$RegisterStateErrorImpl _value,
      $Res Function(_$RegisterStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$RegisterStateErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterStateErrorImpl implements RegisterStateError {
  const _$RegisterStateErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'AuthState.errorRegister(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterStateErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterStateErrorImplCopyWith<_$RegisterStateErrorImpl> get copyWith =>
      __$$RegisterStateErrorImplCopyWithImpl<_$RegisterStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel loginModel) success,
    required TResult Function(String error) error,
    required TResult Function() loadingRegister,
    required TResult Function(UserModel registerModel) successRegister,
    required TResult Function(String error) errorRegister,
    required TResult Function() genderChange,
  }) {
    return errorRegister(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserModel loginModel)? success,
    TResult? Function(String error)? error,
    TResult? Function()? loadingRegister,
    TResult? Function(UserModel registerModel)? successRegister,
    TResult? Function(String error)? errorRegister,
    TResult? Function()? genderChange,
  }) {
    return errorRegister?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel loginModel)? success,
    TResult Function(String error)? error,
    TResult Function()? loadingRegister,
    TResult Function(UserModel registerModel)? successRegister,
    TResult Function(String error)? errorRegister,
    TResult Function()? genderChange,
    required TResult orElse(),
  }) {
    if (errorRegister != null) {
      return errorRegister(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateError value) error,
    required TResult Function(RegisterStateLoading value) loadingRegister,
    required TResult Function(RegisterStateSuccess value) successRegister,
    required TResult Function(RegisterStateError value) errorRegister,
    required TResult Function(GenderState value) genderChange,
  }) {
    return errorRegister(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateSuccess value)? success,
    TResult? Function(AuthStateError value)? error,
    TResult? Function(RegisterStateLoading value)? loadingRegister,
    TResult? Function(RegisterStateSuccess value)? successRegister,
    TResult? Function(RegisterStateError value)? errorRegister,
    TResult? Function(GenderState value)? genderChange,
  }) {
    return errorRegister?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
    TResult Function(RegisterStateLoading value)? loadingRegister,
    TResult Function(RegisterStateSuccess value)? successRegister,
    TResult Function(RegisterStateError value)? errorRegister,
    TResult Function(GenderState value)? genderChange,
    required TResult orElse(),
  }) {
    if (errorRegister != null) {
      return errorRegister(this);
    }
    return orElse();
  }
}

abstract class RegisterStateError implements AuthState {
  const factory RegisterStateError({required final String error}) =
      _$RegisterStateErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$RegisterStateErrorImplCopyWith<_$RegisterStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenderStateImplCopyWith<$Res> {
  factory _$$GenderStateImplCopyWith(
          _$GenderStateImpl value, $Res Function(_$GenderStateImpl) then) =
      __$$GenderStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GenderStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$GenderStateImpl>
    implements _$$GenderStateImplCopyWith<$Res> {
  __$$GenderStateImplCopyWithImpl(
      _$GenderStateImpl _value, $Res Function(_$GenderStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GenderStateImpl implements GenderState {
  const _$GenderStateImpl();

  @override
  String toString() {
    return 'AuthState.genderChange()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GenderStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(UserModel loginModel) success,
    required TResult Function(String error) error,
    required TResult Function() loadingRegister,
    required TResult Function(UserModel registerModel) successRegister,
    required TResult Function(String error) errorRegister,
    required TResult Function() genderChange,
  }) {
    return genderChange();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(UserModel loginModel)? success,
    TResult? Function(String error)? error,
    TResult? Function()? loadingRegister,
    TResult? Function(UserModel registerModel)? successRegister,
    TResult? Function(String error)? errorRegister,
    TResult? Function()? genderChange,
  }) {
    return genderChange?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(UserModel loginModel)? success,
    TResult Function(String error)? error,
    TResult Function()? loadingRegister,
    TResult Function(UserModel registerModel)? successRegister,
    TResult Function(String error)? errorRegister,
    TResult Function()? genderChange,
    required TResult orElse(),
  }) {
    if (genderChange != null) {
      return genderChange();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateSuccess value) success,
    required TResult Function(AuthStateError value) error,
    required TResult Function(RegisterStateLoading value) loadingRegister,
    required TResult Function(RegisterStateSuccess value) successRegister,
    required TResult Function(RegisterStateError value) errorRegister,
    required TResult Function(GenderState value) genderChange,
  }) {
    return genderChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateSuccess value)? success,
    TResult? Function(AuthStateError value)? error,
    TResult? Function(RegisterStateLoading value)? loadingRegister,
    TResult? Function(RegisterStateSuccess value)? successRegister,
    TResult? Function(RegisterStateError value)? errorRegister,
    TResult? Function(GenderState value)? genderChange,
  }) {
    return genderChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateSuccess value)? success,
    TResult Function(AuthStateError value)? error,
    TResult Function(RegisterStateLoading value)? loadingRegister,
    TResult Function(RegisterStateSuccess value)? successRegister,
    TResult Function(RegisterStateError value)? errorRegister,
    TResult Function(GenderState value)? genderChange,
    required TResult orElse(),
  }) {
    if (genderChange != null) {
      return genderChange(this);
    }
    return orElse();
  }
}

abstract class GenderState implements AuthState {
  const factory GenderState() = _$GenderStateImpl;
}
