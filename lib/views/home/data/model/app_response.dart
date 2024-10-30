

import 'package:get/get_connect/http/src/response/response.dart';

class AppResponse {
  dynamic data;



  AppResponse({
    this.data,

  });

  factory AppResponse.fromJson(Map<String, dynamic> json) => AppResponse(
    data: json['data'],

  );

  Map<String, dynamic> toJson() => {
    'data': data,

  };



 }