import 'package:get/get.dart';

abstract class SuccessSignUpController extends GetxController {
  gotoSignIn();
}

class SuccessSignUpControllerImpl extends SuccessSignUpController {
  @override
  gotoSignIn() {
    Get.offAllNamed("/login");
  }
}
