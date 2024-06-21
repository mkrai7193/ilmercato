
import 'dart:convert';

import 'package:dio/dio.dart';
import 'ServerConstants.dart';

class ApiHelper {

  static Dio getDioClient() {
    Map<String, dynamic> customHeader = {
      'Content-Type': 'application/json',
      'Authorization': 'Basic ' +
      //    base64Encode(utf8.encode('ck_45c88be32252408c6cc76bdddb2d16f4bfc7494f:cs_c01fd3415c60ad2854bbaaa3e1aa3d70b97b564f')),
          base64Encode(utf8.encode('ck_315fb5facf5db03e75806655fee79848ba720a60:cs_b561bd1c830c767c9d14f60b2ed36ba0ac1ef3eb')),
    };
    final BaseOptions options = new BaseOptions(
      baseUrl: ServerConstants.BASE_URL,
      // connectTimeout: 20000,
      // receiveTimeout: 20000,
      headers: customHeader,
      followRedirects: false,
      validateStatus: (status) {
        return status! < 500;
      },
    );
    Dio dio = Dio(options);
    dio.interceptors.add(LogInterceptor(responseBody: true));
    return dio;
  }
}
