import 'package:car_wash_app/helper/text_style_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomRowOrder extends StatelessWidget {
  const CustomRowOrder({
    required this.summaryOrderTitle,
    required this.orderPrice,
    super.key,
  });
  final String summaryOrderTitle;
  final String orderPrice;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          summaryOrderTitle,
          style: TextStyleHelper.textStylefontSize14,
        ),
        Text(orderPrice, style: TextStyleHelper.textStylefontSize14),
      ],
    );
  }
}
