// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/auth/forgetPassword/Reset_password_model.dart';
part 'reset_password_state.freezed.dart';

@freezed
class ResetPasswordState with _$ResetPasswordState {
  const factory ResetPasswordState.initial() = ResetPasswordStateInitial;
  const factory ResetPasswordState.loading() = ResetPasswordStateLoading;
  const factory ResetPasswordState.success(ResetPasswordModel resetPasswordModel) = ForgetPasswordStateSuccess;
  const factory ResetPasswordState.error({required String error}) = ResetPasswordStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs