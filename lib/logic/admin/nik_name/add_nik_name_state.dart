import 'package:freezed_annotation/freezed_annotation.dart';
 import 'package:the_business_square/shared/error/failures.dart';

import '../../../data/models/admin_featuer/nik_name/Nick_name_response.dart';
 part 'add_nik_name_state.freezed.dart';

@freezed
abstract class AddNikNameState with _$AddNikNameState{
  const factory AddNikNameState.initial() = AddNikNameStateInitial;
  const factory AddNikNameState.loading() = AddNikNameStateLoading;
  const factory AddNikNameState.success(  ) = AddNikNameStateSuccess;
  const factory AddNikNameState.successDelete(  ) = DeleteNikNameStateSuccess;
  const factory AddNikNameState.successGet( NickNameResponse nickNameResponse) = GetNikNameStateSuccess;
  const factory AddNikNameState.error({required KFailure error}) = AddNikNameStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs