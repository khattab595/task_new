import 'Data.dart';class AddPostModel {  AddPostModel({      this.status,       this.message,       this.data,});  AddPostModel.fromJson(dynamic json) {    status = json['status'];    message = json['message'];    data = json['data'] != null ? DataPost.fromJson(json['data']) : null;  }  int? status;  String ?message;  DataPost? data;  Map<String, dynamic> toJson() {    final map = <String, dynamic>{};    map['status'] = status;    map['message'] = message;    if (data != null) {      map['data'] = data!.toJson();    }    return map;  }}