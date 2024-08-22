import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_business_square/shared/error/failures.dart';

import '../../../data/models/auth/User_model.dart';
part 'edit_profile_state.freezed.dart';

@freezed
abstract class EditProfileState with _$EditProfileState{
  const factory EditProfileState.loading() = EditProfileStateLoading;
  const factory EditProfileState.initial() = EditProfileStateInitial;
  const factory EditProfileState.success(UserModel userModel ) = EditProfileStateSuccess;
  const factory EditProfileState.error({required KFailure error}) = EditProfileStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs