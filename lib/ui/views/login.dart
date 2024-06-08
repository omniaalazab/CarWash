import 'package:car_wash_app/controller/check_text_field.dart';
import 'package:car_wash_app/controller/cubit/login_cubit.dart';

import 'package:car_wash_app/helper/color_helper.dart';
import 'package:car_wash_app/helper/text_style_helper.dart';

import 'package:car_wash_app/ui/views/forget_password.dart';

import 'package:car_wash_app/ui/views/registeration.dart';
import 'package:car_wash_app/ui/widget/login/prefix_widget.dart';
import 'package:car_wash_app/ui/widget/shared_widget/cuatom_text_field_with_keyboard_type.dart';

import 'package:car_wash_app/ui/widget/shared_widget/custom_elevated_button.dart';

import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController phoneNumberController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final LoginReturnedDataCubit loginCubit = LoginReturnedDataCubit();
  bool isObsecure = true;

  @override
  void initState() {
    isObsecure = true;

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
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  autovalidateMode: AutovalidateMode.always,
                  key: GlobalKey<FormState>(),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
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
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "تسجيل الدخول",
                        style: TextStyleHelper.textStylefontSize24,
                      ),
                      Text(
                        "مرحباً بعودتك",
                        style: TextStyleHelper.textStylefontSize16
                            .copyWith(fontWeight: FontWeight.w400),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      SizedBox(
                        height: 60,
                        child: CustomAllTextField(
                            prefix: const PrefixLoginWidget(),
                            keyboardType: TextInputType.text,
                            validatorFunction: (value) {
                              CheckTextField.checkIsEmpty(value);
                              return null;
                            },
                            labelText: "رقم الهاتف",
                            textFieldController: phoneNumberController),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 60,
                        child: CustomAllTextField(
                          isObsecure: isObsecure,
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
                          textFieldController: passwordController,
                          labelText: "كلمة المرور",
                          validatorFunction: (value) {
                            CheckTextField.checkIsEmpty(value);

                            return null;
                          },
                        ),
                      ),
                      // const SizedBox(
                      //   height: 5,
                      // ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    (context),
                                    MaterialPageRoute(
                                        builder: (_) => ForgetPassword()));
                              },
                              child: Text(
                                "نسيت كلمة المرور ؟",
                                style: TextStyleHelper.textStylefontSize14
                                    .copyWith(
                                  color: HexColor("EFA134"),
                                ),
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      CustomElevatedButton(
                        backColor: ColorHelper.black,
                        sideColor: ColorHelper.black,
                        fontColor: Colors.white,
                        fontWeight: FontWeight.bold,
                        buttonText: "تسجيل الدخول",
                        onPressedFunction: () {
                          loginCubit.postLoginData(
                            context: context,
                            username: phoneNumberController.text,
                            password: passwordController.text,
                          );
                        },
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("ليس لديك حساب ؟",
                              style:
                                  TextStyleHelper.textStylefontSize14.copyWith(
                                fontWeight: FontWeight.bold,
                                color: ColorHelper.grey,
                              )),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    (context),
                                    MaterialPageRoute(
                                        builder: (_) => const Registeration()));
                              },
                              child: Text(
                                "انشاء حساب",
                                style: TextStyleHelper.textStylefontSize14
                                    .copyWith(
                                  color: ColorHelper.orange,
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
      ),
    );
  }
}
