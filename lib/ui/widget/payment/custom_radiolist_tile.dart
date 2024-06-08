import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomRadioListTile extends StatelessWidget {
  const CustomRadioListTile({
    super.key,
    required this.payment,
    required this.radioTitle,
    required this.radioValue,
  });
  final String radioTitle;
  final String radioValue;
  final String? payment;

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
        title: Text(
          radioTitle,
          style: const TextStyle(
              fontFamily: "Cairo", fontSize: 14, fontWeight: FontWeight.w500),
        ),
        value: radioValue,
        groupValue: payment,
        selectedTileColor: HexColor("EFA134"),
        activeColor: HexColor("EFA134"),
        hoverColor: HexColor("EFA134"),
        onChanged: (val) {});
  }
}
