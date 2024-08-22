import 'package:freezed_annotation/freezed_annotation.dart';
import '../../shared/error/failures.dart';
part 'get_live_streams_state.freezed.dart';

@freezed
abstract class GetLiveStreamsState with _$GetLiveStreamsState{
  const factory GetLiveStreamsState.initial() = GetLiveStreamsStateInitial;
  const factory GetLiveStreamsState.loading() = GetLiveStreamsStateLoading;
  const factory GetLiveStreamsState.loadMore() = GetLiveStreamsStateLoadMore;
  const factory GetLiveStreamsState.success() = GetLiveStreamsStateSuccess;
  const factory GetLiveStreamsState.error({required KFailure error}) = GetLiveStreamsStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs