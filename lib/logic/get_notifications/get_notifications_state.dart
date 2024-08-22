import 'package:freezed_annotation/freezed_annotation.dart';
import '../../shared/error/failures.dart';
part 'get_notifications_state.freezed.dart';

@freezed
 class GetNotificationsState with _$GetNotificationsState{
  const factory GetNotificationsState.initial() = GetNotificationsStateInitial;
  const factory GetNotificationsState.loading() = GetNotificationsStateLoading;
  const factory GetNotificationsState.loadMore() = GetNotificationsStateLoadMore;
  const factory GetNotificationsState.success() = GetNotificationsStateSuccess;
  const factory GetNotificationsState.error({required KFailure error}) = GetNotificationsStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs