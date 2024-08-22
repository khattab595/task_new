import 'ShippingData.dart';

class OrderPrams {
  OrderPrams({
    this.authToken,
    this.amountCents,
    this.currency,
    this.shippingData,
  });
  OrderPrams.fromJson(dynamic json) {
    authToken = json['auth_token'];
    amountCents = json['amount_cents'];
    currency = json['currency'];
    shippingData = json['shipping_data'] != null
        ? ShippingData.fromJson(json['shipping_data'])
        : null;
  }
  String ?authToken;
  String? amountCents;
  String? currency;
  ShippingData? shippingData;
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['auth_token'] = authToken;
    map['amount_cents'] = amountCents;
    map['currency'] = currency;
    if (shippingData != null) {
      map['shipping_data'] = shippingData!.toJson();
    }
    return map;
  }
}
