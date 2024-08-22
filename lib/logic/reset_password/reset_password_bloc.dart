import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:the_business_square/logic/reset_password/reset_password_state.dart';
import 'package:the_business_square/shared/error/failures.dart';
import '../../data/models/auth/forgetPassword/ResetPasswordPrams.dart';
import '../../data/repository/auth/auth_repo.dart';
 import '../../shared/localization/trans.dart';

@injectable
class ResetPasswordBloc extends Cubit<ResetPasswordState> {
  ResetPasswordBloc({required this.authRepoImp}) : super(const ResetPasswordState.initial());

  static ResetPasswordBloc of(BuildContext context) => BlocProvider.of<ResetPasswordBloc>(context);

  final AuthRepoImp authRepoImp;
  resetPassword({required  ResetPasswordPrams resetPasswordPrams}) async {
    try {
      emit(const ResetPasswordState.loading());
      final result = await authRepoImp.resetPassword(resetPasswordPrams);
      result.fold(
        (l) {
          debugPrint('================= ProfileBloc : ${KFailure.toError(l)}');
          emit(ResetPasswordState.error(error: KFailure.toError(l)));
        },
        (r) {
          debugPrint('================= ProfileBloc : ${r.toString()}  ');
          emit(ResetPasswordState.success(r));
        },
      );
    } catch (e) {
      debugPrint('================= ProfileBloc (Catch): ${e.toString()} ');
      emit(ResetPasswordState.error(error: Tr.get.try_again));
      rethrow;
    }
  }
}
