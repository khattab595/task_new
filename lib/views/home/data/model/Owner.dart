/// avatar_url : "https://avatars.githubusercontent.com/u/262517?v=4"

class Owner {
  Owner({
      this.avatarUrl,});

  Owner.fromJson(dynamic json) {
    avatarUrl = json['avatar_url'];
  }
  String? avatarUrl;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['avatar_url'] = avatarUrl;
    return map;
  }

}