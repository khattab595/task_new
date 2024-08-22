import 'package:freezed_annotation/freezed_annotation.dart';
import '../../shared/error/failures.dart';
part 'get_posts_state.freezed.dart';

@freezed
abstract class GetPostsState with _$GetPostsState{
  const factory GetPostsState.initial() = GetPostsStateInitial;
  const factory GetPostsState.loading() = GetPostsStateLoading;
  const factory GetPostsState.loadMore() = GetPostsStateLoadMore;
  const factory GetPostsState.success() = GetPostsStateSuccess;
  const factory GetPostsState.error({required KFailure error}) = GetPostsStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs