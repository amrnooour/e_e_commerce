import 'package:e_commerce/views/auth/forget_password.dart';
import 'package:e_commerce/views/auth/login/login_view.dart';
import 'package:e_commerce/views/auth/reset_password.dart';
import 'package:e_commerce/views/auth/sign_up/sign_up.dart';
import 'package:e_commerce/views/auth/success_sign_up.dart';
import 'package:e_commerce/views/auth/vertify_code.dart';
import 'package:e_commerce/views/onboarding/onboarding_view.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  "/login": (context) => const LoginView(),
  "/onboarding" : (context) => const OnboardingView(),
  "/signUp" : (context)=> const SignUp(),
  "/forgetPassword" : (context) => const ForgetPassword(),
  "/vertifyCode" : (context) => const VertifyCode(),
  "/resetPassord" : (context) => const ResetPassword(),
  "/successSignUp" : (context) => const SuccessSignUp(),


};
