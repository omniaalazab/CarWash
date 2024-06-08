import 'package:car_wash_app/controller/cubit/login_cubit.dart';
import 'package:car_wash_app/controller/cubit/login_states.dart';
import 'package:car_wash_app/ui/widget/subscription/ask_login.dart';
import 'package:car_wash_app/ui/views/subscription.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<LoginReturnedDataCubit, LogInStates>(
        builder: (context, state) {
          if (state is LogInInitialState) {
            return const AskToLoginWidget();
          } else if (state is LogInSucessState) {
            return const Subscription();
          } else {
            return const Center(
              child: Text('There is Error,Try again....'),
            );
          }
        },
      ),
    );
  }
}
