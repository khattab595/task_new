import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
 import 'package:the_business_square/shared/cache/storage.dart';
import 'package:the_business_square/shared/error/failures.dart';
import '../../../data/models/auth/Data.dart';
import '../../../data/repository/profile/user_repo.dart';
import '../../../shared/localization/trans.dart';
 import 'change_status_profile_state.dart';

@injectable
class ChangeStatusProfileBloc extends Cubit<ChangeStatusProfileState> {
  ChangeStatusProfileBloc({required this.profileRepoImp}) : super(const ChangeStatusProfileState.initial());

  static ChangeStatusProfileBloc of(BuildContext context) => BlocProvider.of<ChangeStatusProfileBloc>(context);

  final ProfileRepoImp profileRepoImp;
  UserData? user = KStorage.i.getUser;
  changeStatusProfile(String status) async {
    try {
      emit(const ChangeStatusProfileState.loading());
      final result = await profileRepoImp.changeStatusUserData(status);
      result.fold(
        (l) {
          debugPrint('================= ProfileBloc : ${KFailure.toError(l)}');
          emit(ChangeStatusProfileState.error(error: KFailure.toError(l)));
        },
        (r) {
          debugPrint('================= ProfileBloc : ${r.toString()}  ');
          KStorage.i.setUser(r.data);
          // ProfileBloc.of(context).fetchUser();
          emit(ChangeStatusProfileState.success(r));
        },
      );
    } catch (e) {
      debugPrint('================= ProfileBloc (Catch): ${e.toString()} ');
      emit(ChangeStatusProfileState.error(error: Tr.get.try_again));
      rethrow;
    }
  }
}
