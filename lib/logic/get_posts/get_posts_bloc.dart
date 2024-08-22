import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:the_business_square/data/models/posts/get_posts/Posts_response.dart';
import 'package:the_business_square/shared/theme/logger.dart';
import '../../data/repository/posts/posts_repo.dart';
import '../../shared/error/failures.dart';
import 'get_posts_state.dart';

@injectable
class GetPostsBloc extends Cubit<GetPostsState> {
  GetPostsBloc({required this.getPostsRepoImp}) : super(const GetPostsState.initial());

  static GetPostsBloc of(BuildContext context) => BlocProvider.of<GetPostsBloc>(context);

  final PostsRepoImp getPostsRepoImp;

  PostsResponse postsResponse = PostsResponse(data: []);

  bool get no_more => postsResponse.pagination?.total == postsResponse.data?.length;
  int page = 1;
  get_posts({bool loadMore = false, String? text, String? category, String? country}) async {
    
    if (no_more && loadMore) return;
    if (loadMore) {
      page++;
      emit(const GetPostsState.loadMore());
    } else {
      page = 1;
      emit(const GetPostsState.loading());
    }

    try {
      final result = await getPostsRepoImp.getPost(text: text, category: category, country: country, page: page);
      result.fold(
        (l) {
          debugPrint('================= GetPosts Bloc : ${KFailure.toError(l)}');
          emit(GetPostsState.error(error: l));
        },
        (r) {
          postsResponse = loadMore ? postsResponse.copyWith(data: postsResponse.data?..addAll(r.data ?? []), pagination: r.pagination) : r;
          printMap(r.pagination?.toJson());

          debugPrint('================= GetPosts Bloc : ${r.toString()}  ');
          emit(const GetPostsState.success());
        },
      );
    } catch (e) {
      debugPrint('================= GetPosts Bloc (Catch): ${e.toString()} ');
      emit(const GetPostsState.error(error: KFailure.someThingWrongPleaseTryAgain()));
      rethrow;
    }
  }
}
