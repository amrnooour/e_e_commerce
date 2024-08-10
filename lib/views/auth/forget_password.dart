import 'package:e_commerce/controllers/auth/forget_password_controller.dart';
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomAppbar(title: "forget password"),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Check Email",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                    "please enter your email address \n         to recive a vertification code"),
                const SizedBox(
                  height: 50,
                ),
                const CustomTextField(
                  label: "Email",
                  hintText: "Enter your Email",
                  sufixIcon: Icon(Icons.email),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomAuthButton(
                    onTap: () {
                      controller.gotoVerifyCode();
                    },
                    title: "check"),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
