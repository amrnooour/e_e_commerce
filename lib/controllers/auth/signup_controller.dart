import 'package:e_commerce/core/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignupController extends GetxController {
  signUp();
  goToSignIn();
  goToVerifyCode();
}

class SignupControllerImpl extends SignupController {
  GlobalKey<FormState> key = GlobalKey();
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController userName;
  late TextEditingController phone;

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    userName = TextEditingController();
    phone = TextEditingController();
    super.onInit();
  }

  @override
  goToSignIn() {
    Get.offNamed("/login");
  }

  @override
  signUp() {
    if (key.currentState!.validate()) {
      goToVerifyCode();
    } else {}
  }

  @override
  goToVerifyCode() {
    Get.offAllNamed(Constants.verifyCodeSignup);
    Get.delete<SignupControllerImpl>();
  }
}
