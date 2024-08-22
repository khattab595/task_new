import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:the_business_square/shared/error/failures.dart';
import '../../../data/models/search/Search_response.dart';
part 'posts_search_state.freezed.dart';

@freezed
abstract class PostsSearchState with _$PostsSearchState {
  const factory PostsSearchState.loading() = PostsSearchStateLoading;
  const factory PostsSearchState.success(SearchResponse posts) = PostsSearchStateSuccess;
  const factory PostsSearchState.error({required KFailure error}) = PostsSearchStateError;
}
// flutter pub run build_runner watch --delete-conflicting-outputs