import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

abstract class DioManager {
  static Dio get getDio {
    final dio = Dio();
    dio.interceptors.addAll([
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
      ),
    ]);

    dio.options.followRedirects = true;
    dio.options.maxRedirects = 5;
    dio.options.contentType = 'application/json';
    dio.options.headers.addAll({
      "Accept": "application/json",
    });

    return dio;
  }
}
