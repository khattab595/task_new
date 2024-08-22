import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_business_square/data/models/auth/User_model.dart';

import '../../../data/models/auth/User_update_nikname_company_model.dart';


part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = ProfileStateInitial;
  const factory ProfileState.loading() = ProfileStateLoading;
  const factory ProfileState.successEditDetails(UserUpdateNickNameCompanyModel userModel) = ChangeDetailsProfileStateSuccess;
  const factory ProfileState.success(UserModel userModel) = ProfileStateSuccess;
  const factory ProfileState.error({required String error}) = ProfileStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs