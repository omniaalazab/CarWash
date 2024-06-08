import 'package:car_wash_app/helper/color_helper.dart';
import 'package:car_wash_app/helper/text_style_helper.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton(
      {super.key,
      required this.buttonText,
      required this.onPressedFunction,
      required this.backColor,
      required this.fontColor,
      this.sideColor,
      this.fontWeight = FontWeight.normal,
      this.textSize = 16,
      this.widthButton = double.infinity});
  final String buttonText;
  final double textSize;
  final Color backColor;
  final Color fontColor;
  late Color? sideColor;
  final FontWeight fontWeight;
  final double widthButton;
  final Function()? onPressedFunction;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressedFunction,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(widthButton, 50),
        backgroundColor: backColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
              color: sideColor ??= ColorHelper.orange,
            )),
      ),
      child: Text(
        buttonText,
        style: TextStyleHelper.textStylefontSize16.copyWith(
            fontWeight: fontWeight, color: fontColor, fontSize: textSize),
      ),
    );
  }
}
