import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  gotoVerifyCode();
  forgetPassword();
}

class ForgetPasswordControllerImpl extends ForgetPasswordController {
  GlobalKey<FormState> key = GlobalKey();
  @override
  gotoVerifyCode() {
    Get.toNamed("/vertifyCode");
  }

  @override
  forgetPassword() {
    if (key.currentState!.validate()) {
      gotoVerifyCode();
    } else {
    }
  }
}
