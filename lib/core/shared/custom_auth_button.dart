import 'package:flutter/material.dart';

class CustomAuthButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  const CustomAuthButton({super.key, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.pink),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Text(title,style: const TextStyle(color: Colors.white),),
          ),
        ),
      ),
    );
  }
}
