class CheckEmptyValidationTextField {
  static String checkIsEmpty(var value) {
    if (value!.isEmpty) {
      return " Cann't be empty";
    } else {
      return "valid";
    }
  }

  // static String checkMatchhConfirmPassword(
  //     TextEditingController confirmPWController,
  //     TextEditingController pwController) {
  //   if (pwController.text != confirmPWController.text) {
  //     return "  كلمة المرور غير متطابق";
  //   } else {
  //     return "valid";
  //   }
  // }

  // static String checkLengthlfPassword(TextEditingController confirmPWController,
  //     TextEditingController pwController) {
  //   if (pwController.text.length < 6 || confirmPWController.text.length < 6) {
  //     return "password can't be less than 4";
  //   } else {
  //     return "valid";
  //   }
  // }

  // static void checkPhoneNumbreerTOSendOTP(
  //     TextEditingController phoneNumberController) {
  //   if (phoneNumberController.text != '01097766076') {
  //     CheckConfirmPassword.showErrorDialogDefult();
  //     CheckConfirmPassword.showErrorToast("رقم هاتف غير صالح");
  //   } else {
  //     CheckConfirmPassword.showSucessToast("تم الارسال بنجاح");
  //   }
  // }
}
