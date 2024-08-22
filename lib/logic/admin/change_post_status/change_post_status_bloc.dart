import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:the_business_square/data/repository/admin_featuer/admin_featuer_repo.dart';
import 'package:the_business_square/shared/error/failures.dart';
import 'change_post_status_state.dart';
@Injectable()
class ChangePostStatusBloc extends Cubit<ChangePostStatusState> {
  ChangePostStatusBloc({required this.changePostStatusRepoImp}) : super(const ChangePostStatusState.loading());

  static ChangePostStatusBloc of(BuildContext context) => BlocProvider.of<ChangePostStatusBloc>(context);

  final AdminFeatureRepoImp changePostStatusRepoImp;

  changePostStatus(String status,int id, int cost) async {
    try {
      emit(const ChangePostStatusState.loading());
      final result = await changePostStatusRepoImp.changePostStatus(id: id,status: status,cost:cost );
      result.fold(
        (l) {
          debugPrint('================= ChangePostStatus Bloc : ${KFailure.toError(l)}');
          emit(ChangePostStatusState.error(error: l));
        },
        (r) {
          debugPrint('================= ChangePostStatus Bloc : ${r.toString()}  ');
          emit(const ChangePostStatusState.success());
        },
      );
    } catch (e) {
      debugPrint('================= ChangePostStatus Bloc (Catch): ${e.toString()} ');
      emit(ChangePostStatusState.error(error: KFailure.someThingWrongPleaseTryAgain()));
    }
  }
}
