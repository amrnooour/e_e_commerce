import 'package:flutter/material.dart';

class CustomAuthButton extends StatelessWidget {
  final String title;
  const CustomAuthButton({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.pink),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Text(title,style: const TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
