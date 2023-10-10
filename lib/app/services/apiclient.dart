import "package:dio/dio.dart";

import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../static/constante.dart';

//paramètre réseau pour avoir accès à l'API
class Client {
  late Dio _dio;
  static String url = baseUrlAndaalStore;

  Client() {
    var options = BaseOptions(
      baseUrl: url,
      connectTimeout: Duration(milliseconds: 5000),
      receiveTimeout: Duration(milliseconds: 5000),
    );
    _dio = Dio(options);
    //_dio.interceptors.add(CustomInterceptors());
    _dio.interceptors.add(PrettyDioLogger(
      requestHeader: false,
      requestBody: true,
      responseBody: false,
      responseHeader: false,
      compact: false,
    ));
  }

  Dio getDio() {
    return _dio;
  }
}
