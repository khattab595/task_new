import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:the_business_square/data/repository/admin_featuer/admin_featuer_repo.dart';
import 'package:the_business_square/shared/error/failures.dart';
import '../../../shared/cache/storage.dart';

import 'logout_state.dart';

@Injectable()
class LogOutBloc extends Cubit<LogOutState> {
  LogOutBloc({required this.addNewCategoryRepoImp}) : super(const LogOutState.initial());

  static LogOutBloc of(BuildContext context) => BlocProvider.of<LogOutBloc>(context);

  final AdminFeatureRepoImp addNewCategoryRepoImp;

  logout() async {
    try {
      emit(const LogOutState.loading());
      final result = await addNewCategoryRepoImp.logout();
      result.fold(
        (l) {
          debugPrint('================= logout Bloc : ${KFailure.toError(l)}');
          emit(LogOutState.error(error: l));
        },
        (r) {
          KStorage.i.logOut;
          debugPrint('================= logout Bloc : ${r.toString()}  ');
          emit(LogOutState.success());
        },
      );
    } catch (e) {
      debugPrint('================= logout Bloc (Catch): ${e.toString()} ');
      emit(LogOutState.error(error: KFailure.someThingWrongPleaseTryAgain()));
    }
  }
}
