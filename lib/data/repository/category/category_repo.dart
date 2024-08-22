import 'package:injectable/injectable.dart';
import 'package:the_business_square/shared/api_client/dio_client_helper.dart';
import 'package:the_business_square/shared/error/failures.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../di.dart';
import '../../../../shared/api_client/endpoints.dart';
import '../../models/category/Category_model.dart';

abstract class CategoryRepoAbs {
  Future<Either<KFailure, CategoryModel>> fetchCategory();
}

@injectable
class CategoryRepoImp implements CategoryRepoAbs {
  @override
  Future<Either<KFailure, CategoryModel>> fetchCategory() async {
    Future<Response<dynamic>> func = Di.dioClient.get(KEndPoints.categories);
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(CategoryModel.fromJson(r)),
    );
  }
}
