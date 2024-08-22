import 'package:injectable/injectable.dart';
import 'package:the_business_square/data/models/live_stream/live_stream.dart';

import '../../../shared/api_client/dio_client_helper.dart';
import '../../../shared/api_client/endpoints.dart';
import '../../../shared/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../di.dart';

abstract class LiveStreamRepoAbs {
  Future<Either<KFailure, LiveStreamsResponse>> get_live_stream();
  Future<Either<KFailure, LiveStream>> add_live_stream(Map<String, dynamic> map);
  Future<Either<KFailure, Unit>> add_user_to_live_stream(int? id);
  Future<Either<KFailure, Unit>> endLive(int? id);
}

@injectable
class LiveStreamRepoImp implements LiveStreamRepoAbs {
  @override
  Future<Either<KFailure, LiveStreamsResponse>> get_live_stream() async {
    Future<Response<dynamic>> func = Di.dioClient.get(KEndPoints.get_live_stream);
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(LiveStreamsResponse.fromJson(r)),
    );
  }

  @override
  Future<Either<KFailure, LiveStream>> add_live_stream(Map<String, dynamic> map) async {
    Future<Response<dynamic>> func = Di.dioClient.postWithFiles(KEndPoints.get_live_stream, data: map);
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(LiveStream.fromJson(r['data'])),
    );
  }
  @override
  Future<Either<KFailure, Unit>> add_user_to_live_stream(int? id) async {
    Future<Response<dynamic>> func = Di.dioClient.get(KEndPoints.add_user_live_stream+'?live_id=$id',);
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }

  @override
  Future<Either<KFailure, Unit>> endLive(int? id) async {
    Future<Response<dynamic>> func = Di.dioClient.post(KEndPoints.get_live_stream +'/$id', data: {"_method":"DELETE"});
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }


}
