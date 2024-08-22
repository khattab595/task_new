// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'send_msg_model.dart';

class ChatMsgsModel {
  int? total;
  int? lastPage;
  String? lastMessageId;
  List<SendMsgModel>? messages;

  ChatMsgsModel({this.total, this.lastPage, this.lastMessageId, this.messages});

  ChatMsgsModel.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    lastPage = json['last_page'];
    lastMessageId = json['last_message_id'];
    if (json['messages'] != null) {
      messages = <SendMsgModel>[];
      json['messages'].forEach((v) {
        messages!.add(new SendMsgModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total'] = this.total;
    data['last_page'] = this.lastPage;
    data['last_message_id'] = this.lastMessageId;
    if (this.messages != null) {
      data['messages'] = this.messages!.map((v) => v.toJson()).toList();
    }
    return data;
  }

  ChatMsgsModel copyWith({
    int? total,
    int? lastPage,
    String? lastMessageId,
    List<SendMsgModel>? messages,
  }) {
    return ChatMsgsModel(
      total: total ?? this.total,
      lastPage: lastPage ?? this.lastPage,
      lastMessageId: lastMessageId ?? this.lastMessageId,
      messages: messages ?? this.messages,
    );
  }
}

class SendMsgModel {
  String? id;
  String? fromId;
  String? toId;
  String? message;
  Attachment? attachment;
  String? timeAgo;
  String? createdAt;
  bool? isSender;
  bool? seen;
  String? updatedAt;

  SendMsgModel({
    this.id,
    this.fromId,
    this.toId,
    this.message,
    this.attachment,
    this.timeAgo,
    this.createdAt,
    this.isSender,
    this.seen,
    this.updatedAt,
  });

  SendMsgModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fromId = json['from_id'].toString();
    toId = json['to_id'].toString();
    message = json['message'] ?? json['body'];
    attachment = json['attachment'] != null ? new Attachment.fromJson(json['attachment']) : null;
    timeAgo = json['timeAgo'];
    createdAt = json['created_at'];
    isSender = json['isSender'];
    seen = json['seen'] == 1;
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['from_id'] = this.fromId;
    data['to_id'] = this.toId;
    data['message'] = this.message;
    data['attachment'] = this.attachment?.toJson();
    data['timeAgo'] = this.timeAgo;
    data['created_at'] = this.createdAt;
    data['isSender'] = this.isSender;
    data['seen'] = this.seen;
    data['updated_at'] = this.updatedAt;
    return data;
  }

  SendMsgModel copyWith({
    String? id,
    String? fromId,
    String? toId,
    String? message,
    Attachment? attachment,
    String? timeAgo,
    String? createdAt,
    bool? isSender,
    bool? seen,
    String? body,
    String? updatedAt,
  }) {
    return SendMsgModel(
      id: id ?? this.id,
      fromId: fromId ?? this.fromId,
      toId: toId ?? this.toId,
      message: message ?? this.message,
      attachment: attachment ?? this.attachment,
      timeAgo: timeAgo ?? this.timeAgo,
      createdAt: createdAt ?? this.createdAt,
      isSender: isSender ?? this.isSender,
      seen: seen ?? this.seen,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}
