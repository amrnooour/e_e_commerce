import 'package:e_commerce/core/localization/change_locale.dart';
import 'package:e_commerce/views/choose_lang/widgets/custom_button_lang.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChooseLang extends GetView<LocaleController> {
  const ChooseLang({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("1".tr),
              const SizedBox(height: 20),
              CustomButtonLang(
                  textbutton: "Ar",
                  onPressed: () {
                    controller.changeLang("ar");
                    Get.toNamed("/onboarding") ; 
                  }),
              CustomButtonLang(
                  textbutton: "En",
                  onPressed: () {
                    controller.changeLang("en");
                    Get.toNamed("/onboarding") ; 
                  }),
            ],
          )),

    );
  }
}