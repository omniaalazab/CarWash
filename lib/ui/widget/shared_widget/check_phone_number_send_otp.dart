import 'package:car_wash_app/helper/color_helper.dart';
import 'package:car_wash_app/helper/text_style_helper.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class CheckConfirmPassword {
  static Future showErrorDialogDefult() {
    return Get.defaultDialog(
      // titlePadding:
      //     const EdgeInsets.only(top: 10),
      title: "تحميل",
      titleStyle: const TextStyle(
        fontFamily: 'Cairo',
        fontSize: 22,
        fontWeight: FontWeight.w900,
      ),
      content: Container(
        width: 100,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 15,
            ),
            Text(
              "... من فضلك انتظر ",
              style: TextStyleHelper.textStylefontSize13,
            ),
            const SizedBox(
              height: 15,
            ),
            CircularProgressIndicator(
              color: ColorHelper.orange,
            ),
          ],
        ),
      ),
    );
  }

  static void showErrorToast(String msgText) {
    Fluttertoast.showToast(
        msg: msgText,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 6,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  static void showSucessToast(String msgText) {
    Fluttertoast.showToast(
        msg: msgText,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 6,
        backgroundColor: const Color.fromARGB(255, 50, 161, 23),
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
