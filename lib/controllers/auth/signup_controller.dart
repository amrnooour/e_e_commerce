import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class SignupController extends GetxController {
  signUp();
  goToSignIn();
  goToSuccessSignUp();
}

class SignupControllerImpl extends SignupController {
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
    throw UnimplementedError();
  }

  @override
  goToSuccessSignUp() {
    Get.offAllNamed("/successSignUp");
  }
}