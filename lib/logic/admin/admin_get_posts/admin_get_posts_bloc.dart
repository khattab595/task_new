import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:the_business_square/data/repository/admin_featuer/admin_featuer_repo.dart';
import 'package:the_business_square/shared/error/failures.dart';
import 'admin_get_posts_state.dart';

@Injectable()
class AdminGetPostsBloc extends Cubit<AdminGetPostsState> {
  AdminGetPostsBloc({required this.adminGetPostsRepoImp}) : super(const AdminGetPostsState.loading());

  static AdminGetPostsBloc of(BuildContext context) => BlocProvider.of<AdminGetPostsBloc>(context);

  final AdminFeatureRepoImp adminGetPostsRepoImp;
  String lastCall = 'waiting';
  getLastCall() {
    getPostsAdmin(lastCall);
  }

  getPostsAdmin(String status) async {
    try {
      lastCall = status;
      emit(const AdminGetPostsState.loading());
      final result = await adminGetPostsRepoImp.get_admin_Posts(status);
      result.fold(
        (l) {
          debugPrint('================= AdminGetPosts Bloc : ${KFailure.toError(l)}');
          emit(AdminGetPostsState.error(error: l));
        },
        (r) {
          debugPrint('================= AdminGetPosts Bloc : ${r.toString()}  ');
          emit(AdminGetPostsState.success(r));
        },
      );
    } catch (e) {
      debugPrint('================= AdminGetPosts Bloc (Catch): ${e.toString()} ');
      emit(AdminGetPostsState.error(error: KFailure.someThingWrongPleaseTryAgain()));
    }
  }
}
