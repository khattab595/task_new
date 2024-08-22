import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../shared/error/failures.dart';

part 'get_posts_user_state.freezed.dart';

@freezed
abstract class GetPostsUserState with _$GetPostsUserState {
  const factory GetPostsUserState.initial() = GetPostsStateInitial;
  const factory GetPostsUserState.loading() = GetPostsStateLoading;
  const factory GetPostsUserState.success() = GetPostsStateSuccess;
  const factory GetPostsUserState.loadMore() = GetPostsStateLoadMore;
  const factory GetPostsUserState.error({required KFailure error}) = GetPostsStateError;
}
