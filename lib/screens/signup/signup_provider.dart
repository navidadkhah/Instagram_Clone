import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:instagram_flutter/globals/controllers/api_controller.dart';
import 'package:instagram_flutter/screens/signup/models/sign_up_model.dart';

class SignupProvider {
  static Future<SignUp?> signUp(String email, String password) async {
    ApiController apiController = Get.find();
    try {
      final result = await apiController.dio.post("/auth/signup/", data: {
        "email": email,
        "password": password,
      });
      return signUpFromMap(result.data);
    } on DioError catch (e) {
      print(e);
      return null;
    }
  }
}
