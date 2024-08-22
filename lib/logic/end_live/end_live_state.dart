import 'package:freezed_annotation/freezed_annotation.dart';
import '../../shared/error/failures.dart';
part 'end_live_state.freezed.dart';

@freezed
abstract class EndLiveState with _$EndLiveState {
  const factory EndLiveState.initial() = EndLiveStateInitial;
  const factory EndLiveState.loading() = EndLiveStateLoading;
  const factory EndLiveState.success() = EndLiveStateSuccess;
  const factory EndLiveState.error({required KFailure error}) = EndLiveStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs