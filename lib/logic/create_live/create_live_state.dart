import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_business_square/data/models/live_stream/live_stream.dart';
import '../../shared/error/failures.dart';
part 'create_live_state.freezed.dart';

@freezed
abstract class CreateLiveState with _$CreateLiveState {
  const factory CreateLiveState.initial() = CreateLiveStateInitial;
  const factory CreateLiveState.loading() = CreateLiveStateLoading;
  const factory CreateLiveState.success({required LiveStream model}) = CreateLiveStateSuccess;
  const factory CreateLiveState.error({required KFailure error}) = CreateLiveStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs