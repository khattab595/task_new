import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../data/models/posts/get_posts/Posts_response.dart';
import '../../../shared/error/failures.dart';
part 'admin_get_posts_state.freezed.dart';

@freezed
abstract class AdminGetPostsState with _$AdminGetPostsState{
  const factory AdminGetPostsState.loading() = AdminGetPostsStateLoading;
  const factory AdminGetPostsState.success(PostsResponse postsResponse) = AdminGetPostsStateSuccess;
  const factory AdminGetPostsState.error({required KFailure error}) = AdminGetPostsStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs