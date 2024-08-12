import 'package:e_commerce/controllers/auth/success_check_mail_controller.dart';
import 'package:e_commerce/core/shared/custom_auth_button.dart';
import 'package:e_commerce/views/auth/login/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessCheckMail extends StatelessWidget {
  const SuccessCheckMail({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessCheckMailControllerImpl controller =
        Get.put(SuccessCheckMailControllerImpl());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomAppbar(title: "Success"),
                const SizedBox(
                  height: 50,
                ),
                const Icon(
                  Icons.check_circle_outlined,
                  size: 100,
                  color: Colors.pink,
                ),
                const Spacer(),
                CustomAuthButton(
                    onTap: () {
                      controller.gotoSignIn();
                    },
                    title: "go to sign in"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
