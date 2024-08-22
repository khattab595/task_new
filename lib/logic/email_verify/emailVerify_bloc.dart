import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:the_business_square/shared/error/failures.dart';
import '../../data/models/auth/verfiy/verifiy_email_params.dart';
import '../../data/repository/auth/auth_repo.dart';
import '../../shared/cache/storage.dart';
import '../../shared/localization/trans.dart';
import 'emailVerify_state.dart';

@injectable
class EmailVerifyBloc extends Cubit<EmailVerifyState> {
  EmailVerifyBloc({required this.authRepoImp}) : super(const EmailVerifyState.initial());

  static EmailVerifyBloc of(BuildContext context) => BlocProvider.of<EmailVerifyBloc>(context);

  final AuthRepoImp authRepoImp;
  verifiyEmail({required VerifiyEmailParams verifiyEmailParams}) async {
    try {
      emit(const EmailVerifyState.loading());
      final result = await authRepoImp.verifiyEmail(verifiyEmailParams);
      result.fold(
        (l) {
          debugPrint('================= ProfileBloc : ${KFailure.toError(l)}');
          emit(EmailVerifyState.error(error: KFailure.toError(l)));
        },
        (r) {
          debugPrint('================= ${r.token} : ');
          KStorage.i.setToken(r.token);
          KStorage.i.setUser(r.data);
          debugPrint('================= ProfileBloc : ${r.toString()}  ');
          emit(EmailVerifyState.success(r));
        },
      );
    } catch (e) {
      debugPrint('================= ProfileBloc (Catch): ${e.toString()} ');
      emit(EmailVerifyState.error(error: Tr.get.try_again));
      rethrow;
    }
  }

  SendOTpEmail( ) async {
    try {
      emit(const EmailVerifyState.loadingSend());
      final result = await authRepoImp.sendVerify( );
      result.fold(
        (l) {
          debugPrint('================= ProfileBloc : ${KFailure.toError(l)}');
          emit(EmailVerifyState.error(error: KFailure.toError(l)));
        },
        (r) {

          emit(EmailVerifyState.successSendOTp( ));
        },
      );
    } catch (e) {
      debugPrint('================= ProfileBloc (Catch): ${e.toString()} ');
      emit(EmailVerifyState.error(error: Tr.get.try_again));
      rethrow;
    }
  }
}
