import 'package:car_wash_app/controller/check_text_field.dart';
import 'package:car_wash_app/helper/color_helper.dart';
import 'package:car_wash_app/helper/text_style_helper.dart';
import 'package:car_wash_app/ui/widget/payment/custom_column_summary_order.dart';
import 'package:car_wash_app/ui/widget/payment/custom_radiolist_tile.dart';
import 'package:car_wash_app/ui/widget/payment/custom_row_title.dart';
import 'package:car_wash_app/ui/widget/shared_widget/cuatom_text_field_with_keyboard_type.dart';
import 'package:car_wash_app/ui/widget/shared_widget/custom_elevated_button.dart';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Payment extends StatelessWidget {
  Payment({super.key});
  final TextEditingController codeDiscountTextController =
      TextEditingController();
  final String? payment = "دفع كاش للمندوب";
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
            "الدفع",
            style: TextStyleHelper.textStylefontSize18,
          ),
          leading: const Icon(Icons.arrow_back),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 25, 10, 25.0),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        "غسلة (داخلى و خارجى)",
                        style: TextStyleHelper.textStylefontSize15,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomRowHeadTitle(title: "طرق الدفع"),
                    const SizedBox(
                      height: 15,
                    ),
                    Card(
                      elevation: 0,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            CustomRadioListTile(
                              payment: payment,
                              radioTitle: "تحويل بنكى",
                              radioValue: "تحويل بنكى",
                            ),
                            CustomRadioListTile(
                              payment: payment,
                              radioTitle: "دفع كاش للمندوب",
                              radioValue: "دفع كاش للمندوب",
                            ),
                            CustomRadioListTile(
                                payment: payment,
                                radioTitle: "دفع الكترونى (visa / master)",
                                radioValue: "دفع الكترونى (visa / master)"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: CustomRowHeadTitle(title: "كود الخصم"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 0,
                  child: Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: CustomAllTextField(
                              validatorFunction: (value) {
                                CheckTextField.checkIsEmpty(value);
                                return null;
                              },
                              textFieldController: codeDiscountTextController,
                              labelText: 'كود الخصم',
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                          child: CustomElevatedButton(
                            sideColor: ColorHelper.black,
                            fontColor: Colors.white,
                            backColor: ColorHelper.black,
                            textSize: 14,
                            buttonText: "تطبيق",
                            onPressedFunction: () {},
                            widthButton:
                                MediaQuery.of(context).size.width * 0.2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CustomRowHeadTitle(title: "ملخص الطلب"),
                    SizedBox(
                      height: 15,
                    ),
                    Card(
                      elevation: 0,
                      color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.all(30),
                        // fromLTRB(15, 25, 15, 25),
                        child: CustomColumnSummaryOrder(),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 20),
                child: CustomElevatedButton(
                  sideColor: ColorHelper.black,
                  textSize: 14,
                  fontColor: Colors.white,
                  backColor: ColorHelper.black,
                  buttonText: "ادفع الان",
                  onPressedFunction: () {},
                  widthButton: double.infinity,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
