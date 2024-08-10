import 'package:flutter/material.dart';

class DonotHave extends StatelessWidget {
  final void Function()? onTap;
  const DonotHave({super.key,this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text("do not have an account? "),
        GestureDetector(
          onTap: onTap,
          child: const Text("sign up",style: TextStyle(color: Colors.pink),))
      ],
    );
  }
}