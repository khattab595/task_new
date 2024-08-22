class PaymentKeyResponse {
  PaymentKeyResponse({
    this.token,
    this.payment_id,
  });

  PaymentKeyResponse.fromJson(dynamic json ,String?  payment_id) {
    token = json['token'];
    this.payment_id = payment_id;
  }
  String? token;
  String? payment_id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = token;
    return map;
  }
}
