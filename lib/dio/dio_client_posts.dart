import 'package:dio/dio.dart';

class DioClientPosts {
  static Dio dio = Dio();
  static const baseURL = "";
  static const postsEndpoint = baseURL + "";

  // Future<> fetchPost() async{
  //   try {
  //     final response = await dio.get(postsEndpoint);
  //     return response.data; // TODO:
  //   } catch (e) {
  //     throw Exception("failed to load posts");
  //   }
  // }
}
