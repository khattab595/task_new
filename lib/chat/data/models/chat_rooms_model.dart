// ignore_for_file: public_member_api_docs, sort_constructors_first


class RoomContactModel {
  List<RoomContact>? contacts;
  int? total;
  int? lastPage;

  RoomContactModel({this.contacts, this.total, this.lastPage});

  RoomContactModel.fromJson(Map<String, dynamic> json) {
    if (json['contacts'] != null) {
      contacts = <RoomContact>[];
      json['contacts'].forEach((v) {
        contacts!.add(new RoomContact.fromJson(v));
      });
    }
    total = json['total'];
    lastPage = json['last_page'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.contacts != null) {
      data['contacts'] = this.contacts!.map((v) => v.toJson()).toList();
    }
    data['total'] = this.total;
    data['last_page'] = this.lastPage;
    return data;
  }

  RoomContactModel copyWith({
    List<RoomContact>? contacts,
    int? total,
    int? lastPage,
  }) {
    return RoomContactModel(
      contacts: contacts ?? this.contacts,
      total: total ?? this.total,
      lastPage: lastPage ?? this.lastPage,
    );
  }
}

class RoomContact {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? jobTitle;
  String? country;
  String? role;
  String? image;
  String? gender;
  String? status;
  String? nickName;
  String? companyName;
  String? maxCreatedAt;

  RoomContact({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.jobTitle,
    this.country,
    this.role,
    this.image,
    this.gender,
    this.status,
    this.nickName,
    this.companyName,
    this.maxCreatedAt,
  });

  RoomContact.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    jobTitle = json['job_title'];
    country = json['country'];
    role = json['role'];
    image = json['image'];
    gender = json['gender'];
    status = json['status'];
    nickName = json['nick_name'];
    companyName = json['company_name'];
    maxCreatedAt = json['max_created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['job_title'] = this.jobTitle;
    data['country'] = this.country;
    data['role'] = this.role;
    data['image'] = this.image;
    data['gender'] = this.gender;
    data['status'] = this.status;
    data['nick_name'] = this.nickName;
    data['company_name'] = this.companyName;
    data['max_created_at'] = this.maxCreatedAt;
    return data;
  }

  RoomContact copyWith({
    int? id,
    String? name,
    String? email,
    String? phone,
    String? jobTitle,
    String? country,
    String? role,
    String? image,
    String? gender,
    String? status,
    String? nickName,
    String? companyName,
    String? maxCreatedAt,
  }) {
    return RoomContact(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      jobTitle: jobTitle ?? this.jobTitle,
      country: country ?? this.country,
      role: role ?? this.role,
      image: image ?? this.image,
      gender: gender ?? this.gender,
      status: status ?? this.status,
      nickName: nickName ?? this.nickName,
      companyName: companyName ?? this.companyName,
      maxCreatedAt: maxCreatedAt ?? this.maxCreatedAt,
    );
  }
}
