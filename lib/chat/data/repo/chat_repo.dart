import 'package:injectable/injectable.dart';

import '../../../../shared/api_client/endpoints.dart';
import '../../../shared/api_client/dio_client_helper.dart';
import '../../../shared/error/failures.dart';
import '../models/chat_rooms_model.dart';
import '../models/chat_model.dart';
import "package:dartz/dartz.dart";
import "package:dio/dio.dart";
import '../../../../di.dart';

abstract class ChatRepoAbs {
  Future<Either<KFailure, SendMsgModel>> sendMessage({required SendMsgModel msg});
  Future<Either<KFailure, RoomContactModel>> getContacts();
  Future<Either<KFailure, ChatMsgsModel>> fetchMessages({required int userId});
}
@injectable
class ChatRepoImp implements ChatRepoAbs {
  @override
  Future<Either<KFailure, ChatMsgsModel>> fetchMessages({required int? userId}) async {
    Future<Response<dynamic>> func = Di.dioClient.post(KEndPoints.fetchMessages, data: {"id": userId});
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold((l) => left(l), (r) => right(ChatMsgsModel.fromJson(r)));
  }

  @override
  Future<Either<KFailure, SendMsgModel>> sendMessage({required SendMsgModel msg}) async {
    Future<Response<dynamic>> func = Di.dioClient.post(
      KEndPoints.sendMessage,
      data: FormData.fromMap({
        if (msg.attachment?.file != null) "file": MultipartFile.fromFileSync(msg.attachment!.file!),
        "id": msg.toId,
        "message": msg.message,
      }),
    );

    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold(
      (l) => left(l),
      (r) => right(SendMsgModel.fromJson(r["message"])),
    );
  }

  @override
  Future<Either<KFailure, RoomContactModel>> getContacts() async {
    Future<Response<dynamic>> func = Di.dioClient.get(KEndPoints.getContacts);
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold((l) => left(l), (r) => right(RoomContactModel.fromJson(r)));
  }
}
