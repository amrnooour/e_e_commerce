import 'package:e_commerce/core/shared/custom_text_field.dart';
import 'package:e_commerce/views/auth/login/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18,vertical: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          CustomAppbar(title: "sign in"),
          SizedBox(height: 50,),
          Text("Welcome Back",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          SizedBox(height: 20,),
          Text("Sign in with your email and password \n         or continue social media"),
          SizedBox(height: 50,),  
          CustomTextField(label: "Email", hintText: "Enter your Email",sufixIcon: Icon(Icons.email),),
          SizedBox(height: 20,),  
          CustomTextField(label: "Password", hintText: "Enter your Password",sufixIcon: Icon(Icons.lock),),

        ],),
      ),
    );
  }
}