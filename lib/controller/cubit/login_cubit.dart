import 'package:car_wash_app/api/auth/auth_service.dart';
import 'package:car_wash_app/controller/cubit/login_states.dart';
import 'package:car_wash_app/controller/login_shared_pref.dart';
import 'package:car_wash_app/model/login_model.dart';

import 'package:car_wash_app/ui/views/subscription.dart';
import 'package:car_wash_app/ui/widget/shared_widget/check_phone_number_send_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginReturnedDataCubit extends Cubit<LogInStates> {
  LoginReturnedDataCubit() : super(LogInInitialState());

  Future postLoginData(
      {required String username, required String password, var context}) async {
    try {
      if (username.isNotEmpty && password.isNotEmpty && password.length <= 8) {
        LoginModel? loginModel =
            await LoginPostAPIServices.postLoginData(username, password);

        if (loginModel.success == true) {
          CheckConfirmPassword.showSucessToast("تم التسجيل بنجاح");
          await SharedPrefHelper.setBool(key: "isLogin", value: true);
          Navigator.pushAndRemoveUntil(
              (context),
              MaterialPageRoute(builder: (_) => const Subscription()),
              (route) => false);
          // emit(LogInSucessState());
        } else {
          CheckConfirmPassword.showErrorToast("Data not fa");
        }
      } else {
        return false;
      }
    } catch (e) {
      emit(LogInErrorState(e.toString()));
    }
  }
}
