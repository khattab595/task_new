import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:the_business_square/views/home/data/model/HomeModel.dart';

import '../../../../di.dart';
import '../../../../shared/api_client/dio_client_helper.dart';
import '../../../../shared/api_client/endpoints.dart';
import '../../../../shared/error/failures.dart';

abstract class HomeRepoAbs {
  Future<dynamic> fetchHome();
}

//Accept-Language
@injectable
class HomeRepoImp implements HomeRepoAbs {
  @override
  Future<dynamic> fetchHome() async {
    Future<Response<dynamic>> func = Di.dioClient.get(KEndPoints.home);
    final result = await ApiClientHelper.responseToModel(func: func);
    return result;
  }
}
