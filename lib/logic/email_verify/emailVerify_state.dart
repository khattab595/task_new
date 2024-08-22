// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/auth/verfiy/Verifiy_email_response.dart';
part 'emailVerify_state.freezed.dart';

@freezed
class EmailVerifyState with _$EmailVerifyState {
  const factory EmailVerifyState.initial() = EmailVerifyStateInitial;
  const factory EmailVerifyState.loading() = EmailVerifyStateLoading;
  const factory EmailVerifyState.loadingSend() = SendOtpLoading;
  const factory EmailVerifyState.success(VerifiyEmailResponse verifiyEmailResponse) =EmailVerifyStateSuccess;
  const factory EmailVerifyState.successSendOTp() =SendOTPEmailVerifyStateSuccess;
  const factory EmailVerifyState.error({required String error}) = EmailVerifyStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs