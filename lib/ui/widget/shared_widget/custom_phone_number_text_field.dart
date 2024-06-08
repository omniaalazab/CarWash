import 'package:car_wash_app/helper/color_helper.dart';
import 'package:car_wash_app/helper/text_style_helper.dart';

import 'package:flutter/material.dart';

class CustomPhoneNumberssTextfield extends StatefulWidget {
  const CustomPhoneNumberssTextfield(
      {super.key,
      required this.labelText,
      required this.textFieldPhoneController,
      required this.validatorFunction,
      required this.keyboardType});
  final TextEditingController textFieldPhoneController;
  final String? Function(String?)? validatorFunction;
  final String labelText;
  final TextInputType keyboardType;

  @override
  State<CustomPhoneNumberssTextfield> createState() =>
      _CustomPhoneNumberssTextfieldState();
}

class _CustomPhoneNumberssTextfieldState
    extends State<CustomPhoneNumberssTextfield> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlignVertical: TextAlignVertical.center,
      cursorColor: ColorHelper.orange,
      keyboardType: widget.keyboardType,
      controller: widget.textFieldPhoneController,
      onChanged: (value) {},
      decoration: InputDecoration(
        // prefix: PrefixLoginWidget(),
        label: Text(
          widget.labelText,
          style: TextStyleHelper.textStylefontSize12.copyWith(
            color: ColorHelper.grey,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: ColorHelper.orange,
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: ColorHelper.grey.withOpacity(.5),
            width: 1,
          ),
        ),
      ),
      validator: widget.validatorFunction,
    );
  }
}
