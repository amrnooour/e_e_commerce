import 'package:e_commerce/controllers/auth/success_signup_controller.dart';
import 'package:e_commerce/core/shared/custom_auth_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessSignUp extends StatelessWidget {
  const SuccessSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SuccessSignUpControllerImpl controller =
        Get.put(SuccessSignUpControllerImpl());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("Sucess",style: TextStyle(fontSize: 30),),
                //const CustomAppbar(title: "Success"),
                const SizedBox(
                  height: 50,
                ),
                const Icon(
                  Icons.check_circle_outlined,
                  size: 150,
                  color: Colors.pink,
                ),
                const SizedBox(
                  height: 100,
                ),
                //const Spacer(),
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
