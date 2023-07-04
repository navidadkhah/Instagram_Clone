import 'package:dio/dio.dart';
import 'package:instagram_flutter/dio/dio_client_posts.dart';
//import 'package:dio_playground/dio/dio_client.dart';

class TokenManager extends Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    switch (err.type) {
      case DioErrorType.connectTimeout:
        {
          print("connectTimeout");
        }
        break;
      case DioErrorType.response:
        {
          print("response not valid");
        }
        break;
    }
    super.onError(err, handler);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers["token"] = "";

    if (options.headers["refreshToken"] == null) {
      DioClientPosts.dio.lock();
      Dio _tokenDio = Dio();
      _tokenDio.get('/token').then((value) {
        options.headers["refreshTolen"] = value.data['data']['token'];
        handler.next(options);
      }).catchError((error) {
        handler.reject(error, true);
      }).whenComplete(() {
        DioClientPosts.dio.unlock();
      });
    }
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // TODO: implement onResponse
    super.onResponse(response, handler);
  }
}
