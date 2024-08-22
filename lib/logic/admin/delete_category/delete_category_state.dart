import 'package:freezed_annotation/freezed_annotation.dart';
 import 'package:the_business_square/shared/error/failures.dart';


part 'delete_category_state.freezed.dart';

@freezed
abstract class DeleteCategoryState with _$DeleteCategoryState{
  const factory DeleteCategoryState.initial() = DeleteCategoryStateInitial;
  const factory DeleteCategoryState.loading() = DeleteCategoryStateLoading;
  const factory DeleteCategoryState.success(  ) = DeleteCategoryStateSuccess;
  const factory DeleteCategoryState.error({required KFailure error}) = DeleteCategoryStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs