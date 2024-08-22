import 'package:injectable/injectable.dart';
import 'package:the_business_square/shared/api_client/dio_client_helper.dart';
import 'package:the_business_square/shared/error/failures.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../di.dart';
import '../../../../shared/api_client/endpoints.dart';
import '../../models/auth/User_model.dart';
import '../../models/auth/User_update_nikname_company_model.dart';

abstract class ProfileRepoAbs {
  Future<Either<KFailure, UserModel>> fetchUserData();
  Future<Either<KFailure, UserModel>> changeStatusUserData(String status);
  Future<Either<KFailure, UserUpdateNickNameCompanyModel>>
      updateCompanyNickName(
          {required String nick_name, required String company_name});
  Future<Either<KFailure, UserModel>> updateProfile(Map<String, dynamic> map);
}

@injectable
class ProfileRepoImp implements ProfileRepoAbs {
  @override
  Future<Either<KFailure, UserModel>> fetchUserData() async {
    Future<Response<dynamic>> func = Di.dioClient.get(KEndPoints.profile);
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(UserModel.fromJson(r)),
    );
  }

  @override
  Future<Either<KFailure, UserModel>> updateProfile(
      Map<String, dynamic> map) async {
    Future<Response<dynamic>> func =
        Di.dioClient.postWithFiles(KEndPoints.profile, data: map);
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(UserModel.fromJson(r)),
    );
  }

  @override
  Future<Either<KFailure, UserModel>> changeStatusUserData(
      String status) async {
    Future<Response<dynamic>> func = Di.dioClient.post(
        KEndPoints.updateUserStatus,
        data: {"status": status, "_method": "patch"});
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(UserModel.fromJson(r)),
    );
  }

  @override
  Future<Either<KFailure, UserUpdateNickNameCompanyModel>>
      updateCompanyNickName(
          {required String nick_name, required String company_name}) async {
    Future<Response<dynamic>> func =
        Di.dioClient.post(KEndPoints.profileDetails, data: {
      "nick_name": nick_name,
      "company_name": company_name,
      "_method": "patch",
    });
    final result = await ApiClientHelper.responseToModel(func: func);

    return result.fold(
      (l) => left(l),
      (r) => right(UserUpdateNickNameCompanyModel.fromJson(r)),
    );
  }
}
