import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../localization/trans.dart';
part 'failures.freezed.dart';

@freezed
class KFailure with _$KFailure {
  const factory KFailure.error(String error) = KFailureError;
  const factory KFailure.server() = KFailureServer;
  const factory KFailure.error401(String e) = KFailureError401;
  const factory KFailure.error403(String e) = KFailureError403;
  const factory KFailure.offline({RequestOptions? option}) = KFailureOffline;
  const factory KFailure.userNotFound() = KFailureUserNotFound;
  const factory KFailure.locationDenied() = KFailureLocationDenied;
  const factory KFailure.locationDisabled() = KFailureLocationDisabled;
  const factory KFailure.locationDeniedPermanently() = KFailureLocationDeniedPermanently;
  const factory KFailure.someThingWrongPleaseTryAgain() = KFailureSomeThingWrongPleaseTryAgain;

  static String toError(KFailure failure) {
    return failure.when(
      server: () => Tr.get.try_later,
      offline: (option) => Tr.get.no_connection,
      userNotFound: () => "User Not Found",
      locationDisabled: () => Tr.get.location_disabled,
      error: (error) => error,
      locationDenied: () => Tr.get.location_denaid,
      locationDeniedPermanently: () => Tr.get.location_denaid_permanently,
      someThingWrongPleaseTryAgain: () => Tr.get.try_later,
      error401: (e) => e,
      error403: (e) => e,
    );
  }
}
// flutter pub run build_runner watch --delete-conflicting-outputs
