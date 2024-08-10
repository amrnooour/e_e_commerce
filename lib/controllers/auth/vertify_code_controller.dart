import 'package:get/get.dart';

abstract class VertifyCodeController extends GetxController {
  gotoResetCode();
}

class VertifyCodeControllerImpl extends VertifyCodeController {
  @override
  gotoResetCode() {
    Get.toNamed("/resetPassord");
  }
}
