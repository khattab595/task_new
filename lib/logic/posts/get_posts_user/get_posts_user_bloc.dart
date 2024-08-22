import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:the_business_square/data/repository/posts/posts_repo.dart';

import '../../../data/models/posts/get_posts/Posts_response.dart';
import '../../../shared/error/failures.dart';
import '../../../shared/theme/logger.dart';
import 'get_posts_user_state.dart';

@injectable
class GetPostsUserBloc extends Cubit<GetPostsUserState> {
  GetPostsUserBloc({required this.getPostsRepoImp}) : super(const GetPostsUserState.initial());

  static GetPostsUserBloc of(BuildContext context) => BlocProvider.of<GetPostsUserBloc>(context);

  final PostsRepoImp getPostsRepoImp;

  PostsResponse postsResponse = PostsResponse(data: []);

  bool get no_more => postsResponse.pagination?.total == postsResponse.data?.length;
  int page = 1;

  fetchPostsUserById(int? id, {bool loadMore = false}) async {
    if (no_more && loadMore) return;
    if (loadMore) {
      page++;
      emit(const GetPostsUserState.loadMore());
    } else {
      page = 1;
      postsResponse = PostsResponse(data: []);
      emit(const GetPostsUserState.loading());
    }

    try {
      final result = await getPostsRepoImp.getAllPostUser(id, page: page);
      result.fold(
        (l) {
          debugPrint('================= GetPosts Bloc : ${KFailure.toError(l)}');
          emit(GetPostsUserState.error(error: l));
        },
        (r) {
          postsResponse = loadMore ? postsResponse.copyWith(data: postsResponse.data?..addAll(r.data ?? []), pagination: r.pagination) : r;
          printMap(r.pagination?.toJson());

          debugPrint('================= GetPosts Bloc : ${r.toString()}  ');
          emit(const GetPostsUserState.success());
        },
      );
    } catch (e) {
      debugPrint('================= GetPosts Bloc (Catch): ${e.toString()} ');
      emit(const GetPostsUserState.error(error: KFailure.someThingWrongPleaseTryAgain()));
      rethrow;
    }
  }
}
