import 'package:e_commerce/controllers/auth/reset_password_controller.dart';
import 'package:e_commerce/core/shared/custom_auth_button.dart';
import 'package:e_commerce/core/shared/custom_text_field.dart';
import 'package:e_commerce/views/auth/login/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ResetPasswordControllerImpl controller =
        Get.put(ResetPasswordControllerImpl());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomAppbar(title: "Reset Password"),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Enter New Password",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextField(
                  label: "new password",
                  hintText: "enter new password",
                  sufixIcon: Icon(Icons.lock),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomTextField(
                  label: "Re new password",
                  hintText: "Re enter new password",
                  sufixIcon: Icon(Icons.lock),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomAuthButton(
                    onTap: () {
                      controller.gotoSuccessSignUp();
                    },
                    title: "save"),
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
