import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  final String title;
  const CustomAppbar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      IconButton(onPressed: (){
        Navigator.pop(context);
      },
       icon: const Icon((Icons.arrow_back_ios),size: 20,)),
       const SizedBox(width: 100,),
       Text(title,style: const TextStyle(fontSize: 20),),
    ],);
  }
}