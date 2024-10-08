import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final String? hintText;
  final Widget? sufixIcon;
  final String label;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool obscureText;
  final void Function()? showPassword;

  const CustomTextField(
      {super.key,
      this.onChanged,
      this.controller,
      this.hintText,
      this.sufixIcon, required this.label, this.validator, this.keyboardType,
      this.obscureText=false, this.showPassword});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      onChanged: onChanged,
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        disabledBorder: buildBorder(),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey.withOpacity(.5), fontSize: 14),
        labelText: label,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: GestureDetector(
          onTap: showPassword,
          child: sufixIcon),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
        border: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.withOpacity(.2)),
        borderRadius: BorderRadius.circular(25));
  }
}