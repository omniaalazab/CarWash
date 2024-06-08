import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;

  static Future<void> initDio() async {
    dio = Dio();
  }

  static Future<Response<dynamic>> post(String path, Object datat) async {
    Response response = await dio.post(path, data: datat);
    return response;
  }
}
