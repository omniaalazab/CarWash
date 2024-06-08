import 'package:car_wash_app/controller/check_validation_text_field.dart';
import 'package:car_wash_app/helper/color_helper.dart';
import 'package:car_wash_app/helper/text_style_helper.dart';
import 'package:car_wash_app/ui/views/login.dart';
import 'package:car_wash_app/ui/widget/shared_widget/cuatom_text_field_with_keyboard_type.dart';
import 'package:car_wash_app/ui/widget/shared_widget/custom_dropdown_menu.dart';

import 'package:car_wash_app/ui/widget/shared_widget/custom_elevated_button.dart';

import 'package:flutter/material.dart';

class Registeration extends StatefulWidget {
  const Registeration({super.key});

  @override
  State<Registeration> createState() => _RegisterationState();
}

class _RegisterationState extends State<Registeration> {
  final TextEditingController phoneNumberRegistrationController =
      TextEditingController();

  final TextEditingController passwordRegistrationController =
      TextEditingController();

  final TextEditingController confirmRegistrationPasswordController =
      TextEditingController();

  final TextEditingController userNameController = TextEditingController();

  final TextEditingController mailController = TextEditingController();
  bool isObsecurePass = true;
  bool isObsecureConfirmPass = true;
  @override
  void initState() {
    isObsecurePass = true;
    isObsecureConfirmPass = true;

    super.initState();
  }

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
                padding: const EdgeInsets.fromLTRB(20, 11, 20, 11),
                child: Column(
                  children: [
                    Container(
                      width: 300,
                      height: 150,
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                          image: AssetImage("assets/images/car_wash_logo.jpg"),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "تسجيل حساب جديد ",
                      style: TextStyleHelper.textStylefontSize24,
                    ),
                    Text(
                      "مرحباً بك",
                      style: TextStyleHelper.textStylefontSize16,
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Form(
                        autovalidateMode: AutovalidateMode.always,
                        key: GlobalKey<FormState>(),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 60,
                              child: CustomAllTextField(
                                  validatorFunction: (value) {
                                    CheckValidationTextField.checkIsEmpty(
                                        value);
                                    return null;
                                  },
                                  labelText: "الاسم ",
                                  textFieldController: userNameController),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              height: 60,
                              child: CustomAllTextField(
                                  validatorFunction: (value) {
                                    CheckValidationTextField.checkIsEmpty(
                                        value);
                                    return null;
                                  },
                                  labelText: "رقم الهاتف",
                                  textFieldController:
                                      phoneNumberRegistrationController),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              height: 60,
                              child: CustomAllTextField(
                                  validatorFunction: (value) {
                                    CheckValidationTextField.checkIsEmpty(
                                        value);
                                    return null;
                                  },
                                  labelText: "البريد الالكترونى",
                                  textFieldController: mailController),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 55,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const CustomDropdownMenu(),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              height: 60,
                              child: CustomAllTextField(
                                isObsecure: isObsecurePass,
                                suffix: IconButton(
                                  icon: isObsecurePass
                                      ? const Icon(Icons.visibility)
                                      : const Icon(Icons.visibility_off),
                                  onPressed: () {
                                    setState(() {
                                      isObsecurePass = !isObsecurePass;
                                    });
                                  },
                                ),
                                textFieldController:
                                    passwordRegistrationController,
                                labelText: "كلمة المرور",
                                validatorFunction: (value) {
                                  CheckValidationTextField.checkIsEmpty(value);
                                  // CheckTextField.checkPassword(value);
                                  return null;
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              height: 60,
                              child: CustomAllTextField(
                                  isObsecure: isObsecureConfirmPass,
                                  suffix: IconButton(
                                    icon: isObsecureConfirmPass
                                        ? const Icon(Icons.visibility)
                                        : const Icon(Icons.visibility_off),
                                    onPressed: () {
                                      setState(() {
                                        isObsecureConfirmPass =
                                            !isObsecureConfirmPass;
                                      });
                                    },
                                  ),
                                  validatorFunction: (value) {
                                    CheckValidationTextField.checkIsEmpty(
                                        value);

                                    return null;
                                  },
                                  labelText: "تاكيد كلمة المرور",
                                  textFieldController:
                                      confirmRegistrationPasswordController),
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomElevatedButton(
                      backColor: ColorHelper.black,
                      sideColor: ColorHelper.black,
                      fontColor: Colors.white,
                      fontWeight: FontWeight.bold,
                      buttonText: "تسجيل حساب",
                      onPressedFunction: () {
                        if (confirmRegistrationPasswordController.text !=
                            passwordRegistrationController.text) {
                          return "  كلمة المرور غير متطابق";
                        } else {
                          return "valid";
                        }
                      },
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(" لديك حساب بالفعل ؟",
                            style: TextStyleHelper.textStylefontSize14.copyWith(
                              fontWeight: FontWeight.bold,
                              color: ColorHelper.grey,
                            )),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  (context),
                                  MaterialPageRoute(
                                      builder: (_) => const Login()));
                            },
                            child: Text(
                              "تسجيل الدخول",
                              style:
                                  TextStyleHelper.textStylefontSize14.copyWith(
                                color: ColorHelper.yellow,
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
