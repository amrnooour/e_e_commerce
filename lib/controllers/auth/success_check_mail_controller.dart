import 'package:get/get.dart';

abstract class SuccessCheckMailController extends GetxController {
  gotoSignIn();
}

class SuccessCheckMailControllerImpl extends SuccessCheckMailController {
  @override
  gotoSignIn() {
    Get.offAllNamed("/login");
  }
}
