import 'package:car_wash_app/controller/check_validation_text_field.dart';
import 'package:car_wash_app/helper/color_helper.dart';
import 'package:car_wash_app/helper/text_style_helper.dart';
import 'package:car_wash_app/ui/widget/shared_widget/check_phone_number_send_otp.dart';
import 'package:car_wash_app/ui/widget/shared_widget/cuatom_text_field_with_keyboard_type.dart';
import 'package:car_wash_app/ui/widget/shared_widget/custom_elevated_button.dart';

import 'package:flutter/material.dart';

class BottomSheetModel extends StatefulWidget {
  const BottomSheetModel({super.key});

  @override
  State<BottomSheetModel> createState() => _BottomSheetModelState();
}

class _BottomSheetModelState extends State<BottomSheetModel> {
  final TextEditingController oldPWController = TextEditingController();

  final TextEditingController newPWController = TextEditingController();

  final TextEditingController confirmPWController = TextEditingController();
  bool isObsecureOldPw = true;
  bool isObsecureNewPw = true;
  bool isObsecureConfirm = true;

  @override
  void initState() {
    isObsecureOldPw = true;
    isObsecureNewPw = true;
    isObsecureConfirm = true;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            Center(
              child: Text(
                "تغيير كلمة المرور",
                style: TextStyleHelper.textStylefontSize18,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 60,
              child: CustomAllTextField(
                isObsecure: isObsecureOldPw,
                suffix: IconButton(
                  icon: isObsecureOldPw
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      isObsecureOldPw = !isObsecureOldPw;
                    });
                  },
                ),
                labelText: "كلمة المرور القديمة",
                textFieldController: oldPWController,
                validatorFunction: (value) {
                  CheckValidationTextField.checkIsEmpty(value);
                  return null;
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Form(
                autovalidateMode: AutovalidateMode.always,
                key: GlobalKey<FormState>(),
                child: Column(
                  children: [
                    SizedBox(
                      height: 60,
                      child: CustomAllTextField(
                        isObsecure: isObsecureNewPw,
                        suffix: IconButton(
                          icon: isObsecureNewPw
                              ? const Icon(Icons.visibility)
                              : const Icon(Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              isObsecureNewPw = !isObsecureNewPw;
                            });
                          },
                        ),
                        labelText: "كلمة المرور الجديدة",
                        textFieldController: newPWController,
                        validatorFunction: (value) {
                          CheckValidationTextField.checkIsEmpty(value);
                          if (pwController.text.length < 6 ||
                              confirmPWController.text.length < 6) {
                            return "password can't be less than 4";
                          } else {
                            return "valid";
                          }
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 60,
                      child: CustomAllTextField(
                          isObsecure: isObsecureConfirm,
                          suffix: IconButton(
                            icon: isObsecureConfirm
                                ? const Icon(Icons.visibility)
                                : const Icon(Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                isObsecureConfirm = !isObsecureConfirm;
                              });
                            },
                          ),
                          labelText: "تاكيد كلمة المرور ",
                          textFieldController: confirmPWController,
                          validatorFunction: (value) {
                            CheckValidationTextField.checkIsEmpty(value);
                            if (newPWController.text !=
                                confirmPWController.text) {
                              return "  كلمة المرور غير متطابق";
                            } else {
                              return "valid";
                            }
                          }),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                    ),
                    CustomElevatedButton(
                      textSize: 18,
                      sideColor: ColorHelper.black,
                      backColor: ColorHelper.black,
                      fontWeight: FontWeight.normal,
                      fontColor: Colors.white,
                      buttonText: "تغيير كلمة المرور",
                      onPressedFunction: () {
                        if (confirmPWController.text != newPWController.text ||
                            confirmPWController.text == "" ||
                            newPWController.text == "" ||
                            oldPWController.text == "") {
                          CheckConfirmPassword.showErrorDialogDefult();
                          CheckConfirmPassword.showErrorToast(
                              "كلمة المرور السابقة غير صحيحة");
                        } else {
                          CheckConfirmPassword.showSucessToast(
                              "تم تغيير كلمة المرور");
                        }
                      },
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
