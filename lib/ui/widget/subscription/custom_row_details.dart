import 'package:car_wash_app/helper/text_style_helper.dart';
import 'package:car_wash_app/ui/widget/shared_widget/small_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomRowDetail extends StatelessWidget {
  const CustomRowDetail({super.key, required this.title, required this.title2});
  final String title;
  final String title2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(children: [
          const CustomSmallContainer(),
          const SizedBox(
            width: 10,
          ),
          Text(title, style: TextStyleHelper.textStylefontSize13),
        ]),
        Text(
          title2,
          style: TextStyleHelper.textStylefontSize15,
        ),
      ],
    );
  }
}
