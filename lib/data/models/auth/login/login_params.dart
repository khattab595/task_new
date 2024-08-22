// ignore_for_file: public_member_api_docs, sort_constructors_first



class LoginParams {
  LoginParams.fromJson(dynamic json) {
    email = json['email'];
    password = json['password'];

  }
  String? email;
  String? password;

  LoginParams({
    this.email,
    this.password,

  });

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['email'] = email;
    map['password'] = password;

    return map;
  }

  LoginParams copyWith({
    String? email,
    String? password,

  }) {
    return LoginParams(
      email: email ?? this.email,
      password: password ?? this.password,

    );
  }
}
