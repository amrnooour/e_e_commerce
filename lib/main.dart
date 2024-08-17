import 'package:e_commerce/core/localization/change_locale.dart';
import 'package:e_commerce/core/localization/tanslation.dart';
import 'package:e_commerce/core/services/services.dart';
import 'package:e_commerce/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialService();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());
    return GetMaterialApp(
      translations: Tanslation(),
      locale: controller.language,
      debugShowCheckedModeBanner: false,
      getPages: routes,
    );
  }
}
