import 'package:car_wash_app/helper/text_style_helper.dart';
import 'package:car_wash_app/ui/widget/shared_widget/small_controller.dart';
import 'package:flutter/material.dart';

class CustomRowHeadTitle extends StatelessWidget {
  const CustomRowHeadTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomSmallContainer(),
        const SizedBox(
          width: 10,
        ),
        Text(title, style: TextStyleHelper.textStylefontSize12),
      ],
    );
  }
}
