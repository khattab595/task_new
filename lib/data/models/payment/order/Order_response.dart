import 'Merchant.dart';
import 'ShippingData.dart';

class OrderResponse {
  OrderResponse({
    this.id,
    this.createdAt,
    this.deliveryNeeded,
    this.merchant,
    this.amountCents,
    this.shippingData,
    this.currency,
    this.isPaymentLocked,
    this.isReturn,
    this.isCancel,
    this.isReturned,
    this.isCanceled,
    this.paidAmountCents,
    this.notifyUserWithEmail,
    this.orderUrl,
    this.commissionFees,
    this.deliveryFeesCents,
    this.deliveryVatCents,
    this.paymentMethod,
    this.apiSource,
    this.token,
    this.url,
  });

  OrderResponse.fromJson(dynamic json) {
    id = json['id'];
    createdAt = json['created_at'];
    deliveryNeeded = json['delivery_needed'];
    merchant = json['merchant'] != null ? Merchant.fromJson(json['merchant']) : null;
    amountCents = json['amount_cents'];
    shippingData = json['shipping_data'] != null ? ShippingData.fromJson(json['shipping_data']) : null;
    currency = json['currency'];
    isPaymentLocked = json['is_payment_locked'];
    isReturn = json['is_return'];
    isCancel = json['is_cancel'];
    isReturned = json['is_returned'];
    isCanceled = json['is_canceled'];
    paidAmountCents = json['paid_amount_cents'];
    notifyUserWithEmail = json['notify_user_with_email'];
    orderUrl = json['order_url'];
    commissionFees = json['commission_fees'];
    deliveryFeesCents = json['delivery_fees_cents'];
    deliveryVatCents = json['delivery_vat_cents'];
    paymentMethod = json['payment_method'];
    apiSource = json['api_source'];
    token = json['token'];
    url = json['url'];
  }
  int? id;
  String? createdAt;
  bool? deliveryNeeded;
  Merchant? merchant;
  int? amountCents;
  ShippingData? shippingData;
  String? currency;
  bool? isPaymentLocked;
  bool? isReturn;
  bool? isCancel;
  bool? isReturned;
  bool? isCanceled;
  int? paidAmountCents;
  bool? notifyUserWithEmail;
  String? orderUrl;
  int? commissionFees;
  int? deliveryFeesCents;
  int? deliveryVatCents;
  String? paymentMethod;
  String? apiSource;
  String? token;
  String? url;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['created_at'] = createdAt;
    map['delivery_needed'] = deliveryNeeded;
    if (merchant != null) {
      map['merchant'] = merchant!.toJson();
    }
    map['amount_cents'] = amountCents;
    if (shippingData != null) {
      map['shipping_data'] = shippingData!.toJson();
    }
    map['currency'] = currency;
    map['is_payment_locked'] = isPaymentLocked;
    map['is_return'] = isReturn;
    map['is_cancel'] = isCancel;
    map['is_returned'] = isReturned;
    map['is_canceled'] = isCanceled;
    map['paid_amount_cents'] = paidAmountCents;
    map['notify_user_with_email'] = notifyUserWithEmail;
    map['order_url'] = orderUrl;
    map['commission_fees'] = commissionFees;
    map['delivery_fees_cents'] = deliveryFeesCents;
    map['delivery_vat_cents'] = deliveryVatCents;
    map['payment_method'] = paymentMethod;
    map['api_source'] = apiSource;
    map['token'] = token;
    map['url'] = url;
    return map;
  }
}
