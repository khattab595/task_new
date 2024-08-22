// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/auth/forgetPassword/ForgetPasswordResponse.dart';
part 'forget_password_state.freezed.dart';

@freezed
class ForgetPasswordState with _$ForgetPasswordState {
  const factory ForgetPasswordState.initial() = ForgetPasswordStateInitial;
  const factory ForgetPasswordState.loading() = ForgetPasswordStateLoading;
  const factory ForgetPasswordState.success(ForgetPasswordResponse forgetPasswordResponse) = ForgetPasswordStateSuccess;
  const factory ForgetPasswordState.error({required String error}) = ForgetPasswordStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs