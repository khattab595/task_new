import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:the_business_square/shared/error/failures.dart';
import '../../data/repository/auth/auth_repo.dart';
import '../../shared/localization/trans.dart';
import 'forget_password_state.dart';

@injectable
class ForgetPasswordBloc extends Cubit<ForgetPasswordState> {
  ForgetPasswordBloc({required this.authRepoImp}) : super(const ForgetPasswordState.initial());

  static ForgetPasswordBloc of(BuildContext context) => BlocProvider.of<ForgetPasswordBloc>(context);

  final AuthRepoImp authRepoImp;
  forgetPassword({required String email}) async {
    try {
      emit(const ForgetPasswordState.loading());
      final result = await authRepoImp.forgetPassword(email);
      result.fold(
        (l) {
          debugPrint('================= ProfileBloc : ${KFailure.toError(l)}');
          emit(ForgetPasswordState.error(error: KFailure.toError(l)));
        },
        (r) {
          debugPrint('================= ProfileBloc : ${r.toString()}  ');
          emit(ForgetPasswordState.success(r));
        },
      );
    } catch (e) {
      debugPrint('================= ProfileBloc (Catch): ${e.toString()} ');
      emit(ForgetPasswordState.error(error: Tr.get.try_again));
      rethrow;
    }
  }
}
