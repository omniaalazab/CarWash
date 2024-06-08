import 'package:car_wash_app/helper/color_helper.dart';
import 'package:flutter/material.dart';

class CustomSmallContainer extends StatelessWidget {
  const CustomSmallContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 5,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
              colors: [
                // backgroundColor(fd5d35), backgroundColor(ffded5),
                ColorHelper.yellow,
                ColorHelper.orange,
              ])),
    );
  }
}
