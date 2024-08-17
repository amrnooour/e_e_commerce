import 'package:e_commerce/core/utils/constants.dart';
import 'package:e_commerce/views/auth/forget_password.dart';
import 'package:e_commerce/views/auth/login/login_view.dart';
import 'package:e_commerce/views/auth/reset_password.dart';
import 'package:e_commerce/views/auth/sign_up/sign_up.dart';
import 'package:e_commerce/views/auth/success_check_mail.dart';
import 'package:e_commerce/views/auth/success_sign_up.dart';
import 'package:e_commerce/views/auth/verify_code_signup.dart';
import 'package:e_commerce/views/auth/vertify_code.dart';
import 'package:e_commerce/views/home/home_view.dart';
import 'package:e_commerce/views/onboarding/onboarding_view.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  Constants.signin: (context) => const LoginView(),
  Constants.onboarding : (context) => const OnboardingView(),
  Constants.signup : (context)=> const SignUp(),
  Constants.forgetPassword : (context) => const ForgetPassword(),
  Constants.verifyCode : (context) => const VertifyCode(),
  Constants.resetPassword : (context) => const ResetPassword(),
  Constants.successSignip : (context) => const SuccessSignUp(),
  "/successCheckMail" : (context) => const SuccessCheckMail(),
  Constants.home :(context) =>const HomeView(),
  Constants.verifyCodeSignup :(context) =>const VerifyCodeSignup(),




};
