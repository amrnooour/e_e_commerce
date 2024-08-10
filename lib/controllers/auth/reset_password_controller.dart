import 'package:get/get.dart';

abstract class ResetPasswordController extends GetxController {
  gotoSuccessSignUp();
}

class ResetPasswordControllerImpl extends ResetPasswordController {
  @override
  gotoSuccessSignUp() {
    Get.toNamed("/successSignUp");
  }
}
