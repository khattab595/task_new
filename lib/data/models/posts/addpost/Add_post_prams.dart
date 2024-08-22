import 'package:dio/dio.dart';

class AddPostPrams {
  AddPostPrams({
    this.title,
    this.description,
    this.image,
    this.categoryId,
    this.phone,
    this.detailsAddress,
    this.country,
    this.startDate,
    this.endDate,
    this.startTime,
    this.endTime,
    this.imageId,
  });

  AddPostPrams.fromJson(dynamic json) {
    title = json['title'];
    description = json['description'];
    imageId = json['id_image'];

    image = json['image'];
    categoryId = json['category_id'];
    phone = json['phone'];
    detailsAddress = json['details_address'];
    country = json['country'];
    startDate = json['start_date'];
    endDate = json['end_date'];
    startTime = json['start_time'];
    endTime = json['end_time'];
  }
  String? title;
  String? description;

  String? image;
  String? imageId;
  String? categoryId;
  String? phone;
  String? detailsAddress;
  String? country;
  String? startDate;
  String? endDate;
  String? startTime;
  String? endTime;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['description'] = description;
    if (image != null) map['image'] = MultipartFile.fromFileSync(image!);
    if (imageId != null) map['id_image'] = MultipartFile.fromFileSync(imageId!);
    map['category_id'] = categoryId;
    map['phone'] = phone;
    map['details_address'] = detailsAddress;
    map['country'] = country;
    map['start_date'] = startDate;
    map['end_date'] = endDate;
    map['start_time'] = startTime;
    map['end_time'] = endTime;
    return map;
  }

  AddPostPrams copyWith({
    String? title,
    String? description,
    String? image,
    String? imageId,
    String? categoryId,
    String? phone,
    String? detailsAddress,
    String? country,
    String? startDate,
    String? endDate,
    String? startTime,
    String? endTime,
  }) {
    return AddPostPrams(
      title: title ?? this.title,
      description: description ?? this.description,
      image: image ?? this.image,
      imageId: imageId ?? this.imageId,
      categoryId: categoryId ?? this.categoryId,
      phone: phone ?? this.phone,
      detailsAddress: detailsAddress ?? this.detailsAddress,
      country: country ?? this.country,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
    );
  }
}
