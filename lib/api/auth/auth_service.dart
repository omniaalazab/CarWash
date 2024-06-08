import 'dart:developer';

import 'package:car_wash_app/api/dio_helper.dart';
import 'package:car_wash_app/model/login_model.dart';

import 'package:dio/dio.dart';

class LoginPostAPIServices {
  static Future<LoginModel> postLoginData(
      String username, String password) async {
    try {
      Response response = await DioHelper.post(
          'https://json-placeholder.mock.beeceptor.com/login',
          {'username': username, 'password': password});
      LoginModel loginModel = LoginModel.fromjson(response.data);
      log(loginModel.message ?? "");
      return loginModel;
    } on DioException catch (e) {
      String errormsg = e.response?.data['error']['message'] ??
          'There is Error,try again Later...';

      throw Exception(errormsg);
    } catch (e) {
      log(e.toString());

      throw Exception('There is error,try again');
    }
  }
}
