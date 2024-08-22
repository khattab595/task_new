import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:the_business_square/chat/data/models/chat_model.dart';
import 'dart:ui' as ui;
import '../../di.dart';
import '../data/models/send_msg_model.dart';

abstract class MsgHelper {
  static const String locationBase = "http://maps.google.com/maps?z=12&t=m&q=loc:";

  static bool isLocation(String? text) => (text ?? '').contains(locationBase);

  static Future<ui.Image> getImageInfo(String path) async {
    File image = File(path);
    return await decodeImageFromList(image.readAsBytesSync());
  }

  static bool isAllEmoji(String text) {
    for (String s in Di.emojiParser.unemojify(text).split(" ")) {
      if (!s.startsWith(":") || !s.endsWith(":")) return false;
    }
    return true;
  }

  static Future<SendMsgModel> make_msg(MessageType msg_type, [File? selectedImage, PlatformFile? selectedFile, String? text]) async {
    final str = Di.emojiParser.unemojify(text ?? '');
    switch (msg_type) {
      case MessageType.file:
        return SendMsgModel(
          message: str,
          attachment: Attachment(
            file: selectedFile?.path,
            title: selectedFile?.path?.split('/').last,
            type: MessageType.file,
          ),
        );
      case MessageType.image:
        return SendMsgModel(
          message: str,
          attachment: Attachment(
            file: selectedImage?.path,
            title: selectedImage?.path.split('/').last,
            type: MessageType.image,
          ),
        );
      default:
        return SendMsgModel(message: str);
    }
  }
}
