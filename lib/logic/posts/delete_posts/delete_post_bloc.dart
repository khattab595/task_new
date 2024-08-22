import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:the_business_square/data/repository/posts/posts_repo.dart';
import '../../../shared/error/failures.dart';
import 'delete_post_state.dart';

@injectable
class DeletePostBloc extends Cubit<DeletePostState> {
  DeletePostBloc({required this.getPostsRepoImp}) : super(const DeletePostState.loading());

  static DeletePostBloc of(BuildContext context) => BlocProvider.of<DeletePostBloc>(context);

  final PostsRepoImp getPostsRepoImp;

  deletePosts(int id) async {
    try {
      emit(const DeletePostState.loading());
      final result = await getPostsRepoImp.deletePostUser(id);
      result.fold(
        (l) {
          debugPrint('================= GetPosts Bloc : ${KFailure.toError(l)}');
          emit(DeletePostState.error(error: l));
        },
        (r) {
          debugPrint('================= GetPosts Bloc : ${r.toString()}  ');

          emit(DeletePostState.success());
        },
      );
    } catch (e) {
      debugPrint('================= GetPosts Bloc (Catch): ${e.toString()} ');
      emit(DeletePostState.error(error: KFailure.someThingWrongPleaseTryAgain()));
      rethrow;
    }
  }
}
