import 'package:car_wash_app/helper/color_helper.dart';
import 'package:car_wash_app/helper/text_style_helper.dart';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class CustomAllTextField extends StatefulWidget {
  const CustomAllTextField({
    super.key,
    required this.labelText,
    required this.textFieldController,
    required this.validatorFunction,
    this.keyboardType = TextInputType.text,
    this.isObsecure = false,
    this.prefix = const SizedBox(
      height: 1,
    ),
    this.suffix = const SizedBox(
      height: 1,
    ),
    //PrefixLoginWidget(),
  });
  final TextEditingController textFieldController;

  final String labelText;
  final String? Function(String?)? validatorFunction;
  final TextInputType keyboardType;
  final Widget prefix;
  final Widget suffix;
  final bool isObsecure;
  @override
  State<CustomAllTextField> createState() =>
      _CustomTextFieldWithphoneKeyBoardState();
}

//final formKeyTextField = GlobalKey<FormState>();

class _CustomTextFieldWithphoneKeyBoardState extends State<CustomAllTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isObsecure,

      keyboardType: widget.keyboardType, //TextInputType.phone,
      cursorColor: HexColor("EFA134"),
      controller: widget.textFieldController,
      onChanged: (value) {},
      decoration: InputDecoration(
        suffix: widget.suffix,
        prefix: widget.prefix,
        label: Text(
          widget.labelText,
          style: TextStyleHelper.textStylefontSize13.copyWith(
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
