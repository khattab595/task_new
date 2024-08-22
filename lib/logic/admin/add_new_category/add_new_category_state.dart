import 'package:freezed_annotation/freezed_annotation.dart';
 import 'package:the_business_square/shared/error/failures.dart';

import '../../../data/models/category/Add_category_response.dart';
part 'add_new_category_state.freezed.dart';

@freezed
abstract class AddNewCategoryState with _$AddNewCategoryState{
  const factory AddNewCategoryState.initial() = AddNewCategoryStateInitial;
  const factory AddNewCategoryState.loading() = AddNewCategoryStateLoading;
  const factory AddNewCategoryState.success( AddCategoryResponse addCategoryResponse) = AddNewCategoryStateSuccess;
  const factory AddNewCategoryState.error({required KFailure error}) = AddNewCategoryStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs