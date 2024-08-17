import 'package:e_commerce/controllers/auth/login_controller.dart';
import 'package:e_commerce/core/functions/alirt_exit_app.dart';
import 'package:e_commerce/core/functions/validator_input.dart';
import 'package:e_commerce/core/shared/custom_auth_button.dart';
import 'package:e_commerce/core/shared/custom_text_field.dart';
import 'package:e_commerce/views/auth/login/widgets/custom_appbar.dart';
import 'package:e_commerce/views/auth/login/widgets/custom_title.dart';
import 'package:e_commerce/views/auth/login/widgets/donot_have.dart';
import 'package:e_commerce/views/auth/login/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImpl controller = Get.put(LoginControllerImpl());
    return WillPopScope(
        onWillPop: alertExitApp,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
            child: SingleChildScrollView(
              child: Form(
                key: controller.key,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomAppbar(title: "9".tr),
                    const SizedBox(
                      height: 50,
                    ),
                    const Logo(),
                    Text(
                      "10".tr,
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text("11".tr),
                    const SizedBox(
                      height: 50,
                    ),
                    CustomTextField(
                      validator: (val) {
                        return validInput(val!, 5, 50, "email");
                      },
                      label: "18".tr,
                      hintText: "12".tr,
                      sufixIcon: const Icon(Icons.email),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GetBuilder<LoginControllerImpl>(builder: (controller) => CustomTextField(
                      obscureText: controller.secure,
                      showPassword: () {
                        controller.showPassword();
                      },
                      validator: (val) {
                        return validInput(val!, 5, 50, "password");
                      },
                      label: "19".tr,
                      hintText: "13".tr,
                      sufixIcon: controller.secure==false? const Icon(Icons.visibility) : const Icon(Icons.visibility_off_outlined),
                    )),
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                        alignment: Alignment.topRight,
                        child: CustomTitle(
                            onTap: () {
                              controller.goToForgetPassword();
                            },
                            title: "14".tr)),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomAuthButton(
                      title: "9".tr,
                      onTap: () {
                        controller.login();
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    DonotHave(
                      title2: "17".tr,
                      title: "16".tr,
                      onTap: () {
                        controller.goToSignUp();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
