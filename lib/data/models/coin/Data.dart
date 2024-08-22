class CoinPackage {
  CoinPackage({
    this.id,
    this.name,
    this.price,
    this.coins,
    this.createdAt,
    this.updatedAt,
  });

  CoinPackage.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    coins = json['coins'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  int? id;
  String? name;
  int? price;
  int? coins;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['price'] = price;
    map['coins'] = coins;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }
}
