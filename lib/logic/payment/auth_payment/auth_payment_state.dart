// ignore_for_file: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_payment_state.freezed.dart';

@freezed
class PaymentState with _$PaymentState {
  const factory PaymentState.initial() = PaymentStateInitial;
  const factory PaymentState.loading() = PaymentStateLoading;
  const factory PaymentState.error({required String error}) = PaymentStateError;
  const factory PaymentState.success(String payment_id) = PaymentStateSuccess;
  const factory PaymentState.updateSuccess() = PaymentStateUpdateSuccess;
}
// flutter pub run build_runner watch --delete-conflicting-outputs