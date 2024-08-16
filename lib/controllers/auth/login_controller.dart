import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
}

class LoginControllerImpl extends LoginController {
  GlobalKey<FormState> key = GlobalKey();
  late TextEditingController email;
  late TextEditingController password;
  @override
  goToSignUp() {
    Get.offNamed("/signUp");
  }

  @override
  login() {
    var formKey = key.currentState;
    if (formKey!.validate()) {
      Get.offNamed("/home");
    } else {
    }
  }

  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  goToForgetPassword() {
    Get.toNamed("/forgetPassword");
  }
}
