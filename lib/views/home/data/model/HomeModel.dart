import 'dart:convert';

import 'Owner.dart';


List<HomeModel> getHomeModelFromJson(String str) =>
    List<HomeModel>.from(
        json.decode(str).map((x) => HomeModel.fromJson(x)));

class HomeModel {
  HomeModel({
      this.name, 
      this.fullName, 
      this.owner,});

  HomeModel.fromJson(dynamic json) {
    name = json['name'];
    fullName = json['full_name'];
    owner = json['owner'] != null ? Owner.fromJson(json['owner']) : null;
  }
  String? name;
  String? fullName;
  Owner? owner;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['full_name'] = fullName;
    if (owner != null) {
      map['owner'] = owner?.toJson();
    }
    return map;
  }

}