import 'package:e_commerce/core/utils/constants.dart';
import 'package:get/get.dart';

abstract class VerifyCodeSignupController extends GetxController {
  gotoSuccessSignup();
}

class VerifyCodeSignupControllerImpl extends VerifyCodeSignupController {
  @override
  gotoSuccessSignup() {
    Get.offNamed(Constants.successSignip);
  }
}
