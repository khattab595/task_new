import 'dart:async';
import '../../logic/core/api_client/api_client_bloc.dart';
import 'endpoints.dart';
import 'interceptor.dart';
import 'package:dio/dio.dart';

class DioClientImpl {
  final List<Interceptor> otherInterceptors;
  final BaseOptions? baseOptions;
  ApiClientBloc apiClientBloc;

  DioClientImpl({this.otherInterceptors = const [], this.baseOptions, required this.apiClientBloc}) {
    _dio.interceptors
      ..add(UserInterceptor(
        onRequestCallback: apiClientBloc.onRequestCallBack,
        onResponseCallback: apiClientBloc.onResponseCallBack,
        onErrorCallback: apiClientBloc.onErrorCallBack,
        onRetry: apiClientBloc.scheduleRetry,
      ))
      ..addAll(otherInterceptors)
      ..add(PrettyDioLogger());
    if (baseOptions != null) {
      options = baseOptions!;
    }
  }

  static BaseOptions options = BaseOptions(
    baseUrl: KEndPoints.baseUrl,
    contentType: 'application/json',
    connectTimeout: Duration(seconds: 30),
    receiveTimeout: Duration(minutes: 10),
    sendTimeout: Duration(minutes: 10),
    validateStatus: (status) => status! < 500,
  );

  final _dio = Dio(options);

  Future<Response> get(String path, {Map<String, dynamic>? params, Options? options}) {
    return _dio.get(path, queryParameters: params, options: options);
  }

  Future<Response> post(String path, {Map<String, dynamic>? params, Options? options, data}) {
    return _dio.post(path, data: data, queryParameters: params, options: options);
  }

  Future<Response> paymentPost(String path, {Map<String, dynamic>? params, Options? options, data}) {
    return _dio.post(path, data: data, queryParameters: params, options: options);
  }

  Future<Response> postWithFiles(String path, {Map<String, dynamic>? params, Options? options, data}) {
    return _dio.post(
      path,
      data: FormData.fromMap(data),
      queryParameters: params,
      options: options
        ?..headers?.addAll(
          {
            "Accept": "application/json",
            "Content-Type": "multipart/form-data",
          },
        ),
    );
  }

  Future<Response> patch(String path, {Map<String, dynamic>? params, Options? options, data}) {
    return _dio.patch(path, data: data, queryParameters: params, options: options);
  }

  Future<Response> put(String path, {Map<String, dynamic>? params, Options? options, data}) {
    return _dio.put(path, data: data, queryParameters: params, options: options);
  }

  Future<Response> delete(String path, {Map<String, dynamic>? params, Options? options, data}) {
    return _dio.delete(path, data: data, queryParameters: params, options: options);
  }

  Future<Response> request(
    String path, {
    data,
    Map<String, dynamic>? params,
    CancelToken? cancelToken,
    Options? options,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) {
    return _dio.request(
      path,
      data: data,
      queryParameters: params,
      options: options,
      onReceiveProgress: onReceiveProgress,
      onSendProgress: onSendProgress,
      cancelToken: cancelToken,
    );
  }
}
