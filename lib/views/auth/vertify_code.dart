import 'package:e_commerce/controllers/auth/vertify_code_controller.dart';
import 'package:e_commerce/views/auth/login/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

class VertifyCode extends StatelessWidget {
  const VertifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    VertifyCodeControllerImpl controller = Get.put(VertifyCodeControllerImpl());
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CustomAppbar(title: "vertification code"),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Check code",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("please enter your digit code sent to "),
                const SizedBox(
                  height: 50,
                ),
                OtpTextField(
                  fieldWidth: 50.0,
                  borderRadius: BorderRadius.circular(20),
                  numberOfFields: 5,
                  borderColor: const Color(0xFF512DA8),
                  //set to true to show as box or false to show as dash
                  showFieldAsBox: true,
                  //runs when a code is typed in
                  onCodeChanged: (String code) {
                    //handle validation or checks here
                  },
                  //runs when every textfield is filled
                  onSubmit: (String verificationCode) {
                    controller.gotoResetCode();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
