import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_business_square/data/models/auth/User_model.dart';


part 'change_status_profile_state.freezed.dart';

@freezed
class ChangeStatusProfileState with _$ChangeStatusProfileState {
  const factory ChangeStatusProfileState.initial() = ChangeStatusProfileInitial;
  const factory ChangeStatusProfileState.loading() = ChangeStatusProfileStateLoading;
  const factory ChangeStatusProfileState.success(UserModel userModel) = ChangeStatusProfileStateSuccess;
  const factory ChangeStatusProfileState.error({required String error}) = ChangeStatusProfileStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs