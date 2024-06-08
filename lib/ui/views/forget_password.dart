import 'package:car_wash_app/controller/check_validation_text_field.dart';
import 'package:car_wash_app/helper/color_helper.dart';
import 'package:car_wash_app/helper/text_style_helper.dart';
import 'package:car_wash_app/ui/widget/shared_widget/check_phone_number_send_otp.dart';
import 'package:car_wash_app/ui/widget/shared_widget/cuatom_text_field_with_keyboard_type.dart';

import 'package:car_wash_app/ui/widget/shared_widget/custom_elevated_button.dart';

import 'package:flutter/material.dart';

class ForgetPassword extends StatelessWidget {
  ForgetPassword({super.key});
  final TextEditingController phoneNumberToSendOTPController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: NestedScrollView(
            headerSliverBuilder: (context, isScrolleed) => [
              const SliverAppBar(
                backgroundColor: Colors.white,
                leading: Icon(Icons.arrow_back),
              )
            ],
            body: SingleChildScrollView(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          width: 300,
                          height: 150,
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                            image: DecorationImage(
                              image:
                                  AssetImage("assets/images/car_wash_logo.jpg"),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "نسيت كلمة المرور ",
                        style: TextStyleHelper.textStylefontSize24,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "قم بادخال رقم الجوال للحصول على كود التحقق ",
                        style: TextStyleHelper.textStylefontSize13
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 45,
                      ),
                      SizedBox(
                        height: 60,
                        child: CustomAllTextField(
                            validatorFunction: (value) {
                              CheckValidationTextField.checkIsEmpty(value);

                              if (value!.length != 11) {
                                return " رقم هاتف غير صحيح";
                              } else {
                                return "valid";
                              }
                            },
                            labelText: "رقم الجوال",
                            textFieldController:
                                phoneNumberToSendOTPController),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      CustomElevatedButton(
                        backColor: ColorHelper.black,
                        sideColor: ColorHelper.black,
                        fontColor: Colors.white,
                        fontWeight: FontWeight.bold,
                        buttonText: "ارسال OTP",
                        onPressedFunction: () {
                          if (phoneNumberToSendOTPController.text !=
                              '01097766076') {
                            CheckConfirmPassword.showErrorDialogDefult();
                            CheckConfirmPassword.showErrorToast(
                                "رقم هاتف غير صالح");
                          } else {
                            CheckConfirmPassword.showSucessToast(
                                "تم الارسال بنجاح");
                          }
                        },
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
