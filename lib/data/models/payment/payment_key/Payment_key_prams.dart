import 'BillingData.dart';

class PaymentKeyPrams {
  PaymentKeyPrams({
    this.authToken,
    this.amountCents,
    this.expiration,
    this.orderId,
    this.billingData,
    this.currency,
    this.integrationId,
    required this.payment_id,
  });

  String? authToken;
  String? amountCents;
  int? expiration;
  String? orderId;
  BillingData? billingData;
  String? currency;
  int? integrationId;

  String payment_id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['auth_token'] = authToken;
    map['amount_cents'] = amountCents;
    map['expiration'] = expiration;
    map['order_id'] = orderId;
    if (billingData != null) {
      map['billing_data'] = billingData!.toJson();
    }
    map['currency'] = currency;
    map['integration_id'] = integrationId;
    return map;
  }
}
