import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:the_business_square/data/models/auth/login/login_params.dart';
import 'package:the_business_square/data/models/auth/register/register_pramas.dart';
import 'package:the_business_square/shared/api_client/dio_client_helper.dart';
import 'package:the_business_square/shared/cache/storage.dart';
import 'package:the_business_square/shared/error/failures.dart';

import '../../../di.dart';
import '../../../shared/api_client/endpoints.dart';
import '../../models/auth/User_model.dart';
import '../../models/auth/forgetPassword/ForgetPasswordResponse.dart';
import '../../models/auth/forgetPassword/ResetPasswordPrams.dart';
import '../../models/auth/forgetPassword/Reset_password_model.dart';
import '../../models/auth/verfiy/Verifiy_email_response.dart';
import '../../models/auth/verfiy/verifiy_email_params.dart';

abstract class AuthRepoAbs {
  Future<Either<KFailure, UserModel>> login(LoginParams loginParams);
  Future<Either<KFailure, ResetPasswordModel>> resetPassword(ResetPasswordPrams resetPasswordPrams);
  Future<Either<KFailure, UserModel>> register(RegisterParams registerParams);
  Future<Either<KFailure, ForgetPasswordResponse>> forgetPassword(String email);
  Future<Either<KFailure, Unit>> sendVerify();
  Future<Either<KFailure, VerifiyEmailResponse>> verifiyEmail(VerifiyEmailParams verifiyEmailParams);
}

@injectable
class AuthRepoImp implements AuthRepoAbs {
  @override
  Future<Either<KFailure, UserModel>> login(LoginParams loginParams) async {
    Future<Response<dynamic>> func =
        Di.dioClient.post(KEndPoints.login, data: FormData.fromMap(loginParams.toJson()..addAll({"fcm_token": KStorage.i.getFcmToken})));

    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(UserModel.fromJson(r)),
    );
  }

  @override
  Future<Either<KFailure, UserModel>> register(RegisterParams registerParams) async {
    Future<Response<dynamic>> func =
        Di.dioClient.post(KEndPoints.register, data: FormData.fromMap(registerParams.toJson()..addAll({"fcm_token": KStorage.i.getFcmToken})));

    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(UserModel.fromJson(r)),
    );
  }

  @override
  Future<Either<KFailure, ForgetPasswordResponse>> forgetPassword(String email) async {
    Future<Response<dynamic>> func = Di.dioClient.post(KEndPoints.forgetPassword, data: {"email": email});

    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(ForgetPasswordResponse.fromJson(r)),
    );
  }

  @override
  Future<Either<KFailure, ResetPasswordModel>> resetPassword(ResetPasswordPrams resetPasswordPrams) async {
    Future<Response<dynamic>> func = Di.dioClient.post(KEndPoints.resetPassword, data: FormData.fromMap(resetPasswordPrams.toJson()));

    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(ResetPasswordModel.fromJson(r)),
    );
  }

  @override
  Future<Either<KFailure, VerifiyEmailResponse>> verifiyEmail(VerifiyEmailParams verifiyEmailParams) async {
    Future<Response<dynamic>> func = Di.dioClient.post(KEndPoints.emailVerify, data: FormData.fromMap(verifiyEmailParams.toJson()));

    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(VerifiyEmailResponse.fromJson(r)),
    );
  }

  @override
  Future<Either<KFailure, Unit>> sendVerify() async {
    Future<Response<dynamic>> func = Di.dioClient.delete("${KEndPoints.deletePost}/$id");
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }
}
