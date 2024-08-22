import 'package:dio/dio.dart';

class UpdateProfileParams {
  UpdateProfileParams({
    this.name,
    this.email,
    this.phone,
    this.image,
    this.jobTitle,
    this.method,
  });

  UpdateProfileParams.fromJson(dynamic json) {
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    method = "patch";

    image = json['image'];
    jobTitle = json['job_title'];
  }
  String? name;
  String? email;
  String? phone;
  String? image;
  String? jobTitle;
  String? method;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_method'] = "patch";
    if (name != null) map['name'] = name;
    if (email != null) map['email'] = email;
    if (phone != null) map['phone'] = phone;
    if (jobTitle != null) map['job_title'] = jobTitle;
    if (image != null) map['image'] = MultipartFile.fromFileSync(image!);
    return map;
  }

  UpdateProfileParams copyWith({
    String? name,
    String? email,
    String? phone,
    String? image,
    String? method,
    String? jobTitle,
  }) {
    return UpdateProfileParams(
      email: email ?? this.email,
      image: image ?? this.image,
      name: name ?? this.name,
      phone: phone ?? this.phone,
      jobTitle: jobTitle ?? this.jobTitle,
      method: "patch",
    );
  }
}
