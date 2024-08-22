import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:pusher_channels_flutter/pusher_channels_flutter.dart';
import 'package:the_business_square/chat/data/models/chat_model.dart';
import 'package:the_business_square/chat/logic/pusher/larvel_echo.dart';
import 'package:the_business_square/shared/theme/logger.dart';

import '../../../shared/error/failures.dart';
import '../../../shared/localization/trans.dart';
import '../../data/models/chat_rooms_model.dart';
import '../../data/repo/chat_repo.dart';
import 'chat_state.dart';

@injectable
class ChatRoomsBloc extends Cubit<ChatRoomsState> {
  ChatRoomsBloc({required this.chatRepoImp}) : super(const ChatRoomsState.initial()) {
    EchoSingleton.init(
      (event) => from_server(event),
    );
  }

  static ChatRoomsBloc of(BuildContext context) => BlocProvider.of<ChatRoomsBloc>(context);

  final ChatRepoImp chatRepoImp;
  RoomContactModel? roomsModel = RoomContactModel(contacts: []);

  get_all_rooms() async {
    try {
      emit(const ChatRoomsState.loading());
      final result = await chatRepoImp.getContacts();
      result.fold(
        (l) {
          debugPrint('================= Chat Bloc : ${KFailure.toError(l)}');
          emit(ChatRoomsState.error(error: KFailure.toError(l)));
        },
        (r) {
          roomsModel = r;
          emit(const ChatRoomsState.success());
        },
      );
    } catch (e) {
      debugPrint('================= Chat Bloc (Catch): ${e.toString()} ');
      emit(ChatRoomsState.error(error: Tr.get.try_again));
    }
  }

  List<String?> _hasUnReaddList = [];
  bool hasUnReadd(String? fromId) => _hasUnReaddList.contains(fromId);
  removeUnReadd(String? fromId) {
    emit(const ChatRoomsState.loading());
    _hasUnReaddList.removeWhere((element) => fromId == element);
    emit(const ChatRoomsState.success());
  }

  from_server(PusherEvent event) {
    if (event.eventName == "messaging") {
      emit(const ChatRoomsState.loading());
      final msg = jsonDecode(event.data ?? "{}") as Map<String, dynamic>;
      debugPrint('=================> From Server  to_id is >> ${msg['to_id']}  ,,, from_id is >>  ${msg['from_id']}');
      printMap(msg["message"]);
      SendMsgModel msgModel = SendMsgModel.fromJson(msg["message"]).copyWith(isSender: false);
      _hasUnReaddList.add(msgModel.fromId);
      emit(ChatRoomsState.newMessage(msgModel));
    }
  }

  on_error(err, StackTrace stack) {
    debugPrint('===== event.data  ============ ${err} : ${stack.toString()} ');
  }

  @override
  close() async {
    await EchoSingleton.unSub();
    EchoSingleton.pusher.disconnect();
    super.close();
  }
}
