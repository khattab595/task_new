import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:the_business_square/shared/api_client/dio_client_helper.dart';
import 'package:the_business_square/shared/error/failures.dart';

import '../../../../di.dart';
import '../../../../shared/api_client/endpoints.dart';
import '../../models/posts/addpost/Add_post_model.dart';
import '../../models/posts/addpost/Add_post_prams.dart';
import '../../models/posts/get_posts/Posts_response.dart';
import '../../models/search/Search_response.dart';

abstract class PostsRepoAbs {
  Future<Either<KFailure, AddPostModel>> addPost(AddPostPrams prams);
  Future<Either<KFailure, PostsResponse>> getPost({required String? text, required String? category, required String? country});

  Future<Either<KFailure, PostsResponse>> getAllPostUser(int id, {int page = 1});
  Future<Either<KFailure, Unit>> deletePostUser(int id);

  Future<Either<KFailure, SearchResponse>> searchPosts(String text);
}

@injectable
class PostsRepoImp implements PostsRepoAbs {
  @override
  Future<Either<KFailure, AddPostModel>> addPost(AddPostPrams prams) async {
    Future<Response<dynamic>> func = Di.dioClient.post(KEndPoints.addPost, data: FormData.fromMap(prams.toJson()));
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold((l) => left(l), (r) => right(AddPostModel.fromJson(r)));
  }

  @override
  Future<Either<KFailure, PostsResponse>> getPost({required String? text, required String? category, required String? country, int page = 1}) async {
    Future<Response<dynamic>> func = Di.dioClient.get(KEndPoints.search, params: {
      if (category != null) "category": category,
      if (country != null) "country": country,
      if (text != null) "text": text,
      "page": page,
      "page_count": 10,
    });

    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold((l) => left(l), (r) => right(PostsResponse.fromJson(r)));
  }

  @override
  Future<Either<KFailure, SearchResponse>> searchPosts(String text) async {
    Future<Response<dynamic>> func = Di.dioClient.post(KEndPoints.search, data: {"text": text});
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold((l) => left(l), (r) => right(SearchResponse.fromJson(r)));
  }

  @override
  Future<Either<KFailure, PostsResponse>> getAllPostUser(int? id, {int page = 1}) async {
    Future<Response<dynamic>> func = Di.dioClient.get("${KEndPoints.getAllPosts}/$id", params: {"page": page, "page_count": 10});
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold((l) => left(l), (r) => right(PostsResponse.fromJson(r)));
  }

  @override
  Future<Either<KFailure, Unit>> deletePostUser(int id) async {
    Future<Response<dynamic>> func = Di.dioClient.delete("${KEndPoints.deletePost}/$id");
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold((l) => left(l), (r) => right(unit));
  }
}
