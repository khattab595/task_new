import 'package:injectable/injectable.dart';
import 'package:the_business_square/shared/api_client/dio_client_helper.dart';
import 'package:the_business_square/shared/error/failures.dart';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../di.dart';
import '../../../../shared/api_client/endpoints.dart';
import '../../../shared/cache/storage.dart';
import '../../models/notfication/Notofication_response.dart';

abstract class NotificationsRepoAbs {
  Future<Either<KFailure, NotoficationResponse>> fetchNotifications();
}

@injectable
class NotificationsRepoImp implements NotificationsRepoAbs {
  @override
  Future<Either<KFailure, NotoficationResponse>> fetchNotifications({int? page = 1}) async {
    Future<Response<dynamic>> func = Di.dioClient.get("${KEndPoints.notifications}/${KStorage.i.getUser!.id}", params: {
      "page": page,
      "page_count": 10,
    });
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(NotoficationResponse.fromJson(r)),
    );
  }
}
