import 'package:e_commerce/data/datasource/static/static.dart';
import 'package:e_commerce/views/onboarding/widgets/cutom_item_page.dart';
import 'package:flutter/material.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    PageController controller = PageController();
    return SizedBox(
      height: height,
      width: width,
      child: PageView.builder(
        itemCount: onBoardingList.length,
        controller: controller,
        itemBuilder: (context, index) => CutomItemPage(
          controller: controller,
          title: onBoardingList[index].title!,
          image: onBoardingList[index].image!,
          description: onBoardingList[index].body!,
        ),
      ),
    );
  }
}
