import 'package:dio/dio.dart';

class CustomInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Check the current route
    if (options.path.contains('/product-container/search')) {
      // Add headers for this specific route
      options.headers.addAll({
        // 'contentType': 'application/json',
        // 'Total-Pages': '1',
        // 'Total-Elements': '4',
      });

      options.contentType = 'application/json';
    }

    // Continue with the request
    handler.next(options);
  }
}
