import 'Data.dart';
import 'Pagination.dart';

class PostsResponse {
  PostsResponse({
    this.status,
    this.message,
    this.data,
    this.pagination,
  });

  PostsResponse.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data!.add(PostData.fromJson(v));
      });
    }
    pagination = json['pagination'] != null ? Pagination.fromJson(json['pagination']) : null;
  }
  int? status;
  String? message;
  List<PostData>? data;
  Pagination? pagination;

 PostsResponse copyWith({
    int? status,
    String? message,
    List<PostData>? data,
    Pagination? pagination,
  }) {
  return  PostsResponse(
      data: data ?? this.data,
      pagination: pagination ?? this.pagination,
    );
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    if (data != null) {
      map['data'] = data!.map((v) => v.toJson()).toList();
    }
    if (pagination != null) {
      map['pagination'] = pagination!.toJson();
    }
    return map;
  }
}
