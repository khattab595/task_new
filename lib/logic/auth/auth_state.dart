// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';


import '../../data/models/auth/User_model.dart';
part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthStateInitial;
  const factory AuthState.loading() = AuthStateLoading;
  const factory AuthState.success(UserModel loginModel) = AuthStateSuccess;
  const factory AuthState.error({required String error}) = AuthStateError;

  //------------  register
  const factory AuthState.loadingRegister() = RegisterStateLoading;
  const factory AuthState.successRegister(UserModel registerModel) = RegisterStateSuccess;
  const factory AuthState.errorRegister({required String error}) = RegisterStateError;

  //--------------   gender state
  const factory AuthState.genderChange() = GenderState;
}
// flutter pub run build_runner watch --delete-conflicting-outputs