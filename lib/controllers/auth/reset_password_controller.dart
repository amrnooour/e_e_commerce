import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  gotoSuccessSignUp();
  resetPassword();
}

class ResetPasswordControllerImpl extends ResetPasswordController {
  GlobalKey<FormState> key = GlobalKey();
  @override
  gotoSuccessSignUp() {
    Get.toNamed("/successSignUp");
  }

  @override
  resetPassword() {
    if (key.currentState!.validate()) {
      gotoSuccessSignUp();
    }else{}
  }
}
