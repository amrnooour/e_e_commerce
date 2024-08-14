import 'package:e_commerce/controllers/auth/signup_controller.dart';
import 'package:e_commerce/core/shared/custom_auth_button.dart';
import 'package:e_commerce/core/shared/custom_text_field.dart';
import 'package:e_commerce/views/auth/login/widgets/custom_appbar.dart';
import 'package:e_commerce/views/auth/login/widgets/donot_have.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    SignupControllerImpl controller = Get.put(SignupControllerImpl());
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomAppbar(title: "17".tr),
              const SizedBox(
                height: 50,
              ),
              Text(
                "10".tr,
                style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                  "24".tr),
              const SizedBox(
                height: 50,
              ),
              CustomTextField(
                label: "20".tr,
                hintText: "23".tr,
                sufixIcon: const Icon(Icons.person),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                label: "21".tr,
                hintText: "22".tr,
                sufixIcon: const Icon(Icons.phone),
              ),
              const SizedBox(
                height: 20,
              ),
               CustomTextField(
                label: "18".tr,
                hintText: "12".tr,
                sufixIcon: const Icon(Icons.email),
              ),
              const SizedBox(
                height: 20,
              ),
               CustomTextField(
                label: "19".tr,
                hintText: "13".tr,
                sufixIcon: const Icon(Icons.lock),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomAuthButton(
                title: "17".tr,
                onTap: () {
                  controller.goToSuccessSignUp();
                },
              ),
              const SizedBox(
                height: 20,
              ),
              DonotHave(
                title: "25".tr,
                title2: "17".tr,
                onTap: () {
                  controller.goToSignIn();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
