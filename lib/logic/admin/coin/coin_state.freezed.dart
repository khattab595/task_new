// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coin_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CoinState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() successDelete,
    required TResult Function(CoinResponse coinResponse) successGet,
    required TResult Function(KFailure error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? successDelete,
    TResult? Function(CoinResponse coinResponse)? successGet,
    TResult? Function(KFailure error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? successDelete,
    TResult Function(CoinResponse coinResponse)? successGet,
    TResult Function(KFailure error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoinStateInitial value) initial,
    required TResult Function(CoinStateLoading value) loading,
    required TResult Function(AddCoinStateSuccess value) success,
    required TResult Function(DeleteCoinStateSuccess value) successDelete,
    required TResult Function(CoinStateSuccess value) successGet,
    required TResult Function(CoinStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoinStateInitial value)? initial,
    TResult? Function(CoinStateLoading value)? loading,
    TResult? Function(AddCoinStateSuccess value)? success,
    TResult? Function(DeleteCoinStateSuccess value)? successDelete,
    TResult? Function(CoinStateSuccess value)? successGet,
    TResult? Function(CoinStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoinStateInitial value)? initial,
    TResult Function(CoinStateLoading value)? loading,
    TResult Function(AddCoinStateSuccess value)? success,
    TResult Function(DeleteCoinStateSuccess value)? successDelete,
    TResult Function(CoinStateSuccess value)? successGet,
    TResult Function(CoinStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinStateCopyWith<$Res> {
  factory $CoinStateCopyWith(CoinState value, $Res Function(CoinState) then) =
      _$CoinStateCopyWithImpl<$Res, CoinState>;
}

/// @nodoc
class _$CoinStateCopyWithImpl<$Res, $Val extends CoinState>
    implements $CoinStateCopyWith<$Res> {
  _$CoinStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CoinStateInitialImplCopyWith<$Res> {
  factory _$$CoinStateInitialImplCopyWith(_$CoinStateInitialImpl value,
          $Res Function(_$CoinStateInitialImpl) then) =
      __$$CoinStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CoinStateInitialImplCopyWithImpl<$Res>
    extends _$CoinStateCopyWithImpl<$Res, _$CoinStateInitialImpl>
    implements _$$CoinStateInitialImplCopyWith<$Res> {
  __$$CoinStateInitialImplCopyWithImpl(_$CoinStateInitialImpl _value,
      $Res Function(_$CoinStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CoinStateInitialImpl implements CoinStateInitial {
  const _$CoinStateInitialImpl();

  @override
  String toString() {
    return 'CoinState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CoinStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() successDelete,
    required TResult Function(CoinResponse coinResponse) successGet,
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
    TResult? Function()? successDelete,
    TResult? Function(CoinResponse coinResponse)? successGet,
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
    TResult Function()? successDelete,
    TResult Function(CoinResponse coinResponse)? successGet,
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
    required TResult Function(CoinStateInitial value) initial,
    required TResult Function(CoinStateLoading value) loading,
    required TResult Function(AddCoinStateSuccess value) success,
    required TResult Function(DeleteCoinStateSuccess value) successDelete,
    required TResult Function(CoinStateSuccess value) successGet,
    required TResult Function(CoinStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoinStateInitial value)? initial,
    TResult? Function(CoinStateLoading value)? loading,
    TResult? Function(AddCoinStateSuccess value)? success,
    TResult? Function(DeleteCoinStateSuccess value)? successDelete,
    TResult? Function(CoinStateSuccess value)? successGet,
    TResult? Function(CoinStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoinStateInitial value)? initial,
    TResult Function(CoinStateLoading value)? loading,
    TResult Function(AddCoinStateSuccess value)? success,
    TResult Function(DeleteCoinStateSuccess value)? successDelete,
    TResult Function(CoinStateSuccess value)? successGet,
    TResult Function(CoinStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CoinStateInitial implements CoinState {
  const factory CoinStateInitial() = _$CoinStateInitialImpl;
}

/// @nodoc
abstract class _$$CoinStateLoadingImplCopyWith<$Res> {
  factory _$$CoinStateLoadingImplCopyWith(_$CoinStateLoadingImpl value,
          $Res Function(_$CoinStateLoadingImpl) then) =
      __$$CoinStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CoinStateLoadingImplCopyWithImpl<$Res>
    extends _$CoinStateCopyWithImpl<$Res, _$CoinStateLoadingImpl>
    implements _$$CoinStateLoadingImplCopyWith<$Res> {
  __$$CoinStateLoadingImplCopyWithImpl(_$CoinStateLoadingImpl _value,
      $Res Function(_$CoinStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CoinStateLoadingImpl implements CoinStateLoading {
  const _$CoinStateLoadingImpl();

  @override
  String toString() {
    return 'CoinState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CoinStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() successDelete,
    required TResult Function(CoinResponse coinResponse) successGet,
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
    TResult? Function()? successDelete,
    TResult? Function(CoinResponse coinResponse)? successGet,
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
    TResult Function()? successDelete,
    TResult Function(CoinResponse coinResponse)? successGet,
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
    required TResult Function(CoinStateInitial value) initial,
    required TResult Function(CoinStateLoading value) loading,
    required TResult Function(AddCoinStateSuccess value) success,
    required TResult Function(DeleteCoinStateSuccess value) successDelete,
    required TResult Function(CoinStateSuccess value) successGet,
    required TResult Function(CoinStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoinStateInitial value)? initial,
    TResult? Function(CoinStateLoading value)? loading,
    TResult? Function(AddCoinStateSuccess value)? success,
    TResult? Function(DeleteCoinStateSuccess value)? successDelete,
    TResult? Function(CoinStateSuccess value)? successGet,
    TResult? Function(CoinStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoinStateInitial value)? initial,
    TResult Function(CoinStateLoading value)? loading,
    TResult Function(AddCoinStateSuccess value)? success,
    TResult Function(DeleteCoinStateSuccess value)? successDelete,
    TResult Function(CoinStateSuccess value)? successGet,
    TResult Function(CoinStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CoinStateLoading implements CoinState {
  const factory CoinStateLoading() = _$CoinStateLoadingImpl;
}

/// @nodoc
abstract class _$$AddCoinStateSuccessImplCopyWith<$Res> {
  factory _$$AddCoinStateSuccessImplCopyWith(_$AddCoinStateSuccessImpl value,
          $Res Function(_$AddCoinStateSuccessImpl) then) =
      __$$AddCoinStateSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddCoinStateSuccessImplCopyWithImpl<$Res>
    extends _$CoinStateCopyWithImpl<$Res, _$AddCoinStateSuccessImpl>
    implements _$$AddCoinStateSuccessImplCopyWith<$Res> {
  __$$AddCoinStateSuccessImplCopyWithImpl(_$AddCoinStateSuccessImpl _value,
      $Res Function(_$AddCoinStateSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddCoinStateSuccessImpl implements AddCoinStateSuccess {
  const _$AddCoinStateSuccessImpl();

  @override
  String toString() {
    return 'CoinState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCoinStateSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() successDelete,
    required TResult Function(CoinResponse coinResponse) successGet,
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
    TResult? Function()? successDelete,
    TResult? Function(CoinResponse coinResponse)? successGet,
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
    TResult Function()? successDelete,
    TResult Function(CoinResponse coinResponse)? successGet,
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
    required TResult Function(CoinStateInitial value) initial,
    required TResult Function(CoinStateLoading value) loading,
    required TResult Function(AddCoinStateSuccess value) success,
    required TResult Function(DeleteCoinStateSuccess value) successDelete,
    required TResult Function(CoinStateSuccess value) successGet,
    required TResult Function(CoinStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoinStateInitial value)? initial,
    TResult? Function(CoinStateLoading value)? loading,
    TResult? Function(AddCoinStateSuccess value)? success,
    TResult? Function(DeleteCoinStateSuccess value)? successDelete,
    TResult? Function(CoinStateSuccess value)? successGet,
    TResult? Function(CoinStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoinStateInitial value)? initial,
    TResult Function(CoinStateLoading value)? loading,
    TResult Function(AddCoinStateSuccess value)? success,
    TResult Function(DeleteCoinStateSuccess value)? successDelete,
    TResult Function(CoinStateSuccess value)? successGet,
    TResult Function(CoinStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AddCoinStateSuccess implements CoinState {
  const factory AddCoinStateSuccess() = _$AddCoinStateSuccessImpl;
}

/// @nodoc
abstract class _$$DeleteCoinStateSuccessImplCopyWith<$Res> {
  factory _$$DeleteCoinStateSuccessImplCopyWith(
          _$DeleteCoinStateSuccessImpl value,
          $Res Function(_$DeleteCoinStateSuccessImpl) then) =
      __$$DeleteCoinStateSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeleteCoinStateSuccessImplCopyWithImpl<$Res>
    extends _$CoinStateCopyWithImpl<$Res, _$DeleteCoinStateSuccessImpl>
    implements _$$DeleteCoinStateSuccessImplCopyWith<$Res> {
  __$$DeleteCoinStateSuccessImplCopyWithImpl(
      _$DeleteCoinStateSuccessImpl _value,
      $Res Function(_$DeleteCoinStateSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DeleteCoinStateSuccessImpl implements DeleteCoinStateSuccess {
  const _$DeleteCoinStateSuccessImpl();

  @override
  String toString() {
    return 'CoinState.successDelete()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteCoinStateSuccessImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() successDelete,
    required TResult Function(CoinResponse coinResponse) successGet,
    required TResult Function(KFailure error) error,
  }) {
    return successDelete();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? successDelete,
    TResult? Function(CoinResponse coinResponse)? successGet,
    TResult? Function(KFailure error)? error,
  }) {
    return successDelete?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? successDelete,
    TResult Function(CoinResponse coinResponse)? successGet,
    TResult Function(KFailure error)? error,
    required TResult orElse(),
  }) {
    if (successDelete != null) {
      return successDelete();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoinStateInitial value) initial,
    required TResult Function(CoinStateLoading value) loading,
    required TResult Function(AddCoinStateSuccess value) success,
    required TResult Function(DeleteCoinStateSuccess value) successDelete,
    required TResult Function(CoinStateSuccess value) successGet,
    required TResult Function(CoinStateError value) error,
  }) {
    return successDelete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoinStateInitial value)? initial,
    TResult? Function(CoinStateLoading value)? loading,
    TResult? Function(AddCoinStateSuccess value)? success,
    TResult? Function(DeleteCoinStateSuccess value)? successDelete,
    TResult? Function(CoinStateSuccess value)? successGet,
    TResult? Function(CoinStateError value)? error,
  }) {
    return successDelete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoinStateInitial value)? initial,
    TResult Function(CoinStateLoading value)? loading,
    TResult Function(AddCoinStateSuccess value)? success,
    TResult Function(DeleteCoinStateSuccess value)? successDelete,
    TResult Function(CoinStateSuccess value)? successGet,
    TResult Function(CoinStateError value)? error,
    required TResult orElse(),
  }) {
    if (successDelete != null) {
      return successDelete(this);
    }
    return orElse();
  }
}

abstract class DeleteCoinStateSuccess implements CoinState {
  const factory DeleteCoinStateSuccess() = _$DeleteCoinStateSuccessImpl;
}

/// @nodoc
abstract class _$$CoinStateSuccessImplCopyWith<$Res> {
  factory _$$CoinStateSuccessImplCopyWith(_$CoinStateSuccessImpl value,
          $Res Function(_$CoinStateSuccessImpl) then) =
      __$$CoinStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CoinResponse coinResponse});
}

/// @nodoc
class __$$CoinStateSuccessImplCopyWithImpl<$Res>
    extends _$CoinStateCopyWithImpl<$Res, _$CoinStateSuccessImpl>
    implements _$$CoinStateSuccessImplCopyWith<$Res> {
  __$$CoinStateSuccessImplCopyWithImpl(_$CoinStateSuccessImpl _value,
      $Res Function(_$CoinStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coinResponse = null,
  }) {
    return _then(_$CoinStateSuccessImpl(
      null == coinResponse
          ? _value.coinResponse
          : coinResponse // ignore: cast_nullable_to_non_nullable
              as CoinResponse,
    ));
  }
}

/// @nodoc

class _$CoinStateSuccessImpl implements CoinStateSuccess {
  const _$CoinStateSuccessImpl(this.coinResponse);

  @override
  final CoinResponse coinResponse;

  @override
  String toString() {
    return 'CoinState.successGet(coinResponse: $coinResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoinStateSuccessImpl &&
            (identical(other.coinResponse, coinResponse) ||
                other.coinResponse == coinResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, coinResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoinStateSuccessImplCopyWith<_$CoinStateSuccessImpl> get copyWith =>
      __$$CoinStateSuccessImplCopyWithImpl<_$CoinStateSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() successDelete,
    required TResult Function(CoinResponse coinResponse) successGet,
    required TResult Function(KFailure error) error,
  }) {
    return successGet(coinResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? success,
    TResult? Function()? successDelete,
    TResult? Function(CoinResponse coinResponse)? successGet,
    TResult? Function(KFailure error)? error,
  }) {
    return successGet?.call(coinResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? success,
    TResult Function()? successDelete,
    TResult Function(CoinResponse coinResponse)? successGet,
    TResult Function(KFailure error)? error,
    required TResult orElse(),
  }) {
    if (successGet != null) {
      return successGet(coinResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CoinStateInitial value) initial,
    required TResult Function(CoinStateLoading value) loading,
    required TResult Function(AddCoinStateSuccess value) success,
    required TResult Function(DeleteCoinStateSuccess value) successDelete,
    required TResult Function(CoinStateSuccess value) successGet,
    required TResult Function(CoinStateError value) error,
  }) {
    return successGet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoinStateInitial value)? initial,
    TResult? Function(CoinStateLoading value)? loading,
    TResult? Function(AddCoinStateSuccess value)? success,
    TResult? Function(DeleteCoinStateSuccess value)? successDelete,
    TResult? Function(CoinStateSuccess value)? successGet,
    TResult? Function(CoinStateError value)? error,
  }) {
    return successGet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoinStateInitial value)? initial,
    TResult Function(CoinStateLoading value)? loading,
    TResult Function(AddCoinStateSuccess value)? success,
    TResult Function(DeleteCoinStateSuccess value)? successDelete,
    TResult Function(CoinStateSuccess value)? successGet,
    TResult Function(CoinStateError value)? error,
    required TResult orElse(),
  }) {
    if (successGet != null) {
      return successGet(this);
    }
    return orElse();
  }
}

abstract class CoinStateSuccess implements CoinState {
  const factory CoinStateSuccess(final CoinResponse coinResponse) =
      _$CoinStateSuccessImpl;

  CoinResponse get coinResponse;
  @JsonKey(ignore: true)
  _$$CoinStateSuccessImplCopyWith<_$CoinStateSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CoinStateErrorImplCopyWith<$Res> {
  factory _$$CoinStateErrorImplCopyWith(_$CoinStateErrorImpl value,
          $Res Function(_$CoinStateErrorImpl) then) =
      __$$CoinStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({KFailure error});

  $KFailureCopyWith<$Res> get error;
}

/// @nodoc
class __$$CoinStateErrorImplCopyWithImpl<$Res>
    extends _$CoinStateCopyWithImpl<$Res, _$CoinStateErrorImpl>
    implements _$$CoinStateErrorImplCopyWith<$Res> {
  __$$CoinStateErrorImplCopyWithImpl(
      _$CoinStateErrorImpl _value, $Res Function(_$CoinStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$CoinStateErrorImpl(
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

class _$CoinStateErrorImpl implements CoinStateError {
  const _$CoinStateErrorImpl({required this.error});

  @override
  final KFailure error;

  @override
  String toString() {
    return 'CoinState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoinStateErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoinStateErrorImplCopyWith<_$CoinStateErrorImpl> get copyWith =>
      __$$CoinStateErrorImplCopyWithImpl<_$CoinStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() success,
    required TResult Function() successDelete,
    required TResult Function(CoinResponse coinResponse) successGet,
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
    TResult? Function()? successDelete,
    TResult? Function(CoinResponse coinResponse)? successGet,
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
    TResult Function()? successDelete,
    TResult Function(CoinResponse coinResponse)? successGet,
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
    required TResult Function(CoinStateInitial value) initial,
    required TResult Function(CoinStateLoading value) loading,
    required TResult Function(AddCoinStateSuccess value) success,
    required TResult Function(DeleteCoinStateSuccess value) successDelete,
    required TResult Function(CoinStateSuccess value) successGet,
    required TResult Function(CoinStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CoinStateInitial value)? initial,
    TResult? Function(CoinStateLoading value)? loading,
    TResult? Function(AddCoinStateSuccess value)? success,
    TResult? Function(DeleteCoinStateSuccess value)? successDelete,
    TResult? Function(CoinStateSuccess value)? successGet,
    TResult? Function(CoinStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CoinStateInitial value)? initial,
    TResult Function(CoinStateLoading value)? loading,
    TResult Function(AddCoinStateSuccess value)? success,
    TResult Function(DeleteCoinStateSuccess value)? successDelete,
    TResult Function(CoinStateSuccess value)? successGet,
    TResult Function(CoinStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CoinStateError implements CoinState {
  const factory CoinStateError({required final KFailure error}) =
      _$CoinStateErrorImpl;

  KFailure get error;
  @JsonKey(ignore: true)
  _$$CoinStateErrorImplCopyWith<_$CoinStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
