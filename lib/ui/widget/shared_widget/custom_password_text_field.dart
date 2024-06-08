import 'package:car_wash_app/helper/color_helper.dart';
import 'package:car_wash_app/helper/text_style_helper.dart';
import 'package:flutter/material.dart';

class CustomPasswordttTextField extends StatefulWidget {
  const CustomPasswordttTextField({
    super.key,
    required this.labelText,
    required this.passwordTextEditingCnontroller,
    required this.validatorFunction,
  });
  final TextEditingController passwordTextEditingCnontroller;
  final String labelText;
  final String? Function(String?)? validatorFunction;

  @override
  State<CustomPasswordttTextField> createState() =>
      _CustomPasswordTextFieldState();
}

class _CustomPasswordTextFieldState extends State<CustomPasswordttTextField> {
  bool isObsecure = true;

  final formKeyPW = GlobalKey<FormState>();
  @override
  void initState() {
    isObsecure = true;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Form(
        // autovalidateMode: AutovalidateMode.always,
        key: formKeyPW,
        child: SizedBox(
          height: 70,
          width: double.infinity,
          child: TextFormField(
            obscureText: isObsecure,
            controller: widget.passwordTextEditingCnontroller,
            onChanged: (value) {},
            decoration: InputDecoration(
              suffix: IconButton(
                icon: isObsecure
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    isObsecure = !isObsecure;
                  });
                },
              ),
              label: Text(
                widget.labelText,
                style: TextStyleHelper.textStylefontSize14.copyWith(
                  color: ColorHelper.black.withOpacity(.3),
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
            // onSaved: ,
            validator: widget.validatorFunction,
          ),
        ),
      ),
    );
  }
}
