import 'package:freezed_annotation/freezed_annotation.dart';
import '../../shared/error/failures.dart';
part 'add_user_to_live_state.freezed.dart';

@freezed
abstract class AddUserToLiveState with _$AddUserToLiveState {
  const factory AddUserToLiveState.initial() = AddUserToLiveStateInitial;
  const factory AddUserToLiveState.loading() = AddUserToLiveStateLoading;
  const factory AddUserToLiveState.success() = AddUserToLiveStateSuccess;
  const factory AddUserToLiveState.error({required KFailure error}) = AddUserToLiveStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs