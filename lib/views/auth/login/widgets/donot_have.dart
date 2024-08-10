import 'package:flutter/material.dart';

class DonotHave extends StatelessWidget {
  final void Function()? onTap;
  final String title;
  final String title2;
  const DonotHave({super.key, this.onTap, required this.title, required this.title2});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title),
        GestureDetector(
            onTap: onTap,
            child: Text(title2,
              style: const TextStyle(color: Colors.pink),
            ))
      ],
    );
  }
}
