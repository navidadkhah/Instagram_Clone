import 'package:dio/dio.dart';
import 'package:get/get.dart';

class ApiController extends GetxController {
  late Dio dio;

  @override
  void onInit() {
    BaseOptions options = BaseOptions(
      baseUrl: "http://10.0.2.2:8000/api", // TODO: update this

      headers: {
        "authorization": "Bearer <TOKEN>" // TODO: update token
      },
    );
    dio = Dio(options);
    super.onInit();
  }
}
