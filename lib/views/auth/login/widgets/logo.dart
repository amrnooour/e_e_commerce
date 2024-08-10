import 'package:e_commerce/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppAssets.logo,height: 150,width: 150,);
  }
}