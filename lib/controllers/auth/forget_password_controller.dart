import 'package:get/get.dart';

abstract class ForgetPasswordController extends GetxController {
  gotoVerifyCode();
}

class ForgetPasswordControllerImpl extends ForgetPasswordController {
  @override
  gotoVerifyCode() {
    Get.toNamed("/vertifyCode");
  }
}
