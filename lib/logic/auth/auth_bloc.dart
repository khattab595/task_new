import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:the_business_square/data/models/auth/register/register_pramas.dart';
import 'package:the_business_square/data/models/slug_model.dart';
import 'package:the_business_square/shared/cache/storage.dart';
import 'package:the_business_square/shared/error/failures.dart';

import '../../data/models/auth/login/login_params.dart';
import '../../data/repository/auth/auth_repo.dart';
import '../../shared/localization/trans.dart';
import 'auth_state.dart';

@injectable
class AuthBloc extends Cubit<AuthState> {
  AuthBloc({required this.authRepoImp}) : super(const AuthState.initial());

  static AuthBloc of(BuildContext context) => BlocProvider.of<AuthBloc>(context);

  final AuthRepoImp authRepoImp;
  LoginParams loginParams = LoginParams();

  login() async {
    try {
      emit(const AuthState.loading());
      final result = await authRepoImp.login(loginParams);
      result.fold(
        (l) {
          debugPrint('================= Auth Bloc : ${KFailure.toError(l)}');
          emit(AuthState.error(error: KFailure.toError(l)));
        },
        (r) {
          debugPrint('================= Auth Bloc : ${r.toString()}  ');
          KStorage.i.setToken(r.token);
          KStorage.i.setUser(r.data);
          emit(AuthState.success(r));
        },
      );
    } catch (e) {
      debugPrint('================= Auth Bloc (Catch): ${e.toString()} ');
      emit(AuthState.error(error: Tr.get.try_again));
      rethrow;
    }
  }

  setEmail(String? val) {
    loginParams = loginParams.copyWith(email: val);
  }

  setPass(String? val) {
    loginParams = loginParams.copyWith(password: val);
  }

  // setFcmToken( ) {
  //   loginParams = loginParams.copyWith(fcmToken: "1111");
  // }
  //---------------------------//

  RegisterParams registerParams = RegisterParams();
  register() async {
    try {
      emit(const AuthState.loadingRegister());
      final result = await authRepoImp.register(registerParams);
      result.fold(
        (l) {
          debugPrint('================= Auth Bloc : ${KFailure.toError(l)}');
          emit(AuthState.errorRegister(error: KFailure.toError(l)));
        },
        (r) {
          debugPrint('================= ${r.token} : ');
          KStorage.i.setToken(r.token);
          KStorage.i.setUser(r.data);
          debugPrint('================= Auth Bloc : ${r.toString()}  ');
          emit(AuthState.successRegister(r));
        },
      );
    } catch (e) {
      debugPrint('================= Auth Bloc (Catch): ${e.toString()} ');
      emit(AuthState.errorRegister(error: Tr.get.try_again));
    }
  }

  setConfirmPass(String? val) {
    registerParams = registerParams.copyWith(passwordConfirmation: val);
  }

  setName(String? val) {
    registerParams = registerParams.copyWith(name: val);
  }

  setPhone(String? val) {
    registerParams = registerParams.copyWith(phone: val);
  }

  setEmailRegister(String? val) {
    registerParams = registerParams.copyWith(email: val);
  }

  setPassword(String? val) {
    registerParams = registerParams.copyWith(password: val);
  }

  setJobTitle(String? val) {
    registerParams = registerParams.copyWith(jobTitle: val);
  }

  setGender(KSlugModel val) {
    emit(const AuthState.loadingRegister());
    selectedGender = val;

    registerParams = registerParams.copyWith(gender: val.slug);
    emit(const AuthState.initial());
  }

  KSlugModel selectedGender = KSlugModel.genders.first;

  setCountry(val) {
    registerParams = registerParams.copyWith(country: val);
  }
  // setFcmTokenRegister( ) {
  //   registerParams = registerParams.copyWith(fcmToken: "1111");
  // }
}
