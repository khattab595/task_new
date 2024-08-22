import 'Data.dart';

class CoinResponse {
  CoinResponse({
    this.status,
    this.message,
    this.data,
  });

  CoinResponse.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data!.add(CoinPackage.fromJson(v));
      });
    }
  }
  int? status;
  String? message;
  List<CoinPackage>? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    if (data != null) {
      map['data'] = data!.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
