import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_business_square/shared/error/failures.dart';
 part 'logout_state.freezed.dart';

@freezed
abstract class LogOutState with _$LogOutState{
  const factory LogOutState.initial() = LogOutStateInitial;
  const factory LogOutState.loading() = LogOutStateLoading;
  const factory LogOutState.success( ) = LogOutStateSuccess;
  const factory LogOutState.error({required KFailure error}) = LogOutStateError;
}
