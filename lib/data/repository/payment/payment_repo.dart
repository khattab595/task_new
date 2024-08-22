import 'package:injectable/injectable.dart';
import 'package:the_business_square/di.dart';
import 'package:the_business_square/shared/api_client/dio_client_helper.dart';
import 'package:the_business_square/shared/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../shared/api_client/endpoints.dart';

/// import '../../models/payment/auth/payment_auth_response.dart';
/// import '../../models/payment/order/Order_prams.dart';
/// import '../../models/payment/order/Order_response.dart';
/// import '../../models/payment/payment_key/Payment_key_prams.dart';
/// import '../../models/payment/payment_key/Payment_key_response.dart';
/// import 'package:the_business_square/shared/cache/storage.dart';
/// import 'package:the_business_square/data/models/payment/order/ShippingData.dart';
/// import 'package:the_business_square/data/models/payment/payment_key/BillingData.dart';
abstract class PaymentRepoAbs {
  Future<Either<KFailure, String>> createPayment({required int package_id});
  Future<Either<KFailure, Unit>> updatePayment({required String? payment_id, required String status});
}

@injectable
class PaymentRepoImp implements PaymentRepoAbs {
  @override
  Future<Either<KFailure, String>> createPayment({int? package_id}) async {
    Future<Response<dynamic>> func = Di.dioClient.post(KEndPoints.createPayment, data: {"package_id": package_id});
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold((l) => left(l), (r) => right(r?['data']?['id'].toString() ?? '-1'));
  }

  @override
  Future<Either<KFailure, Unit>> updatePayment({required String? payment_id, required String status}) async {
    Future<Response<dynamic>> func = Di.dioClient.put(KEndPoints.createPayment + "/$payment_id", data: {"status": status});
    final result = await ApiClientHelper.responseToModel(func: func);
    return result.fold((l) => left(l), (r) => right(unit));
  }

  /// static BaseOptions options = BaseOptions(
  ///   baseUrl: KEndPoints.baseUrl,
  ///   contentType: 'application/json',
  ///   connectTimeout: Duration(seconds: 30),
  ///   receiveTimeout: Duration(minutes: 10),
  ///   sendTimeout: Duration(minutes: 10),
  ///   validateStatus: (status) => status! < 500,
  /// );
  ///
  /// final _dio = Dio(options)..interceptors.add(PrettyDioLogger(requestBody: true));

  /// String get api_key =>
  ///     "ZXlKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6VXhNaUo5LmV5SmpiR0Z6Y3lJNklrMWxjbU5vWVc1MElpd2libUZ0WlNJNkltbHVhWFJwWVd3aUxDSndjbTltYVd4bFgzQnJJam8zTVRZNE9EZDkuZGpvRG1qTExoY1lyWkpWT2FFY2ZEdnhWemZRc3p4VzdBNjIzUDRJNTM2OXpmVWNVSWR0RHQzRDVfMTc5cXJGeVdyYnRRMktZX3RPZndwNzZsMGpUZnc=";

  /// Future<Either<KFailure, OrderResponse>> _paymentOrder(OrderPrams orderPrams) async {
  ///   Future<Response<dynamic>> func = _dio.post(KEndPoints.orders, data: orderPrams.toJson());
  ///   final result = await ApiClientHelper.responseToModel(func: func);
  ///   return result.fold(
  ///     (l) => left(l),
  ///     (r) => right(OrderResponse.fromJson(r)),
  ///   );
  /// }

  /// Future<Either<KFailure, PaymentKeyResponse>> _paymentKey(PaymentKeyPrams paymentPrams) async {
  ///   Future<Response<dynamic>> func = _dio.post(KEndPoints.paymentKey, data: paymentPrams.toJson());
  ///   final result = await ApiClientHelper.responseToModel(func: func);
  ///   return result.fold(
  ///     (l) => left(l),
  ///     (r) => right(PaymentKeyResponse.fromJson(r, paymentPrams.payment_id)),
  ///   );
  /// }

  /// Future<Either<KFailure, PaymentKeyResponse>> _createPayment({required int? amountCents, required String payment_id}) async {
  ///   Future<Response<dynamic>> func = _dio.post(
  ///     KEndPoints.authPayment,
  ///     options: Options(contentType: 'application/json', sendTimeout: Duration(minutes: 10), validateStatus: (status) => status! < 500, headers: {}),
  ///     data: {"api_key": api_key},
  ///   );
  ///   final result = await ApiClientHelper.responseToModel(func: func);
  ///   return result.fold(
  ///     (l) => left(l),
  ///     (r) async {
  ///       final payAuth = PaymentAuthResponse.fromJson(r);
  ///       final payment = await _paymentOrder(_orderPrams(payAuth.token, amountCents));
  ///       return payment.fold(
  ///         (l) => left(l),
  ///         (r) async {
  ///           final payKey = await _paymentKey(_paymentKeyPrams(r, payment_id, payAuth.token));
  ///           return payKey.fold(
  ///             (l) => left(l),
  ///             (r) => right(r),
  ///           );
  ///         },
  ///       );
  ///     },
  ///   );
  /// }

  /// static OrderPrams _orderPrams(String? token, int? amountCents) {
  ///   return OrderPrams(
  ///     amountCents: ((amountCents ?? 0) * 100).toString(),
  ///     authToken: token,
  ///     currency: "EGP",
  ///     shippingData: ShippingData(
  ///       email: userData.email,
  ///       country: userData.country,
  ///       firstName: userData.name,
  ///       lastName: userData.name,
  ///       phoneNumber: userData.phone,
  ///       extraDescription: "",
  ///     ),
  ///   );
  /// }

  /// static final userData = KStorage.i.getUser!;

  /// static PaymentKeyPrams _paymentKeyPrams(OrderResponse r, String payment_id, String? token) {
  ///   r.merchant?.state;
  ///   return PaymentKeyPrams(
  ///     currency: "EGP",
  ///     amountCents: r.amountCents.toString(),
  ///     authToken: token,
  ///     orderId: r.id.toString(),
  ///     expiration: 3600,
  ///     payment_id: payment_id,
  ///     integrationId: 3523355,
  ///     billingData: BillingData(
  ///       email: userData.email,
  ///       country: userData.country,
  ///       state: 'asd ad',
  ///       apartment: 'da sdada sd ',
  ///       building: 'as dasd as d',
  ///       city: 'gf gg f',
  ///       floor: 'hg hg h',
  ///       street: 'ewewewe',
  ///       firstName: userData.name,
  ///       lastName: userData.name,
  ///       phoneNumber: userData.phone,
  ///     ),
  ///   );
  /// }
}
