import 'package:e_commerce/core/services/services.dart';
import 'package:e_commerce/data/datasource/static/static.dart';
import 'package:e_commerce/views/onboarding/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CutomItemPage extends StatelessWidget {
  final String title;
  final String image;
  final String description;
  final PageController controller;
  const CutomItemPage(
      {super.key,
      required this.title,
      required this.image,
      required this.description,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    MyServices myServices = Get.find();
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          height: height,
          width: width,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 150,
                ),
                Image.asset(image),
                const SizedBox(
                  height: 50,
                ),
                Text(description),
                const SizedBox(
                  height: 30,
                ),
                SmoothPageIndicator(
                    effect: WormEffect(
                        activeDotColor: Colors.black.withOpacity(.5),
                        dotColor: Colors.grey.withOpacity(.5),
                        dotHeight: 7,
                        dotWidth: 7),
                    controller: controller,
                    count: onBoardingList.length),
                const Spacer(),
                CustomButton(
                  onTap: () {
                    int nextPage = controller.page!.toInt() + 1;
                    if (nextPage < onBoardingList.length) {
                      myServices.sharedPreferences.setString("onboarding", "1");
                      controller.animateToPage(
                        nextPage,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    } else if (nextPage == onBoardingList.length) {
                      Get.offAllNamed("/login");
                    }
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
