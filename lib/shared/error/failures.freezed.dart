// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$KFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() server,
    required TResult Function(String e) error401,
    required TResult Function(String e) error403,
    required TResult Function(RequestOptions? option) offline,
    required TResult Function() userNotFound,
    required TResult Function() locationDenied,
    required TResult Function() locationDisabled,
    required TResult Function() locationDeniedPermanently,
    required TResult Function() someThingWrongPleaseTryAgain,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? server,
    TResult? Function(String e)? error401,
    TResult? Function(String e)? error403,
    TResult? Function(RequestOptions? option)? offline,
    TResult? Function()? userNotFound,
    TResult? Function()? locationDenied,
    TResult? Function()? locationDisabled,
    TResult? Function()? locationDeniedPermanently,
    TResult? Function()? someThingWrongPleaseTryAgain,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? server,
    TResult Function(String e)? error401,
    TResult Function(String e)? error403,
    TResult Function(RequestOptions? option)? offline,
    TResult Function()? userNotFound,
    TResult Function()? locationDenied,
    TResult Function()? locationDisabled,
    TResult Function()? locationDeniedPermanently,
    TResult Function()? someThingWrongPleaseTryAgain,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KFailureError value) error,
    required TResult Function(KFailureServer value) server,
    required TResult Function(KFailureError401 value) error401,
    required TResult Function(KFailureError403 value) error403,
    required TResult Function(KFailureOffline value) offline,
    required TResult Function(KFailureUserNotFound value) userNotFound,
    required TResult Function(KFailureLocationDenied value) locationDenied,
    required TResult Function(KFailureLocationDisabled value) locationDisabled,
    required TResult Function(KFailureLocationDeniedPermanently value)
        locationDeniedPermanently,
    required TResult Function(KFailureSomeThingWrongPleaseTryAgain value)
        someThingWrongPleaseTryAgain,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KFailureError value)? error,
    TResult? Function(KFailureServer value)? server,
    TResult? Function(KFailureError401 value)? error401,
    TResult? Function(KFailureError403 value)? error403,
    TResult? Function(KFailureOffline value)? offline,
    TResult? Function(KFailureUserNotFound value)? userNotFound,
    TResult? Function(KFailureLocationDenied value)? locationDenied,
    TResult? Function(KFailureLocationDisabled value)? locationDisabled,
    TResult? Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult? Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KFailureError value)? error,
    TResult Function(KFailureServer value)? server,
    TResult Function(KFailureError401 value)? error401,
    TResult Function(KFailureError403 value)? error403,
    TResult Function(KFailureOffline value)? offline,
    TResult Function(KFailureUserNotFound value)? userNotFound,
    TResult Function(KFailureLocationDenied value)? locationDenied,
    TResult Function(KFailureLocationDisabled value)? locationDisabled,
    TResult Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KFailureCopyWith<$Res> {
  factory $KFailureCopyWith(KFailure value, $Res Function(KFailure) then) =
      _$KFailureCopyWithImpl<$Res, KFailure>;
}

/// @nodoc
class _$KFailureCopyWithImpl<$Res, $Val extends KFailure>
    implements $KFailureCopyWith<$Res> {
  _$KFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$KFailureErrorImplCopyWith<$Res> {
  factory _$$KFailureErrorImplCopyWith(
          _$KFailureErrorImpl value, $Res Function(_$KFailureErrorImpl) then) =
      __$$KFailureErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$KFailureErrorImplCopyWithImpl<$Res>
    extends _$KFailureCopyWithImpl<$Res, _$KFailureErrorImpl>
    implements _$$KFailureErrorImplCopyWith<$Res> {
  __$$KFailureErrorImplCopyWithImpl(
      _$KFailureErrorImpl _value, $Res Function(_$KFailureErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$KFailureErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$KFailureErrorImpl implements KFailureError {
  const _$KFailureErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'KFailure.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KFailureErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KFailureErrorImplCopyWith<_$KFailureErrorImpl> get copyWith =>
      __$$KFailureErrorImplCopyWithImpl<_$KFailureErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() server,
    required TResult Function(String e) error401,
    required TResult Function(String e) error403,
    required TResult Function(RequestOptions? option) offline,
    required TResult Function() userNotFound,
    required TResult Function() locationDenied,
    required TResult Function() locationDisabled,
    required TResult Function() locationDeniedPermanently,
    required TResult Function() someThingWrongPleaseTryAgain,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? server,
    TResult? Function(String e)? error401,
    TResult? Function(String e)? error403,
    TResult? Function(RequestOptions? option)? offline,
    TResult? Function()? userNotFound,
    TResult? Function()? locationDenied,
    TResult? Function()? locationDisabled,
    TResult? Function()? locationDeniedPermanently,
    TResult? Function()? someThingWrongPleaseTryAgain,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? server,
    TResult Function(String e)? error401,
    TResult Function(String e)? error403,
    TResult Function(RequestOptions? option)? offline,
    TResult Function()? userNotFound,
    TResult Function()? locationDenied,
    TResult Function()? locationDisabled,
    TResult Function()? locationDeniedPermanently,
    TResult Function()? someThingWrongPleaseTryAgain,
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
    required TResult Function(KFailureError value) error,
    required TResult Function(KFailureServer value) server,
    required TResult Function(KFailureError401 value) error401,
    required TResult Function(KFailureError403 value) error403,
    required TResult Function(KFailureOffline value) offline,
    required TResult Function(KFailureUserNotFound value) userNotFound,
    required TResult Function(KFailureLocationDenied value) locationDenied,
    required TResult Function(KFailureLocationDisabled value) locationDisabled,
    required TResult Function(KFailureLocationDeniedPermanently value)
        locationDeniedPermanently,
    required TResult Function(KFailureSomeThingWrongPleaseTryAgain value)
        someThingWrongPleaseTryAgain,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KFailureError value)? error,
    TResult? Function(KFailureServer value)? server,
    TResult? Function(KFailureError401 value)? error401,
    TResult? Function(KFailureError403 value)? error403,
    TResult? Function(KFailureOffline value)? offline,
    TResult? Function(KFailureUserNotFound value)? userNotFound,
    TResult? Function(KFailureLocationDenied value)? locationDenied,
    TResult? Function(KFailureLocationDisabled value)? locationDisabled,
    TResult? Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult? Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KFailureError value)? error,
    TResult Function(KFailureServer value)? server,
    TResult Function(KFailureError401 value)? error401,
    TResult Function(KFailureError403 value)? error403,
    TResult Function(KFailureOffline value)? offline,
    TResult Function(KFailureUserNotFound value)? userNotFound,
    TResult Function(KFailureLocationDenied value)? locationDenied,
    TResult Function(KFailureLocationDisabled value)? locationDisabled,
    TResult Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class KFailureError implements KFailure {
  const factory KFailureError(final String error) = _$KFailureErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$KFailureErrorImplCopyWith<_$KFailureErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$KFailureServerImplCopyWith<$Res> {
  factory _$$KFailureServerImplCopyWith(_$KFailureServerImpl value,
          $Res Function(_$KFailureServerImpl) then) =
      __$$KFailureServerImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$KFailureServerImplCopyWithImpl<$Res>
    extends _$KFailureCopyWithImpl<$Res, _$KFailureServerImpl>
    implements _$$KFailureServerImplCopyWith<$Res> {
  __$$KFailureServerImplCopyWithImpl(
      _$KFailureServerImpl _value, $Res Function(_$KFailureServerImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$KFailureServerImpl implements KFailureServer {
  const _$KFailureServerImpl();

  @override
  String toString() {
    return 'KFailure.server()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$KFailureServerImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() server,
    required TResult Function(String e) error401,
    required TResult Function(String e) error403,
    required TResult Function(RequestOptions? option) offline,
    required TResult Function() userNotFound,
    required TResult Function() locationDenied,
    required TResult Function() locationDisabled,
    required TResult Function() locationDeniedPermanently,
    required TResult Function() someThingWrongPleaseTryAgain,
  }) {
    return server();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? server,
    TResult? Function(String e)? error401,
    TResult? Function(String e)? error403,
    TResult? Function(RequestOptions? option)? offline,
    TResult? Function()? userNotFound,
    TResult? Function()? locationDenied,
    TResult? Function()? locationDisabled,
    TResult? Function()? locationDeniedPermanently,
    TResult? Function()? someThingWrongPleaseTryAgain,
  }) {
    return server?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? server,
    TResult Function(String e)? error401,
    TResult Function(String e)? error403,
    TResult Function(RequestOptions? option)? offline,
    TResult Function()? userNotFound,
    TResult Function()? locationDenied,
    TResult Function()? locationDisabled,
    TResult Function()? locationDeniedPermanently,
    TResult Function()? someThingWrongPleaseTryAgain,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KFailureError value) error,
    required TResult Function(KFailureServer value) server,
    required TResult Function(KFailureError401 value) error401,
    required TResult Function(KFailureError403 value) error403,
    required TResult Function(KFailureOffline value) offline,
    required TResult Function(KFailureUserNotFound value) userNotFound,
    required TResult Function(KFailureLocationDenied value) locationDenied,
    required TResult Function(KFailureLocationDisabled value) locationDisabled,
    required TResult Function(KFailureLocationDeniedPermanently value)
        locationDeniedPermanently,
    required TResult Function(KFailureSomeThingWrongPleaseTryAgain value)
        someThingWrongPleaseTryAgain,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KFailureError value)? error,
    TResult? Function(KFailureServer value)? server,
    TResult? Function(KFailureError401 value)? error401,
    TResult? Function(KFailureError403 value)? error403,
    TResult? Function(KFailureOffline value)? offline,
    TResult? Function(KFailureUserNotFound value)? userNotFound,
    TResult? Function(KFailureLocationDenied value)? locationDenied,
    TResult? Function(KFailureLocationDisabled value)? locationDisabled,
    TResult? Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult? Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KFailureError value)? error,
    TResult Function(KFailureServer value)? server,
    TResult Function(KFailureError401 value)? error401,
    TResult Function(KFailureError403 value)? error403,
    TResult Function(KFailureOffline value)? offline,
    TResult Function(KFailureUserNotFound value)? userNotFound,
    TResult Function(KFailureLocationDenied value)? locationDenied,
    TResult Function(KFailureLocationDisabled value)? locationDisabled,
    TResult Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class KFailureServer implements KFailure {
  const factory KFailureServer() = _$KFailureServerImpl;
}

/// @nodoc
abstract class _$$KFailureError401ImplCopyWith<$Res> {
  factory _$$KFailureError401ImplCopyWith(_$KFailureError401Impl value,
          $Res Function(_$KFailureError401Impl) then) =
      __$$KFailureError401ImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String e});
}

/// @nodoc
class __$$KFailureError401ImplCopyWithImpl<$Res>
    extends _$KFailureCopyWithImpl<$Res, _$KFailureError401Impl>
    implements _$$KFailureError401ImplCopyWith<$Res> {
  __$$KFailureError401ImplCopyWithImpl(_$KFailureError401Impl _value,
      $Res Function(_$KFailureError401Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
  }) {
    return _then(_$KFailureError401Impl(
      null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$KFailureError401Impl implements KFailureError401 {
  const _$KFailureError401Impl(this.e);

  @override
  final String e;

  @override
  String toString() {
    return 'KFailure.error401(e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KFailureError401Impl &&
            (identical(other.e, e) || other.e == e));
  }

  @override
  int get hashCode => Object.hash(runtimeType, e);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KFailureError401ImplCopyWith<_$KFailureError401Impl> get copyWith =>
      __$$KFailureError401ImplCopyWithImpl<_$KFailureError401Impl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() server,
    required TResult Function(String e) error401,
    required TResult Function(String e) error403,
    required TResult Function(RequestOptions? option) offline,
    required TResult Function() userNotFound,
    required TResult Function() locationDenied,
    required TResult Function() locationDisabled,
    required TResult Function() locationDeniedPermanently,
    required TResult Function() someThingWrongPleaseTryAgain,
  }) {
    return error401(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? server,
    TResult? Function(String e)? error401,
    TResult? Function(String e)? error403,
    TResult? Function(RequestOptions? option)? offline,
    TResult? Function()? userNotFound,
    TResult? Function()? locationDenied,
    TResult? Function()? locationDisabled,
    TResult? Function()? locationDeniedPermanently,
    TResult? Function()? someThingWrongPleaseTryAgain,
  }) {
    return error401?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? server,
    TResult Function(String e)? error401,
    TResult Function(String e)? error403,
    TResult Function(RequestOptions? option)? offline,
    TResult Function()? userNotFound,
    TResult Function()? locationDenied,
    TResult Function()? locationDisabled,
    TResult Function()? locationDeniedPermanently,
    TResult Function()? someThingWrongPleaseTryAgain,
    required TResult orElse(),
  }) {
    if (error401 != null) {
      return error401(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KFailureError value) error,
    required TResult Function(KFailureServer value) server,
    required TResult Function(KFailureError401 value) error401,
    required TResult Function(KFailureError403 value) error403,
    required TResult Function(KFailureOffline value) offline,
    required TResult Function(KFailureUserNotFound value) userNotFound,
    required TResult Function(KFailureLocationDenied value) locationDenied,
    required TResult Function(KFailureLocationDisabled value) locationDisabled,
    required TResult Function(KFailureLocationDeniedPermanently value)
        locationDeniedPermanently,
    required TResult Function(KFailureSomeThingWrongPleaseTryAgain value)
        someThingWrongPleaseTryAgain,
  }) {
    return error401(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KFailureError value)? error,
    TResult? Function(KFailureServer value)? server,
    TResult? Function(KFailureError401 value)? error401,
    TResult? Function(KFailureError403 value)? error403,
    TResult? Function(KFailureOffline value)? offline,
    TResult? Function(KFailureUserNotFound value)? userNotFound,
    TResult? Function(KFailureLocationDenied value)? locationDenied,
    TResult? Function(KFailureLocationDisabled value)? locationDisabled,
    TResult? Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult? Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
  }) {
    return error401?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KFailureError value)? error,
    TResult Function(KFailureServer value)? server,
    TResult Function(KFailureError401 value)? error401,
    TResult Function(KFailureError403 value)? error403,
    TResult Function(KFailureOffline value)? offline,
    TResult Function(KFailureUserNotFound value)? userNotFound,
    TResult Function(KFailureLocationDenied value)? locationDenied,
    TResult Function(KFailureLocationDisabled value)? locationDisabled,
    TResult Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
    required TResult orElse(),
  }) {
    if (error401 != null) {
      return error401(this);
    }
    return orElse();
  }
}

abstract class KFailureError401 implements KFailure {
  const factory KFailureError401(final String e) = _$KFailureError401Impl;

  String get e;
  @JsonKey(ignore: true)
  _$$KFailureError401ImplCopyWith<_$KFailureError401Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$KFailureError403ImplCopyWith<$Res> {
  factory _$$KFailureError403ImplCopyWith(_$KFailureError403Impl value,
          $Res Function(_$KFailureError403Impl) then) =
      __$$KFailureError403ImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String e});
}

/// @nodoc
class __$$KFailureError403ImplCopyWithImpl<$Res>
    extends _$KFailureCopyWithImpl<$Res, _$KFailureError403Impl>
    implements _$$KFailureError403ImplCopyWith<$Res> {
  __$$KFailureError403ImplCopyWithImpl(_$KFailureError403Impl _value,
      $Res Function(_$KFailureError403Impl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
  }) {
    return _then(_$KFailureError403Impl(
      null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$KFailureError403Impl implements KFailureError403 {
  const _$KFailureError403Impl(this.e);

  @override
  final String e;

  @override
  String toString() {
    return 'KFailure.error403(e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KFailureError403Impl &&
            (identical(other.e, e) || other.e == e));
  }

  @override
  int get hashCode => Object.hash(runtimeType, e);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KFailureError403ImplCopyWith<_$KFailureError403Impl> get copyWith =>
      __$$KFailureError403ImplCopyWithImpl<_$KFailureError403Impl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() server,
    required TResult Function(String e) error401,
    required TResult Function(String e) error403,
    required TResult Function(RequestOptions? option) offline,
    required TResult Function() userNotFound,
    required TResult Function() locationDenied,
    required TResult Function() locationDisabled,
    required TResult Function() locationDeniedPermanently,
    required TResult Function() someThingWrongPleaseTryAgain,
  }) {
    return error403(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? server,
    TResult? Function(String e)? error401,
    TResult? Function(String e)? error403,
    TResult? Function(RequestOptions? option)? offline,
    TResult? Function()? userNotFound,
    TResult? Function()? locationDenied,
    TResult? Function()? locationDisabled,
    TResult? Function()? locationDeniedPermanently,
    TResult? Function()? someThingWrongPleaseTryAgain,
  }) {
    return error403?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? server,
    TResult Function(String e)? error401,
    TResult Function(String e)? error403,
    TResult Function(RequestOptions? option)? offline,
    TResult Function()? userNotFound,
    TResult Function()? locationDenied,
    TResult Function()? locationDisabled,
    TResult Function()? locationDeniedPermanently,
    TResult Function()? someThingWrongPleaseTryAgain,
    required TResult orElse(),
  }) {
    if (error403 != null) {
      return error403(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KFailureError value) error,
    required TResult Function(KFailureServer value) server,
    required TResult Function(KFailureError401 value) error401,
    required TResult Function(KFailureError403 value) error403,
    required TResult Function(KFailureOffline value) offline,
    required TResult Function(KFailureUserNotFound value) userNotFound,
    required TResult Function(KFailureLocationDenied value) locationDenied,
    required TResult Function(KFailureLocationDisabled value) locationDisabled,
    required TResult Function(KFailureLocationDeniedPermanently value)
        locationDeniedPermanently,
    required TResult Function(KFailureSomeThingWrongPleaseTryAgain value)
        someThingWrongPleaseTryAgain,
  }) {
    return error403(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KFailureError value)? error,
    TResult? Function(KFailureServer value)? server,
    TResult? Function(KFailureError401 value)? error401,
    TResult? Function(KFailureError403 value)? error403,
    TResult? Function(KFailureOffline value)? offline,
    TResult? Function(KFailureUserNotFound value)? userNotFound,
    TResult? Function(KFailureLocationDenied value)? locationDenied,
    TResult? Function(KFailureLocationDisabled value)? locationDisabled,
    TResult? Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult? Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
  }) {
    return error403?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KFailureError value)? error,
    TResult Function(KFailureServer value)? server,
    TResult Function(KFailureError401 value)? error401,
    TResult Function(KFailureError403 value)? error403,
    TResult Function(KFailureOffline value)? offline,
    TResult Function(KFailureUserNotFound value)? userNotFound,
    TResult Function(KFailureLocationDenied value)? locationDenied,
    TResult Function(KFailureLocationDisabled value)? locationDisabled,
    TResult Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
    required TResult orElse(),
  }) {
    if (error403 != null) {
      return error403(this);
    }
    return orElse();
  }
}

abstract class KFailureError403 implements KFailure {
  const factory KFailureError403(final String e) = _$KFailureError403Impl;

  String get e;
  @JsonKey(ignore: true)
  _$$KFailureError403ImplCopyWith<_$KFailureError403Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$KFailureOfflineImplCopyWith<$Res> {
  factory _$$KFailureOfflineImplCopyWith(_$KFailureOfflineImpl value,
          $Res Function(_$KFailureOfflineImpl) then) =
      __$$KFailureOfflineImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RequestOptions? option});
}

/// @nodoc
class __$$KFailureOfflineImplCopyWithImpl<$Res>
    extends _$KFailureCopyWithImpl<$Res, _$KFailureOfflineImpl>
    implements _$$KFailureOfflineImplCopyWith<$Res> {
  __$$KFailureOfflineImplCopyWithImpl(
      _$KFailureOfflineImpl _value, $Res Function(_$KFailureOfflineImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? option = freezed,
  }) {
    return _then(_$KFailureOfflineImpl(
      option: freezed == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as RequestOptions?,
    ));
  }
}

/// @nodoc

class _$KFailureOfflineImpl implements KFailureOffline {
  const _$KFailureOfflineImpl({this.option});

  @override
  final RequestOptions? option;

  @override
  String toString() {
    return 'KFailure.offline(option: $option)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KFailureOfflineImpl &&
            (identical(other.option, option) || other.option == option));
  }

  @override
  int get hashCode => Object.hash(runtimeType, option);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KFailureOfflineImplCopyWith<_$KFailureOfflineImpl> get copyWith =>
      __$$KFailureOfflineImplCopyWithImpl<_$KFailureOfflineImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() server,
    required TResult Function(String e) error401,
    required TResult Function(String e) error403,
    required TResult Function(RequestOptions? option) offline,
    required TResult Function() userNotFound,
    required TResult Function() locationDenied,
    required TResult Function() locationDisabled,
    required TResult Function() locationDeniedPermanently,
    required TResult Function() someThingWrongPleaseTryAgain,
  }) {
    return offline(option);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? server,
    TResult? Function(String e)? error401,
    TResult? Function(String e)? error403,
    TResult? Function(RequestOptions? option)? offline,
    TResult? Function()? userNotFound,
    TResult? Function()? locationDenied,
    TResult? Function()? locationDisabled,
    TResult? Function()? locationDeniedPermanently,
    TResult? Function()? someThingWrongPleaseTryAgain,
  }) {
    return offline?.call(option);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? server,
    TResult Function(String e)? error401,
    TResult Function(String e)? error403,
    TResult Function(RequestOptions? option)? offline,
    TResult Function()? userNotFound,
    TResult Function()? locationDenied,
    TResult Function()? locationDisabled,
    TResult Function()? locationDeniedPermanently,
    TResult Function()? someThingWrongPleaseTryAgain,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline(option);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KFailureError value) error,
    required TResult Function(KFailureServer value) server,
    required TResult Function(KFailureError401 value) error401,
    required TResult Function(KFailureError403 value) error403,
    required TResult Function(KFailureOffline value) offline,
    required TResult Function(KFailureUserNotFound value) userNotFound,
    required TResult Function(KFailureLocationDenied value) locationDenied,
    required TResult Function(KFailureLocationDisabled value) locationDisabled,
    required TResult Function(KFailureLocationDeniedPermanently value)
        locationDeniedPermanently,
    required TResult Function(KFailureSomeThingWrongPleaseTryAgain value)
        someThingWrongPleaseTryAgain,
  }) {
    return offline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KFailureError value)? error,
    TResult? Function(KFailureServer value)? server,
    TResult? Function(KFailureError401 value)? error401,
    TResult? Function(KFailureError403 value)? error403,
    TResult? Function(KFailureOffline value)? offline,
    TResult? Function(KFailureUserNotFound value)? userNotFound,
    TResult? Function(KFailureLocationDenied value)? locationDenied,
    TResult? Function(KFailureLocationDisabled value)? locationDisabled,
    TResult? Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult? Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
  }) {
    return offline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KFailureError value)? error,
    TResult Function(KFailureServer value)? server,
    TResult Function(KFailureError401 value)? error401,
    TResult Function(KFailureError403 value)? error403,
    TResult Function(KFailureOffline value)? offline,
    TResult Function(KFailureUserNotFound value)? userNotFound,
    TResult Function(KFailureLocationDenied value)? locationDenied,
    TResult Function(KFailureLocationDisabled value)? locationDisabled,
    TResult Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline(this);
    }
    return orElse();
  }
}

abstract class KFailureOffline implements KFailure {
  const factory KFailureOffline({final RequestOptions? option}) =
      _$KFailureOfflineImpl;

  RequestOptions? get option;
  @JsonKey(ignore: true)
  _$$KFailureOfflineImplCopyWith<_$KFailureOfflineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$KFailureUserNotFoundImplCopyWith<$Res> {
  factory _$$KFailureUserNotFoundImplCopyWith(_$KFailureUserNotFoundImpl value,
          $Res Function(_$KFailureUserNotFoundImpl) then) =
      __$$KFailureUserNotFoundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$KFailureUserNotFoundImplCopyWithImpl<$Res>
    extends _$KFailureCopyWithImpl<$Res, _$KFailureUserNotFoundImpl>
    implements _$$KFailureUserNotFoundImplCopyWith<$Res> {
  __$$KFailureUserNotFoundImplCopyWithImpl(_$KFailureUserNotFoundImpl _value,
      $Res Function(_$KFailureUserNotFoundImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$KFailureUserNotFoundImpl implements KFailureUserNotFound {
  const _$KFailureUserNotFoundImpl();

  @override
  String toString() {
    return 'KFailure.userNotFound()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KFailureUserNotFoundImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() server,
    required TResult Function(String e) error401,
    required TResult Function(String e) error403,
    required TResult Function(RequestOptions? option) offline,
    required TResult Function() userNotFound,
    required TResult Function() locationDenied,
    required TResult Function() locationDisabled,
    required TResult Function() locationDeniedPermanently,
    required TResult Function() someThingWrongPleaseTryAgain,
  }) {
    return userNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? server,
    TResult? Function(String e)? error401,
    TResult? Function(String e)? error403,
    TResult? Function(RequestOptions? option)? offline,
    TResult? Function()? userNotFound,
    TResult? Function()? locationDenied,
    TResult? Function()? locationDisabled,
    TResult? Function()? locationDeniedPermanently,
    TResult? Function()? someThingWrongPleaseTryAgain,
  }) {
    return userNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? server,
    TResult Function(String e)? error401,
    TResult Function(String e)? error403,
    TResult Function(RequestOptions? option)? offline,
    TResult Function()? userNotFound,
    TResult Function()? locationDenied,
    TResult Function()? locationDisabled,
    TResult Function()? locationDeniedPermanently,
    TResult Function()? someThingWrongPleaseTryAgain,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KFailureError value) error,
    required TResult Function(KFailureServer value) server,
    required TResult Function(KFailureError401 value) error401,
    required TResult Function(KFailureError403 value) error403,
    required TResult Function(KFailureOffline value) offline,
    required TResult Function(KFailureUserNotFound value) userNotFound,
    required TResult Function(KFailureLocationDenied value) locationDenied,
    required TResult Function(KFailureLocationDisabled value) locationDisabled,
    required TResult Function(KFailureLocationDeniedPermanently value)
        locationDeniedPermanently,
    required TResult Function(KFailureSomeThingWrongPleaseTryAgain value)
        someThingWrongPleaseTryAgain,
  }) {
    return userNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KFailureError value)? error,
    TResult? Function(KFailureServer value)? server,
    TResult? Function(KFailureError401 value)? error401,
    TResult? Function(KFailureError403 value)? error403,
    TResult? Function(KFailureOffline value)? offline,
    TResult? Function(KFailureUserNotFound value)? userNotFound,
    TResult? Function(KFailureLocationDenied value)? locationDenied,
    TResult? Function(KFailureLocationDisabled value)? locationDisabled,
    TResult? Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult? Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
  }) {
    return userNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KFailureError value)? error,
    TResult Function(KFailureServer value)? server,
    TResult Function(KFailureError401 value)? error401,
    TResult Function(KFailureError403 value)? error403,
    TResult Function(KFailureOffline value)? offline,
    TResult Function(KFailureUserNotFound value)? userNotFound,
    TResult Function(KFailureLocationDenied value)? locationDenied,
    TResult Function(KFailureLocationDisabled value)? locationDisabled,
    TResult Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
    required TResult orElse(),
  }) {
    if (userNotFound != null) {
      return userNotFound(this);
    }
    return orElse();
  }
}

abstract class KFailureUserNotFound implements KFailure {
  const factory KFailureUserNotFound() = _$KFailureUserNotFoundImpl;
}

/// @nodoc
abstract class _$$KFailureLocationDeniedImplCopyWith<$Res> {
  factory _$$KFailureLocationDeniedImplCopyWith(
          _$KFailureLocationDeniedImpl value,
          $Res Function(_$KFailureLocationDeniedImpl) then) =
      __$$KFailureLocationDeniedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$KFailureLocationDeniedImplCopyWithImpl<$Res>
    extends _$KFailureCopyWithImpl<$Res, _$KFailureLocationDeniedImpl>
    implements _$$KFailureLocationDeniedImplCopyWith<$Res> {
  __$$KFailureLocationDeniedImplCopyWithImpl(
      _$KFailureLocationDeniedImpl _value,
      $Res Function(_$KFailureLocationDeniedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$KFailureLocationDeniedImpl implements KFailureLocationDenied {
  const _$KFailureLocationDeniedImpl();

  @override
  String toString() {
    return 'KFailure.locationDenied()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KFailureLocationDeniedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() server,
    required TResult Function(String e) error401,
    required TResult Function(String e) error403,
    required TResult Function(RequestOptions? option) offline,
    required TResult Function() userNotFound,
    required TResult Function() locationDenied,
    required TResult Function() locationDisabled,
    required TResult Function() locationDeniedPermanently,
    required TResult Function() someThingWrongPleaseTryAgain,
  }) {
    return locationDenied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? server,
    TResult? Function(String e)? error401,
    TResult? Function(String e)? error403,
    TResult? Function(RequestOptions? option)? offline,
    TResult? Function()? userNotFound,
    TResult? Function()? locationDenied,
    TResult? Function()? locationDisabled,
    TResult? Function()? locationDeniedPermanently,
    TResult? Function()? someThingWrongPleaseTryAgain,
  }) {
    return locationDenied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? server,
    TResult Function(String e)? error401,
    TResult Function(String e)? error403,
    TResult Function(RequestOptions? option)? offline,
    TResult Function()? userNotFound,
    TResult Function()? locationDenied,
    TResult Function()? locationDisabled,
    TResult Function()? locationDeniedPermanently,
    TResult Function()? someThingWrongPleaseTryAgain,
    required TResult orElse(),
  }) {
    if (locationDenied != null) {
      return locationDenied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KFailureError value) error,
    required TResult Function(KFailureServer value) server,
    required TResult Function(KFailureError401 value) error401,
    required TResult Function(KFailureError403 value) error403,
    required TResult Function(KFailureOffline value) offline,
    required TResult Function(KFailureUserNotFound value) userNotFound,
    required TResult Function(KFailureLocationDenied value) locationDenied,
    required TResult Function(KFailureLocationDisabled value) locationDisabled,
    required TResult Function(KFailureLocationDeniedPermanently value)
        locationDeniedPermanently,
    required TResult Function(KFailureSomeThingWrongPleaseTryAgain value)
        someThingWrongPleaseTryAgain,
  }) {
    return locationDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KFailureError value)? error,
    TResult? Function(KFailureServer value)? server,
    TResult? Function(KFailureError401 value)? error401,
    TResult? Function(KFailureError403 value)? error403,
    TResult? Function(KFailureOffline value)? offline,
    TResult? Function(KFailureUserNotFound value)? userNotFound,
    TResult? Function(KFailureLocationDenied value)? locationDenied,
    TResult? Function(KFailureLocationDisabled value)? locationDisabled,
    TResult? Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult? Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
  }) {
    return locationDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KFailureError value)? error,
    TResult Function(KFailureServer value)? server,
    TResult Function(KFailureError401 value)? error401,
    TResult Function(KFailureError403 value)? error403,
    TResult Function(KFailureOffline value)? offline,
    TResult Function(KFailureUserNotFound value)? userNotFound,
    TResult Function(KFailureLocationDenied value)? locationDenied,
    TResult Function(KFailureLocationDisabled value)? locationDisabled,
    TResult Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
    required TResult orElse(),
  }) {
    if (locationDenied != null) {
      return locationDenied(this);
    }
    return orElse();
  }
}

abstract class KFailureLocationDenied implements KFailure {
  const factory KFailureLocationDenied() = _$KFailureLocationDeniedImpl;
}

/// @nodoc
abstract class _$$KFailureLocationDisabledImplCopyWith<$Res> {
  factory _$$KFailureLocationDisabledImplCopyWith(
          _$KFailureLocationDisabledImpl value,
          $Res Function(_$KFailureLocationDisabledImpl) then) =
      __$$KFailureLocationDisabledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$KFailureLocationDisabledImplCopyWithImpl<$Res>
    extends _$KFailureCopyWithImpl<$Res, _$KFailureLocationDisabledImpl>
    implements _$$KFailureLocationDisabledImplCopyWith<$Res> {
  __$$KFailureLocationDisabledImplCopyWithImpl(
      _$KFailureLocationDisabledImpl _value,
      $Res Function(_$KFailureLocationDisabledImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$KFailureLocationDisabledImpl implements KFailureLocationDisabled {
  const _$KFailureLocationDisabledImpl();

  @override
  String toString() {
    return 'KFailure.locationDisabled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KFailureLocationDisabledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() server,
    required TResult Function(String e) error401,
    required TResult Function(String e) error403,
    required TResult Function(RequestOptions? option) offline,
    required TResult Function() userNotFound,
    required TResult Function() locationDenied,
    required TResult Function() locationDisabled,
    required TResult Function() locationDeniedPermanently,
    required TResult Function() someThingWrongPleaseTryAgain,
  }) {
    return locationDisabled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? server,
    TResult? Function(String e)? error401,
    TResult? Function(String e)? error403,
    TResult? Function(RequestOptions? option)? offline,
    TResult? Function()? userNotFound,
    TResult? Function()? locationDenied,
    TResult? Function()? locationDisabled,
    TResult? Function()? locationDeniedPermanently,
    TResult? Function()? someThingWrongPleaseTryAgain,
  }) {
    return locationDisabled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? server,
    TResult Function(String e)? error401,
    TResult Function(String e)? error403,
    TResult Function(RequestOptions? option)? offline,
    TResult Function()? userNotFound,
    TResult Function()? locationDenied,
    TResult Function()? locationDisabled,
    TResult Function()? locationDeniedPermanently,
    TResult Function()? someThingWrongPleaseTryAgain,
    required TResult orElse(),
  }) {
    if (locationDisabled != null) {
      return locationDisabled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KFailureError value) error,
    required TResult Function(KFailureServer value) server,
    required TResult Function(KFailureError401 value) error401,
    required TResult Function(KFailureError403 value) error403,
    required TResult Function(KFailureOffline value) offline,
    required TResult Function(KFailureUserNotFound value) userNotFound,
    required TResult Function(KFailureLocationDenied value) locationDenied,
    required TResult Function(KFailureLocationDisabled value) locationDisabled,
    required TResult Function(KFailureLocationDeniedPermanently value)
        locationDeniedPermanently,
    required TResult Function(KFailureSomeThingWrongPleaseTryAgain value)
        someThingWrongPleaseTryAgain,
  }) {
    return locationDisabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KFailureError value)? error,
    TResult? Function(KFailureServer value)? server,
    TResult? Function(KFailureError401 value)? error401,
    TResult? Function(KFailureError403 value)? error403,
    TResult? Function(KFailureOffline value)? offline,
    TResult? Function(KFailureUserNotFound value)? userNotFound,
    TResult? Function(KFailureLocationDenied value)? locationDenied,
    TResult? Function(KFailureLocationDisabled value)? locationDisabled,
    TResult? Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult? Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
  }) {
    return locationDisabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KFailureError value)? error,
    TResult Function(KFailureServer value)? server,
    TResult Function(KFailureError401 value)? error401,
    TResult Function(KFailureError403 value)? error403,
    TResult Function(KFailureOffline value)? offline,
    TResult Function(KFailureUserNotFound value)? userNotFound,
    TResult Function(KFailureLocationDenied value)? locationDenied,
    TResult Function(KFailureLocationDisabled value)? locationDisabled,
    TResult Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
    required TResult orElse(),
  }) {
    if (locationDisabled != null) {
      return locationDisabled(this);
    }
    return orElse();
  }
}

abstract class KFailureLocationDisabled implements KFailure {
  const factory KFailureLocationDisabled() = _$KFailureLocationDisabledImpl;
}

/// @nodoc
abstract class _$$KFailureLocationDeniedPermanentlyImplCopyWith<$Res> {
  factory _$$KFailureLocationDeniedPermanentlyImplCopyWith(
          _$KFailureLocationDeniedPermanentlyImpl value,
          $Res Function(_$KFailureLocationDeniedPermanentlyImpl) then) =
      __$$KFailureLocationDeniedPermanentlyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$KFailureLocationDeniedPermanentlyImplCopyWithImpl<$Res>
    extends _$KFailureCopyWithImpl<$Res,
        _$KFailureLocationDeniedPermanentlyImpl>
    implements _$$KFailureLocationDeniedPermanentlyImplCopyWith<$Res> {
  __$$KFailureLocationDeniedPermanentlyImplCopyWithImpl(
      _$KFailureLocationDeniedPermanentlyImpl _value,
      $Res Function(_$KFailureLocationDeniedPermanentlyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$KFailureLocationDeniedPermanentlyImpl
    implements KFailureLocationDeniedPermanently {
  const _$KFailureLocationDeniedPermanentlyImpl();

  @override
  String toString() {
    return 'KFailure.locationDeniedPermanently()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KFailureLocationDeniedPermanentlyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() server,
    required TResult Function(String e) error401,
    required TResult Function(String e) error403,
    required TResult Function(RequestOptions? option) offline,
    required TResult Function() userNotFound,
    required TResult Function() locationDenied,
    required TResult Function() locationDisabled,
    required TResult Function() locationDeniedPermanently,
    required TResult Function() someThingWrongPleaseTryAgain,
  }) {
    return locationDeniedPermanently();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? server,
    TResult? Function(String e)? error401,
    TResult? Function(String e)? error403,
    TResult? Function(RequestOptions? option)? offline,
    TResult? Function()? userNotFound,
    TResult? Function()? locationDenied,
    TResult? Function()? locationDisabled,
    TResult? Function()? locationDeniedPermanently,
    TResult? Function()? someThingWrongPleaseTryAgain,
  }) {
    return locationDeniedPermanently?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? server,
    TResult Function(String e)? error401,
    TResult Function(String e)? error403,
    TResult Function(RequestOptions? option)? offline,
    TResult Function()? userNotFound,
    TResult Function()? locationDenied,
    TResult Function()? locationDisabled,
    TResult Function()? locationDeniedPermanently,
    TResult Function()? someThingWrongPleaseTryAgain,
    required TResult orElse(),
  }) {
    if (locationDeniedPermanently != null) {
      return locationDeniedPermanently();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KFailureError value) error,
    required TResult Function(KFailureServer value) server,
    required TResult Function(KFailureError401 value) error401,
    required TResult Function(KFailureError403 value) error403,
    required TResult Function(KFailureOffline value) offline,
    required TResult Function(KFailureUserNotFound value) userNotFound,
    required TResult Function(KFailureLocationDenied value) locationDenied,
    required TResult Function(KFailureLocationDisabled value) locationDisabled,
    required TResult Function(KFailureLocationDeniedPermanently value)
        locationDeniedPermanently,
    required TResult Function(KFailureSomeThingWrongPleaseTryAgain value)
        someThingWrongPleaseTryAgain,
  }) {
    return locationDeniedPermanently(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KFailureError value)? error,
    TResult? Function(KFailureServer value)? server,
    TResult? Function(KFailureError401 value)? error401,
    TResult? Function(KFailureError403 value)? error403,
    TResult? Function(KFailureOffline value)? offline,
    TResult? Function(KFailureUserNotFound value)? userNotFound,
    TResult? Function(KFailureLocationDenied value)? locationDenied,
    TResult? Function(KFailureLocationDisabled value)? locationDisabled,
    TResult? Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult? Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
  }) {
    return locationDeniedPermanently?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KFailureError value)? error,
    TResult Function(KFailureServer value)? server,
    TResult Function(KFailureError401 value)? error401,
    TResult Function(KFailureError403 value)? error403,
    TResult Function(KFailureOffline value)? offline,
    TResult Function(KFailureUserNotFound value)? userNotFound,
    TResult Function(KFailureLocationDenied value)? locationDenied,
    TResult Function(KFailureLocationDisabled value)? locationDisabled,
    TResult Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
    required TResult orElse(),
  }) {
    if (locationDeniedPermanently != null) {
      return locationDeniedPermanently(this);
    }
    return orElse();
  }
}

abstract class KFailureLocationDeniedPermanently implements KFailure {
  const factory KFailureLocationDeniedPermanently() =
      _$KFailureLocationDeniedPermanentlyImpl;
}

/// @nodoc
abstract class _$$KFailureSomeThingWrongPleaseTryAgainImplCopyWith<$Res> {
  factory _$$KFailureSomeThingWrongPleaseTryAgainImplCopyWith(
          _$KFailureSomeThingWrongPleaseTryAgainImpl value,
          $Res Function(_$KFailureSomeThingWrongPleaseTryAgainImpl) then) =
      __$$KFailureSomeThingWrongPleaseTryAgainImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$KFailureSomeThingWrongPleaseTryAgainImplCopyWithImpl<$Res>
    extends _$KFailureCopyWithImpl<$Res,
        _$KFailureSomeThingWrongPleaseTryAgainImpl>
    implements _$$KFailureSomeThingWrongPleaseTryAgainImplCopyWith<$Res> {
  __$$KFailureSomeThingWrongPleaseTryAgainImplCopyWithImpl(
      _$KFailureSomeThingWrongPleaseTryAgainImpl _value,
      $Res Function(_$KFailureSomeThingWrongPleaseTryAgainImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$KFailureSomeThingWrongPleaseTryAgainImpl
    implements KFailureSomeThingWrongPleaseTryAgain {
  const _$KFailureSomeThingWrongPleaseTryAgainImpl();

  @override
  String toString() {
    return 'KFailure.someThingWrongPleaseTryAgain()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KFailureSomeThingWrongPleaseTryAgainImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String error) error,
    required TResult Function() server,
    required TResult Function(String e) error401,
    required TResult Function(String e) error403,
    required TResult Function(RequestOptions? option) offline,
    required TResult Function() userNotFound,
    required TResult Function() locationDenied,
    required TResult Function() locationDisabled,
    required TResult Function() locationDeniedPermanently,
    required TResult Function() someThingWrongPleaseTryAgain,
  }) {
    return someThingWrongPleaseTryAgain();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String error)? error,
    TResult? Function()? server,
    TResult? Function(String e)? error401,
    TResult? Function(String e)? error403,
    TResult? Function(RequestOptions? option)? offline,
    TResult? Function()? userNotFound,
    TResult? Function()? locationDenied,
    TResult? Function()? locationDisabled,
    TResult? Function()? locationDeniedPermanently,
    TResult? Function()? someThingWrongPleaseTryAgain,
  }) {
    return someThingWrongPleaseTryAgain?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String error)? error,
    TResult Function()? server,
    TResult Function(String e)? error401,
    TResult Function(String e)? error403,
    TResult Function(RequestOptions? option)? offline,
    TResult Function()? userNotFound,
    TResult Function()? locationDenied,
    TResult Function()? locationDisabled,
    TResult Function()? locationDeniedPermanently,
    TResult Function()? someThingWrongPleaseTryAgain,
    required TResult orElse(),
  }) {
    if (someThingWrongPleaseTryAgain != null) {
      return someThingWrongPleaseTryAgain();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KFailureError value) error,
    required TResult Function(KFailureServer value) server,
    required TResult Function(KFailureError401 value) error401,
    required TResult Function(KFailureError403 value) error403,
    required TResult Function(KFailureOffline value) offline,
    required TResult Function(KFailureUserNotFound value) userNotFound,
    required TResult Function(KFailureLocationDenied value) locationDenied,
    required TResult Function(KFailureLocationDisabled value) locationDisabled,
    required TResult Function(KFailureLocationDeniedPermanently value)
        locationDeniedPermanently,
    required TResult Function(KFailureSomeThingWrongPleaseTryAgain value)
        someThingWrongPleaseTryAgain,
  }) {
    return someThingWrongPleaseTryAgain(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KFailureError value)? error,
    TResult? Function(KFailureServer value)? server,
    TResult? Function(KFailureError401 value)? error401,
    TResult? Function(KFailureError403 value)? error403,
    TResult? Function(KFailureOffline value)? offline,
    TResult? Function(KFailureUserNotFound value)? userNotFound,
    TResult? Function(KFailureLocationDenied value)? locationDenied,
    TResult? Function(KFailureLocationDisabled value)? locationDisabled,
    TResult? Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult? Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
  }) {
    return someThingWrongPleaseTryAgain?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KFailureError value)? error,
    TResult Function(KFailureServer value)? server,
    TResult Function(KFailureError401 value)? error401,
    TResult Function(KFailureError403 value)? error403,
    TResult Function(KFailureOffline value)? offline,
    TResult Function(KFailureUserNotFound value)? userNotFound,
    TResult Function(KFailureLocationDenied value)? locationDenied,
    TResult Function(KFailureLocationDisabled value)? locationDisabled,
    TResult Function(KFailureLocationDeniedPermanently value)?
        locationDeniedPermanently,
    TResult Function(KFailureSomeThingWrongPleaseTryAgain value)?
        someThingWrongPleaseTryAgain,
    required TResult orElse(),
  }) {
    if (someThingWrongPleaseTryAgain != null) {
      return someThingWrongPleaseTryAgain(this);
    }
    return orElse();
  }
}

abstract class KFailureSomeThingWrongPleaseTryAgain implements KFailure {
  const factory KFailureSomeThingWrongPleaseTryAgain() =
      _$KFailureSomeThingWrongPleaseTryAgainImpl;
}
