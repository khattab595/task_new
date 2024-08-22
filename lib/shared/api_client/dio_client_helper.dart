// ignore_for_file: deprecated_member_use

import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../error/failures.dart';
import '../theme/helper.dart';

abstract class ApiClientHelper {
  static Future<Either<KFailure, dynamic>> responseToModel({Future<Response<dynamic>>? func, Response<dynamic>? res}) async {
    assert(func != null || res != null);
    if (await ConnectivityCheck.call()) {
      try {
        final response = ((await func) ?? res)!;

        if (response.statusCode == 200 || response.statusCode == 201) {
          if (response.data['status'] == 'error') {
            KHelper.showSnackBar(response.data['message']);
          }
          return right(response.data);
        } else if (response.statusCode == 500) {
          return left(KFailure.error(response.data));
        } else if (response.statusCode == 422) {
          return left(KFailure.error(response.data['message'].toString()));
        } else if (response.statusCode == 401) {
          return left(KFailure.error401(response.data['message'].toString()));
        } else if (response.statusCode == 403) {
          return left(KFailure.error403("access denied"));
        } else {
          return left(KFailure.error(response.data.toString()));
        }
      } on DioError catch (e) {
        debugPrint('=================>> DioError : ${e.message} , ${e.type} ${e.error}');
        switch (e.type) {
          case DioErrorType.connectionTimeout:
            return left(const KFailure.error("Request Time out"));
          case DioErrorType.receiveTimeout:
            return left(const KFailure.error("Receive Time out"));
          case DioErrorType.badResponse:
            return left(KFailure.error(e.message ?? ''));
          case DioErrorType.unknown:
            if (e.error != null && e.error is SocketException) {
              return left(KFailure.offline(option: e.requestOptions));
            } else {
              debugPrint('=================> 1');
              return left(const KFailure.someThingWrongPleaseTryAgain());
            }
          default:
            debugPrint('=================> 2');
            return left(const KFailure.someThingWrongPleaseTryAgain());
        }
      } catch (e) {
        debugPrint('=================> 3');
        return left(KFailure.error(e.toString()));
      }
    } else {
      return left(const KFailure.offline());
    }
  }
}

abstract class ConnectivityCheck {
  static final Connectivity _connectivity = Connectivity();

  static Future<bool> call() async {
    var connectivityResult = await (_connectivity.checkConnectivity());
    if (connectivityResult == ConnectivityResult.none) {
      return false;
    } else {
      return true;
    }
  }

  static Stream<ConnectivityResult> get connectionStream {
    return _connectivity.onConnectivityChanged;
  }
}
