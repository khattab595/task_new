import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../data/repository/posts/posts_repo.dart';
import '../../../shared/error/failures.dart';
import 'posts_search_state.dart';
@injectable
class PostsSearchBloc extends Cubit<PostsSearchState> {
  PostsSearchBloc({required this.postsSearchRepoImp}) : super(const PostsSearchState.loading());

  static PostsSearchBloc of(BuildContext context) => BlocProvider.of<PostsSearchBloc>(context);

  final PostsRepoImp postsSearchRepoImp;

  fetchPosts({required  String text}) async {
    try {
      emit(const PostsSearchState.loading());
      final result = await postsSearchRepoImp.searchPosts(text);
      result.fold(
        (l) {
          debugPrint('================= PostsSearch Bloc : ${KFailure.toError(l)}');
          emit(PostsSearchState.error(error: l));
        },
        (r) {
          debugPrint('================= PostsSearch Bloc : ${r.toString()}  ');
          r.posts?.data!.forEach(
                (element) => debugPrint('================= ${element.country!} : '),
          );
          emit(  PostsSearchState.success(r));
        },
      );
    } catch (e) {
      debugPrint('================= PostsSearch Bloc (Catch): ${e.toString()} ');
      emit(PostsSearchState.error(error: KFailure.someThingWrongPleaseTryAgain()));
    }
  }
}
