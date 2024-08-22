class RegisterParams {
  RegisterParams({
    this.name,
    this.email,
    this.phone,
    this.gender,
    this.password,
    this.jobTitle,
    this.passwordConfirmation,
    this.country,

  });

  RegisterParams.fromJson(dynamic json) {
    name = json['name'];
    email = json['email'];

    phone = json['phone'];
    gender = json['gender'];
    password = json['password'];
    jobTitle = json['job_title'];
    passwordConfirmation = json['password_confirmation'];
  }
  String? name;
  String? email;
  String? phone;
  String? jobTitle;
  String? gender;
  String? password;
  String? fcmToken;
  String? country;
  String? passwordConfirmation;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['fcm_token'] = fcmToken;
    map['email'] = email;
    map['phone'] = phone;
    if (gender != null) map['gender'] = gender;
    if (password != null) map['password'] = password;
    map['job_title'] = jobTitle;
    map['country'] = country;
    if (passwordConfirmation != null) map['password_confirmation'] = passwordConfirmation;
    return map;
  }

  RegisterParams copyWith({
    String? name,
    String? email,
    String? phone,
    String? gender,
    String? jobTitle,
    String? password,

    String? country,
    String? passwordConfirmation,
  }) {
    return RegisterParams(
      email: email ?? this.email,
      password: password ?? this.password,

      name: name ?? this.name,

      phone: phone ?? this.phone,
      jobTitle: jobTitle ?? this.jobTitle,
      gender: gender ?? this.gender,
      country: country ?? this.country,
      passwordConfirmation: passwordConfirmation ?? this.passwordConfirmation,
    );
  }
}
