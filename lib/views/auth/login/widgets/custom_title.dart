import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  const CustomTitle({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(title));
  }
}
