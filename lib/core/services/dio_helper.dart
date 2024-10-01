import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:role_based_auth_system/core/services/local/token_service.dart';

class DioHelper {
  static late Dio dio;
  static bool isShowingError = true;
  static init(String baseUrl) {
    dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        receiveDataWhenStatusError: true,
      ),
    )..interceptors.add(
        PrettyDioLogger(
          requestBody: true,
          compact: true,
          request: true,
          requestHeader: true,
          responseHeader: true,
          responseBody: true,
        ),
      );
    (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () =>
        HttpClient()
          ..badCertificateCallback =
              (X509Certificate cert, String host, int port) => true;
  }

  static Future<Response> getData({
    required String endpoint,
    Map<String, dynamic>? body,
  }) async {
    try {
      dio.options.headers = {
        'Accept': 'application/json',
        if (UserTokenService.currentUserToken.isNotEmpty)
          "Authorization": UserTokenService.currentUserToken,
      };
      Response response = await dio.get(
        endpoint,
        data: body,
      );
      if (response.statusCode == 200) {
        return response;
      } else {
        throw Exception(response.data['message']);
      }
    } on DioException catch (e) {
      isShowingError = false;
      if (e is SocketException ||
          e.type == DioExceptionType.unknown ||
          e.type == DioExceptionType.connectionError ||
          e.type == DioExceptionType.connectionTimeout && isShowingError) {
        isShowingError = true;
        throw Exception('Network error. Please check your connection');
      } else {
        isShowingError = true;
        throw Exception(e.error);
      }
    }
  }

  static Future<Response> postData({
    required String endpoint,
    required Map<String, dynamic> body,
    Map<String, dynamic>? query,
    Object? formData,
    String? token,
  }) async {
    dio.options.headers = {
      'Accept': 'application/json',
      if (UserTokenService.currentUserToken.isNotEmpty || token != null)
        "Authorization": token ?? UserTokenService.currentUserToken,
      'Content-Type':
          formData != null ? "multipart/form-data" : 'application/json'
    };
    try {
      Response response = await dio.post(
        endpoint,
        queryParameters: query,
        data: formData ?? body,
      );
      return response;
    } on DioException catch (e) {
      if (e is SocketException ||
          e.type == DioExceptionType.unknown ||
          e.type == DioExceptionType.connectionError ||
          e.type == DioExceptionType.connectionTimeout && isShowingError) {
        isShowingError = true;
        throw Exception('Check your internet connection');
      } else {
        isShowingError = true;
        throw Exception("${e.response?.data['message']}");
      }
    }
  }

  static Future<Response> putData({
    required String endpoint,
    required Map<String, dynamic> body,
    String? userToken,
  }) {
    dio.options.headers = {
      'Accept': 'application/json',
      if (userToken != null) "Authorization": userToken,
    };
    return dio.put(
      endpoint,
      data: body,
    );
  }
}
