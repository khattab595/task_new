import 'package:injectable/injectable.dart';
import 'package:the_business_square/shared/api_client/dio_client_helper.dart';
import '../../models/admin_featuer/admin_featuer_model.dart';
import '../../../shared/api_client/endpoints.dart';
import '../../../shared/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../di.dart';
import '../../models/admin_featuer/nik_name/Nick_name_response.dart';
import '../../models/category/Add_category_pram.dart';
import '../../models/category/Add_category_response.dart';
import '../../models/coin/Coin_response.dart';
import '../../models/company/Company_response.dart';
import '../../models/posts/get_posts/Posts_response.dart';

abstract class AdminFeatureRepoAbs {
  Future<Either<KFailure, PostsResponse>> get_admin_Posts(String status);
  Future<Either<KFailure, Unit>> changePostStatus({required int id,  required int cost, required String status});
  Future<Either<KFailure, Unit>> addNickName({required String coin, required String name});
  Future<Either<KFailure, Unit>> addCompany({required String coin, required String name});
  Future<Either<KFailure, Unit>> addCoin({required String coin, required String price,required String name});
  Future<Either<KFailure, NickNameResponse>> getNickName( );
  Future<Either<KFailure, CompanyResponse>> getCompany( );
  Future<Either<KFailure, CoinResponse>> getCoin( );
  Future<Either<KFailure, Unit>> deleteCategory({required int id});
  Future<Either<KFailure, Unit>> deleteCoin({required int id});
  Future<Either<KFailure, Unit>> deleteCompany({required int id});
  Future<Either<KFailure, Unit>> deleteNickName({required int id});
  Future<Either<KFailure, AddCategoryResponse>> add_new_cat(AddCategoryPram addCategoryPrams);
  Future<Either<KFailure, Unit>> logout();
}

@Injectable()
class AdminFeatureRepoImp implements AdminFeatureRepoAbs {
  @override
  Future<Either<KFailure, PostsResponse>> get_admin_Posts(String status) async {
    Future<Response<dynamic>> func = Di.dioClient.get(KEndPoints.adminPosts, params: {
      "status": status,
    });
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(PostsResponse.fromJson(r)),
    );
  }

  @override
  Future<Either<KFailure, AddCategoryResponse>> add_new_cat(AddCategoryPram addCategoryPrams) async {
    Future<Response<dynamic>> func = Di.dioClient.post(KEndPoints.addNewCat, data: FormData.fromMap(addCategoryPrams.toJson()));
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(AddCategoryResponse.fromJson(r)),
    );
  }

  @override
  Future<Either<KFailure, Unit>> changePostStatus({required int id, required String status, required int cost}) async {
    Future<Response<dynamic>> func = Di.dioClient.post("${KEndPoints.changePostStatus}/$id", data: {"status": status, "_method": "patch","cost":cost});
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  @override
  Future<Either<KFailure, Unit>> logout() async {
    Future<Response<dynamic>> func = Di.dioClient.post(
      KEndPoints.logout,
    );
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  @override
  Future<Either<KFailure, Unit>> deleteCategory({required int id}) async {
    Future<Response<dynamic>> func = Di.dioClient.delete("${KEndPoints.deleteCategory}/$id");
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  @override
  Future<Either<KFailure, Unit>> addNickName({required String coin, required String name}) async{
    Future<Response<dynamic>> func = Di.dioClient.post(
      KEndPoints.addNickName,data: {
        "nick_name":name,
      "coins":coin
    }
    );
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
          (l) => left(l),
          (r) => right(unit),
    );
  }

  @override
  Future<Either<KFailure, NickNameResponse>> getNickName() async{
    Future<Response<dynamic>> func = Di.dioClient.get(KEndPoints.nicknames, );
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
          (l) => left(l),
          (r) => right(NickNameResponse.fromJson(r)),
    );
  }

  @override
  Future<Either<KFailure, Unit>> deleteNickName({required int id}) async {
    Future<Response<dynamic>> func = Di.dioClient.delete("${KEndPoints.deleteNicknames}/$id");
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
          (l) => left(l),
          (r) => right(unit),
    );
  }

  @override
  Future<Either<KFailure, Unit>> addCompany({required String coin, required String name}) async {
    Future<Response<dynamic>> func = Di.dioClient.post(
        KEndPoints.addCompany,data: {
      "company_name":name,
      "coins":coin
    }
    );
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
          (l) => left(l),
          (r) => right(unit),
    );
  }

  @override
  Future<Either<KFailure, Unit>> deleteCompany({required int id}) async {
    Future<Response<dynamic>> func = Di.dioClient.delete("${KEndPoints.deleteCompany}/$id");
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
          (l) => left(l),
          (r) => right(unit),
    );
  }

  @override
  Future<Either<KFailure, CompanyResponse>> getCompany() async {
    Future<Response<dynamic>> func = Di.dioClient.get(KEndPoints.companies, );
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
          (l) => left(l),
          (r) => right(CompanyResponse.fromJson(r)),
    );
  }

  @override
  Future<Either<KFailure, CoinResponse>> getCoin() async {
    Future<Response<dynamic>> func = Di.dioClient.get(KEndPoints.coin, );
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
          (l) => left(l),
          (r) => right(CoinResponse.fromJson(r)),
    );
  }


  @override
  Future<Either<KFailure, Unit>> addCoin({required String coin, required String price,required String name}) async {
    Future<Response<dynamic>> func = Di.dioClient.post(
        KEndPoints.coin,data: {
      "name":name,
      "price":price,
      "coins":coin
    }
    );
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
          (l) => left(l),
          (r) => right(unit),
    );
  }

  @override
  Future<Either<KFailure, Unit>> deleteCoin({required int id}) async {
    Future<Response<dynamic>> func = Di.dioClient.delete("${KEndPoints.coin}/$id",data: {
      "_method":"DELETE"
    });
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
          (l) => left(l),
          (r) => right(unit),
    );
  }
}
