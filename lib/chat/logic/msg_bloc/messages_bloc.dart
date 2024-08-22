import 'dart:async';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import '../../../extensions.dart';
import 'package:the_business_square/shared/cache/storage.dart';
import '../../../di.dart';
import '../../../shared/error/failures.dart';
import '../../../shared/localization/trans.dart';
import '../../data/models/chat_model.dart';
import '../../data/models/send_msg_model.dart';
import '../../data/repo/chat_repo.dart';
import '../messages_helper.dart';
import 'send_msg_state.dart';

class MessagesBloc extends Cubit<MessagesState> {
  MessagesBloc({required this.chatRepoImp}) : super(const MessagesState.loading());
  static MessagesBloc of(BuildContext context) => BlocProvider.of<MessagesBloc>(context);

  int? get my_id => KStorage.i.getUser?.id;

  final ChatRepoImp chatRepoImp;
  final TextEditingController txtCtrl = TextEditingController();

  ChatMsgsModel? chatModel = ChatMsgsModel(messages: []);
  File? selectedImage;
  PlatformFile? selectedFile;
  int? to_user_id;

  int page = 1;
  int totalPages = -1;
  int page_count = 25;

  Future get_all_msg(int? to_user_id) async {
    this.to_user_id = to_user_id;

    try {
      if (page >= 1 && totalPages == page) return;
      if (page >= 1 && totalPages > page) {
        page++;
        emit(const MessagesState.loadMore());
      } else {
        page = 1;
        emit(const MessagesState.loading());
      }
      final result = await chatRepoImp.fetchMessages(userId: to_user_id);
      result.fold(
        (l) {
          debugPrint('================= Chat Bloc get_all_msg : ${KFailure.toError(l)}');
          emit(MessagesState.error(error: KFailure.toError(l)));
        },
        (r) {
          chatModel = chatModel?.copyWith(
            messages: chatModel?.messages?..addAll(r.messages ?? []),
            lastPage: chatModel?.lastPage,
            lastMessageId: chatModel?.lastMessageId,
            total: chatModel?.total,
          );
          totalPages = (r.total! / page_count).ceil();
          emit(const MessagesState.success());
        },
      );
    } catch (e) {
      debugPrint('================= Chat Bloc get_all_msg (Catch): ${e.toString()} ');
      emit(MessagesState.error(error: Tr.get.try_again));
      rethrow;
    }
  }

  Future send_msg() async {
    if (txtCtrl.text.trim().isEmpty && selectedFile == null && selectedImage == null) return null;
    SendMsgModel msgModel = (await _make_msg(_msg_type)).copyWith(toId: to_user_id.toString(), isSender: true, fromId: my_id.toString());
    debugPrint('================= ${msgModel.toJson()} : ');
    chatModel = chatModel?.copyWith(messages: chatModel?.messages?..insert(0, msgModel));
    _reset;
    await _send_to_server(msgModel);
  }

  get _reset {
    txtCtrl.clear();
    selectedFile = null;
    selectedImage = null;
  }

  Future<void> _send_to_server(SendMsgModel sendMsgModel) async {
    emit(const MessagesState.successLocal());

    final result = await chatRepoImp.sendMessage(msg: sendMsgModel);
    result.fold(
      (l) {
        debugPrint('================= Chat Bloc get_all_msg : ${KFailure.toError(l)}');
        chatModel = chatModel?.copyWith(messages: chatModel?.messages?..removeWhere((element) => sendMsgModel.id == element.id));
        emit(const MessagesState.success());
      },
      (r) {
        chatModel = chatModel?.copyWith(messages: chatModel?.messages?.replaceFirst((element) => element.id == sendMsgModel.id, r));
        emit(MessagesState.success(sendMsgModel: r, rId: to_user_id));
      },
    );
  }

  MessageType get _msg_type {
    if (selectedFile != null) return MessageType.file;
    if (selectedImage != null) return MessageType.image;
    return MessageType.text;
  }

  Future<SendMsgModel> _make_msg(MessageType msg_type) async {
    return MsgHelper.make_msg(msg_type, selectedImage, selectedFile, txtCtrl.text);
  }

  pick_image() async {
    final pickedFile = await Di.imagePicker.pickImage(source: ImageSource.gallery, imageQuality: 100);
    if (pickedFile?.path != null) {
      selectedImage = File(pickedFile!.path);
    }
    selectedFile = null;
    _update;
  }

  del_img() {
    selectedImage = null;
    _update;
  }

  del_file() {
    selectedFile = null;
    _update;
  }

  pick_file() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.any,
      allowMultiple: false,
    );
    if (result?.files.map((e) => e).toList() != null && (result?.files.map((e) => e).toList() ?? []).isNotEmpty) {
      selectedFile = result?.files.map((e) => e).toList().first;
    }
    selectedImage = null;
    _update;
  }

  from_server(SendMsgModel msgModel) {
    if (msgModel.fromId == to_user_id.toString() && chatModel?.messages?.where((element) => element.id == msgModel.id).isEmpty == true) {
      chatModel = chatModel?.copyWith(messages: chatModel?.messages?..insert(0, msgModel));
      _update;
    }
  }

  get _update {
    emit(const MessagesState.loading());
    emit(const MessagesState.success());
  }
}
