import 'package:car_wash_app/api/dio_helper.dart';
import 'package:car_wash_app/controller/cubit/login_cubit.dart';
import 'package:car_wash_app/controller/cubit/login_states.dart';
import 'package:car_wash_app/ui/views/login.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

void main() async {
  runApp(const CarWash());
  DioHelper.initDio();
}

class CarWash extends StatelessWidget {
  const CarWash({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginReturnedDataCubit(),
      child: Builder(builder: (context) {
        return BlocBuilder<LoginReturnedDataCubit, LogInStates>(
            builder: (context, state) {
          return const GetMaterialApp(
            debugShowCheckedModeBanner: false,
            home: Login(),
          );
        });
      }),
    );
  }
}
