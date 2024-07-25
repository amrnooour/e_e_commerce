import 'package:e_commerce/views/auth/login/login_view.dart';
import 'package:e_commerce/views/onboarding/onboarding_view.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  "/login": (context) => const LoginView(),
  "/onboarding" : (context) => const OnboardingView()
};
