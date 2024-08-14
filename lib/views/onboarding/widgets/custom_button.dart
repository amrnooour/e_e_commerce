import 'package:e_commerce/core/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButton extends StatelessWidget {
  final void Function()? onTap;
  const CustomButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 250,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: AppColor.primaryColor),
        child:  Center(child: Text("8".tr),),
      ),
    );
  }
}