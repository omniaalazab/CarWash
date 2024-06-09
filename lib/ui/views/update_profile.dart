import 'package:car_wash_app/controller/check_empty_validation_text_field.dart';

import 'package:car_wash_app/helper/color_helper.dart';
import 'package:car_wash_app/helper/text_style_helper.dart';
import 'package:car_wash_app/ui/widget/shared_widget/cuatom_text_field_with_keyboard_type.dart';
import 'package:car_wash_app/ui/widget/shared_widget/custom_dropdown_menu.dart';
import 'package:car_wash_app/ui/widget/shared_widget/custom_elevated_button.dart';
import 'package:car_wash_app/ui/widget/update_profile/change_password.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:hexcolor/hexcolor.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({super.key});

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController phoneNoController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: HexColor("F7F7F7"),
        //HexColor("F6D71C"),
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "تحديث الملف الشخصى",
            style: TextStyleHelper.textStylefontSize18,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 11, 20, 11),
            child: Center(
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 105,
                        width: 105,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(30),
                          ),
                          border:
                              Border.all(color: ColorHelper.orange, width: 3),
                        ),
                        child: Center(
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(253, 236, 235, 235),
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: const Icon(
                              Icons.person_outlined,
                              size: 50,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                      child: Text(
                    "body",
                    style: TextStyleHelper.textStylefontSize18,
                  )),
                  const SizedBox(
                    height: 60,
                  ),
                  Form(
                      autovalidateMode: AutovalidateMode.always,
                      key: GlobalKey<FormState>(),
                      child: Column(
                        children: [
                          CustomAllTextField(
                            validatorFunction: (value) {
                              CheckEmptyValidationTextField.checkIsEmpty(value);
                              return null;
                            },
                            labelText: "اسم بالكامل",
                            textFieldController: usernameController,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomAllTextField(
                              validatorFunction: (value) {
                                CheckEmptyValidationTextField.checkIsEmpty(
                                    value);
                                return null;
                              },
                              labelText: "رقم الهاتف",
                              textFieldController: phoneNoController),
                          const SizedBox(
                            height: 20,
                          ),
                          CustomAllTextField(
                            validatorFunction: (value) {
                              CheckEmptyValidationTextField.checkIsEmpty(value);
                              return null;
                            },
                            textFieldController: mailController,
                            labelText: "البريد الالكترونى",
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 60,
                            width: double.maxFinite,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const CustomDropdownMenu(),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          CustomElevatedButton(
                            fontColor: HexColor("1E1E24"),
                            fontWeight: FontWeight.w700,
                            buttonText: "تغيير كلمة المرور",
                            onPressedFunction: () {
                              Get.bottomSheet(
                                backgroundColor: Colors.white,
                                const BottomSheetModel(),
                              );
                            },
                            backColor: Colors.white,
                            sideColor: HexColor("EFA134"),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          CustomElevatedButton(
                              buttonText: "تحديث",
                              onPressedFunction: () {},
                              sideColor: ColorHelper.black,
                              backColor: ColorHelper.black,
                              fontWeight: FontWeight.bold,
                              fontColor: Colors.white),
                        ],
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
