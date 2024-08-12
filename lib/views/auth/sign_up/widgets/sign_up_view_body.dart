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
              const CustomAppbar(title: "sign up"),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Welcome Back",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                  "Sign up with your email and password \n         or continue social media"),
              const SizedBox(
                height: 50,
              ),
              const CustomTextField(
                label: "User name",
                hintText: "Enter your User name",
                sufixIcon: Icon(Icons.person),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomTextField(
                label: "phone",
                hintText: "Enter your phone",
                sufixIcon: Icon(Icons.phone),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomTextField(
                label: "Email",
                hintText: "Enter your Email",
                sufixIcon: Icon(Icons.email),
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomTextField(
                label: "Password",
                hintText: "Enter your Password",
                sufixIcon: Icon(Icons.lock),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomAuthButton(
                title: "sign up",
                onTap: () {
                  controller.goToSuccessSignUp();
                },
              ),
              const SizedBox(
                height: 20,
              ),
              DonotHave(
                title: "have an account ? ",
                title2: "sign in",
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
