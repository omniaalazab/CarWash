import 'package:car_wash_app/ui/widget/update_profile/bottom_sheet_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChangePasswordBottomSheet {
  static void bottomSheet() {
    Get.bottomSheet(
      backgroundColor: Colors.white,
      const BottomSheetModel(),
    );
  }
}
