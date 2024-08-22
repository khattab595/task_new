// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CategoryModel categoryModel) success,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CategoryModel categoryModel)? success,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CategoryModel categoryModel)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryStateInitial value) initial,
    required TResult Function(CategoryStateLoading value) loading,
    required TResult Function(CategoryStateSuccess value) success,
    required TResult Function(CategoryStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryStateInitial value)? initial,
    TResult? Function(CategoryStateLoading value)? loading,
    TResult? Function(CategoryStateSuccess value)? success,
    TResult? Function(CategoryStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryStateInitial value)? initial,
    TResult Function(CategoryStateLoading value)? loading,
    TResult Function(CategoryStateSuccess value)? success,
    TResult Function(CategoryStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryStateCopyWith<$Res> {
  factory $CategoryStateCopyWith(
          CategoryState value, $Res Function(CategoryState) then) =
      _$CategoryStateCopyWithImpl<$Res, CategoryState>;
}

/// @nodoc
class _$CategoryStateCopyWithImpl<$Res, $Val extends CategoryState>
    implements $CategoryStateCopyWith<$Res> {
  _$CategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CategoryStateInitialImplCopyWith<$Res> {
  factory _$$CategoryStateInitialImplCopyWith(_$CategoryStateInitialImpl value,
          $Res Function(_$CategoryStateInitialImpl) then) =
      __$$CategoryStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoryStateInitialImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoryStateInitialImpl>
    implements _$$CategoryStateInitialImplCopyWith<$Res> {
  __$$CategoryStateInitialImplCopyWithImpl(_$CategoryStateInitialImpl _value,
      $Res Function(_$CategoryStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CategoryStateInitialImpl
    with DiagnosticableTreeMixin
    implements CategoryStateInitial {
  const _$CategoryStateInitialImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CategoryState.initial'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CategoryModel categoryModel) success,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CategoryModel categoryModel)? success,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CategoryModel categoryModel)? success,
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
    required TResult Function(CategoryStateInitial value) initial,
    required TResult Function(CategoryStateLoading value) loading,
    required TResult Function(CategoryStateSuccess value) success,
    required TResult Function(CategoryStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryStateInitial value)? initial,
    TResult? Function(CategoryStateLoading value)? loading,
    TResult? Function(CategoryStateSuccess value)? success,
    TResult? Function(CategoryStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryStateInitial value)? initial,
    TResult Function(CategoryStateLoading value)? loading,
    TResult Function(CategoryStateSuccess value)? success,
    TResult Function(CategoryStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class CategoryStateInitial implements CategoryState {
  const factory CategoryStateInitial() = _$CategoryStateInitialImpl;
}

/// @nodoc
abstract class _$$CategoryStateLoadingImplCopyWith<$Res> {
  factory _$$CategoryStateLoadingImplCopyWith(_$CategoryStateLoadingImpl value,
          $Res Function(_$CategoryStateLoadingImpl) then) =
      __$$CategoryStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CategoryStateLoadingImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoryStateLoadingImpl>
    implements _$$CategoryStateLoadingImplCopyWith<$Res> {
  __$$CategoryStateLoadingImplCopyWithImpl(_$CategoryStateLoadingImpl _value,
      $Res Function(_$CategoryStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CategoryStateLoadingImpl
    with DiagnosticableTreeMixin
    implements CategoryStateLoading {
  const _$CategoryStateLoadingImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'CategoryState.loading'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CategoryModel categoryModel) success,
    required TResult Function(String error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CategoryModel categoryModel)? success,
    TResult? Function(String error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CategoryModel categoryModel)? success,
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
    required TResult Function(CategoryStateInitial value) initial,
    required TResult Function(CategoryStateLoading value) loading,
    required TResult Function(CategoryStateSuccess value) success,
    required TResult Function(CategoryStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryStateInitial value)? initial,
    TResult? Function(CategoryStateLoading value)? loading,
    TResult? Function(CategoryStateSuccess value)? success,
    TResult? Function(CategoryStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryStateInitial value)? initial,
    TResult Function(CategoryStateLoading value)? loading,
    TResult Function(CategoryStateSuccess value)? success,
    TResult Function(CategoryStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CategoryStateLoading implements CategoryState {
  const factory CategoryStateLoading() = _$CategoryStateLoadingImpl;
}

/// @nodoc
abstract class _$$CategoryStateSuccessImplCopyWith<$Res> {
  factory _$$CategoryStateSuccessImplCopyWith(_$CategoryStateSuccessImpl value,
          $Res Function(_$CategoryStateSuccessImpl) then) =
      __$$CategoryStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CategoryModel categoryModel});
}

/// @nodoc
class __$$CategoryStateSuccessImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoryStateSuccessImpl>
    implements _$$CategoryStateSuccessImplCopyWith<$Res> {
  __$$CategoryStateSuccessImplCopyWithImpl(_$CategoryStateSuccessImpl _value,
      $Res Function(_$CategoryStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryModel = null,
  }) {
    return _then(_$CategoryStateSuccessImpl(
      null == categoryModel
          ? _value.categoryModel
          : categoryModel // ignore: cast_nullable_to_non_nullable
              as CategoryModel,
    ));
  }
}

/// @nodoc

class _$CategoryStateSuccessImpl
    with DiagnosticableTreeMixin
    implements CategoryStateSuccess {
  const _$CategoryStateSuccessImpl(this.categoryModel);

  @override
  final CategoryModel categoryModel;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryState.success(categoryModel: $categoryModel)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryState.success'))
      ..add(DiagnosticsProperty('categoryModel', categoryModel));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryStateSuccessImpl &&
            (identical(other.categoryModel, categoryModel) ||
                other.categoryModel == categoryModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryStateSuccessImplCopyWith<_$CategoryStateSuccessImpl>
      get copyWith =>
          __$$CategoryStateSuccessImplCopyWithImpl<_$CategoryStateSuccessImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CategoryModel categoryModel) success,
    required TResult Function(String error) error,
  }) {
    return success(categoryModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CategoryModel categoryModel)? success,
    TResult? Function(String error)? error,
  }) {
    return success?.call(categoryModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CategoryModel categoryModel)? success,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(categoryModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CategoryStateInitial value) initial,
    required TResult Function(CategoryStateLoading value) loading,
    required TResult Function(CategoryStateSuccess value) success,
    required TResult Function(CategoryStateError value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryStateInitial value)? initial,
    TResult? Function(CategoryStateLoading value)? loading,
    TResult? Function(CategoryStateSuccess value)? success,
    TResult? Function(CategoryStateError value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryStateInitial value)? initial,
    TResult Function(CategoryStateLoading value)? loading,
    TResult Function(CategoryStateSuccess value)? success,
    TResult Function(CategoryStateError value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class CategoryStateSuccess implements CategoryState {
  const factory CategoryStateSuccess(final CategoryModel categoryModel) =
      _$CategoryStateSuccessImpl;

  CategoryModel get categoryModel;
  @JsonKey(ignore: true)
  _$$CategoryStateSuccessImplCopyWith<_$CategoryStateSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CategoryStateErrorImplCopyWith<$Res> {
  factory _$$CategoryStateErrorImplCopyWith(_$CategoryStateErrorImpl value,
          $Res Function(_$CategoryStateErrorImpl) then) =
      __$$CategoryStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$CategoryStateErrorImplCopyWithImpl<$Res>
    extends _$CategoryStateCopyWithImpl<$Res, _$CategoryStateErrorImpl>
    implements _$$CategoryStateErrorImplCopyWith<$Res> {
  __$$CategoryStateErrorImplCopyWithImpl(_$CategoryStateErrorImpl _value,
      $Res Function(_$CategoryStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$CategoryStateErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CategoryStateErrorImpl
    with DiagnosticableTreeMixin
    implements CategoryStateError {
  const _$CategoryStateErrorImpl({required this.error});

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CategoryState.error(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CategoryState.error'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryStateErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryStateErrorImplCopyWith<_$CategoryStateErrorImpl> get copyWith =>
      __$$CategoryStateErrorImplCopyWithImpl<_$CategoryStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CategoryModel categoryModel) success,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CategoryModel categoryModel)? success,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CategoryModel categoryModel)? success,
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
    required TResult Function(CategoryStateInitial value) initial,
    required TResult Function(CategoryStateLoading value) loading,
    required TResult Function(CategoryStateSuccess value) success,
    required TResult Function(CategoryStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CategoryStateInitial value)? initial,
    TResult? Function(CategoryStateLoading value)? loading,
    TResult? Function(CategoryStateSuccess value)? success,
    TResult? Function(CategoryStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CategoryStateInitial value)? initial,
    TResult Function(CategoryStateLoading value)? loading,
    TResult Function(CategoryStateSuccess value)? success,
    TResult Function(CategoryStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CategoryStateError implements CategoryState {
  const factory CategoryStateError({required final String error}) =
      _$CategoryStateErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$CategoryStateErrorImplCopyWith<_$CategoryStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
