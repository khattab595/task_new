// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:dio/dio.dart';
import 'package:the_business_square/shared/api_client/endpoints.dart';

abstract class MessageType {
  const MessageType();

  static const MessageType text = _TextMsg();
  static const MessageType file = _FileMsg();
  static const MessageType image = _ImageMsg();

  static List<MessageType> types = [text, file, image];

  factory MessageType.fromStr(String str) {
    MessageType? type;
    for (var t in types) {
      if (t.toString() == str) {
        type = t;
      }
    }
    return type ?? types.first;
  }
  @override
  String toString() {
    return 'text';
  }
}

class _TextMsg extends MessageType {
  const _TextMsg();
  @override
  String toString() => 'text';
}

class _FileMsg extends MessageType {
  const _FileMsg();
  @override
  String toString() => 'file';
}

class _ImageMsg extends MessageType {
  const _ImageMsg();
  @override
  String toString() => 'image';
}

class Attachment {
  String? file;
  String? title;
  MessageType? type;

  Attachment({this.file, this.title, this.type});

  Attachment.fromJson(Map<String, dynamic> json) {
    file = KEndPoints.baseUrl + json['file'].toString();
    title = json['title'];
    type = json['type'] != null ? MessageType.fromStr(json['type']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.file != null) {
      data['file'] = MultipartFile.fromFileSync(this.file!);
    }
    data['title'] = this.title;
    data['type'] = this.type;
    return data;
  }

  Attachment copyWith({
    String? file,
    String? title,
    MessageType? type,
  }) {
    return Attachment(
      file: file ?? this.file,
      title: title ?? this.title,
      type: type ?? this.type,
    );
  }
}
