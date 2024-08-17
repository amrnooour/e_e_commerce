import 'package:e_commerce/core/middleware/my_middleware.dart';
import 'package:e_commerce/core/utils/constants.dart';
import 'package:e_commerce/views/auth/forget_password.dart';
import 'package:e_commerce/views/auth/login/login_view.dart';
import 'package:e_commerce/views/auth/reset_password.dart';
import 'package:e_commerce/views/auth/sign_up/sign_up.dart';
import 'package:e_commerce/views/auth/success_check_mail.dart';
import 'package:e_commerce/views/auth/success_sign_up.dart';
import 'package:e_commerce/views/auth/verify_code_signup.dart';
import 'package:e_commerce/views/auth/vertify_code.dart';
import 'package:e_commerce/views/choose_lang/choose_lang.dart';
import 'package:e_commerce/views/home/home_view.dart';
import 'package:e_commerce/views/onboarding/onboarding_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';




List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => const ChooseLang() , middlewares: [
    MyMiddleWare()
  ]),
  GetPage(name: Constants.signin, page: () => const LoginView()),
  GetPage(name: Constants.signup, page: () => const SignUp()),
  GetPage(name: Constants.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: Constants.verifyCode, page: () => const VertifyCode()),
  GetPage(name: Constants.resetPassword, page: () => const ResetPassword()),
  GetPage(name: Constants.successSignip, page: () => const SuccessSignUp()),
  GetPage(name: Constants.onboarding, page: () => const OnboardingView()),
  GetPage(name: Constants.verifyCodeSignup, page: () => const VerifyCodeSignup()),
  GetPage(name: Constants.home, page: () => const HomeView()),
  GetPage(name: "/successCheckMail", page: () => const SuccessCheckMail()),


];
