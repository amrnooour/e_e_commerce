import 'package:e_commerce/controllers/auth/login_controller.dart';
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
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const CustomAppbar(title: "sign in"),
              const SizedBox(
                height: 50,
              ),
              const Logo(),
              const Text(
                "Welcome Back",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                  "Sign in with your email and password \n         or continue social media"),
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
              const CustomTextField(
                label: "Password",
                hintText: "Enter your Password",
                sufixIcon: Icon(Icons.lock),
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                  alignment: Alignment.topRight,
                  child: CustomTitle(
                      onTap: () {
                        controller.goToForgetPassword();
                      },
                      title: "forget password")),
              const SizedBox(
                height: 10,
              ),
              const CustomAuthButton(title: "sign in"),
              const SizedBox(
                height: 20,
              ),
              DonotHave(
                title2: "sign up",
                title: "do not have an account? ",
                onTap: () {
                  controller.goToSignUp();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
