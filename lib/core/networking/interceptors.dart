import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    final modifiedOptions = options
      ..headers.addAll(
        {
          'Authorization':
              'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJjOTRmN2M0ZGUxNzcwYTk0NjI4NzEwMTVhNmUwZWZmZCIsInN1YiI6IjVhNGQzMTAzYzNhMzY4MzhkYTAxMzMxMyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.jX1usYTsoKKQ3WTuNmjbcIjpXc6yCZ8N8w3KRpNIpVk',
          'accept': 'application/json'
        },
      );
    handler.next(modifiedOptions);
  }
}
