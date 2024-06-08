import 'package:car_wash_app/helper/color_helper.dart';
import 'package:car_wash_app/helper/text_style_helper.dart';
import 'package:car_wash_app/ui/views/login.dart';
import 'package:car_wash_app/ui/widget/shared_widget/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class AskToLoginWidget extends StatelessWidget {
  const AskToLoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          SizedBox(width: 300, child: Image.asset('assets/images/login.png')),
          const SizedBox(
            height: 10,
          ),
          Text(
            "من فضلك قم بتسجيل الدخول",
            style: TextStyleHelper.textStylefontSize18
                .copyWith(color: ColorHelper.orange),
          ),
          const SizedBox(
            height: 50,
          ),
          CustomElevatedButton(
            buttonText: "تسجيل الدخول",
            onPressedFunction: () {
              Navigator.pushAndRemoveUntil(context,
                  MaterialPageRoute(builder: (_) => Login()), (route) => false);
            },
            sideColor: ColorHelper.black,
            backColor: ColorHelper.black,
            fontWeight: FontWeight.bold,
            fontColor: Colors.white,
            widthButton: MediaQuery.of(context).size.width * 0.7,
          ),
        ],
      ),
    );
  }
}
