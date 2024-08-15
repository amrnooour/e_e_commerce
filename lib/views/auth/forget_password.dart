import 'package:e_commerce/controllers/auth/forget_password_controller.dart';
import 'package:e_commerce/core/functions/validator_input.dart';
import 'package:e_commerce/core/shared/custom_auth_button.dart';
import 'package:e_commerce/core/shared/custom_text_field.dart';
import 'package:e_commerce/views/auth/login/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordControllerImpl controller =
        Get.put(ForgetPasswordControllerImpl());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
          child: SingleChildScrollView(
            child: Form(
              key: controller.key,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomAppbar(title: "14".tr),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    "27".tr,
                    style: const TextStyle(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text("29".tr),
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
                  CustomAuthButton(
                      onTap: () {
                        controller.forgetPassword();
                      },
                      title: "30".tr),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
