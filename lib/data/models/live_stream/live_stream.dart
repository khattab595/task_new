// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../notfication/Pagination.dart';

class LiveStreamsResponse {
  int? status;
  String? message;
  List<LiveStream>? data;
  Pagination? pagination;
  LiveStreamsResponse({
    this.status,
    this.message,
    this.data,
    this.pagination,
  });

  LiveStreamsResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <LiveStream>[];

      json['data'].forEach((v) {
        data!.add(LiveStream.fromJson(v));
      });
    }
    pagination = json['pagination'] != null ? Pagination.fromJson(json['pagination']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }

    return data;
  }

  LiveStreamsResponse copyWith({
    int? status,
    String? message,
    List<LiveStream>? data,
    Pagination? pagination,
  }) {
    return LiveStreamsResponse(
      status: status ?? this.status,
      message: message ?? this.message,
      data: data ?? this.data,
      pagination: pagination ?? this.pagination,
    );
  }
}

class LiveStream {
  int? id;
  String? title;
  String? channel;
  int? cost;
  String? description;
  String? status;
  String? token;
  String? image;
  int? userId;
  String? categoryId;
  String? createdAt;
  String? updatedAt;

  LiveStream(
      {this.id,
      this.title,
      this.channel,
      this.cost,
      this.description,
      this.status,
      this.token,
      this.image,
      this.userId,
      this.categoryId,
      this.createdAt,
      this.updatedAt});

  LiveStream.fromJson(Map<String, dynamic> json) {
    debugPrint('================= ***************************** : ');
    id = json['id'];
    title = json['title'];
    channel = json['channel'];
    cost = int.tryParse(json['cost'].toString());
    description = json['description'];
    status = json['status'];
    token = json['token'];
    image = (json['image'] is Map<String, dynamic>) ? '' : json['image'];
    userId = json['user_id'];
    categoryId = json['category_id'].toString();
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['channel'] = this.channel;
    data['cost'] = int.tryParse(this.cost.toString());
    data['description'] = this.description;
    data['token'] = this.token;
    if (this.image != null) data['image'] = MultipartFile.fromFileSync(this.image!);
    data['category_id'] = this.categoryId;
    return data;
  }
}
