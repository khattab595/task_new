// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/category/Category_model.dart';
part 'category_state.freezed.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = CategoryStateInitial;
  const factory CategoryState.loading() = CategoryStateLoading;
  const factory CategoryState.success(CategoryModel categoryModel) = CategoryStateSuccess;
  const factory CategoryState.error({required String error}) = CategoryStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs