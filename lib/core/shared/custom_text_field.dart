import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final String? hintText;
  final Widget? sufixIcon;
  final String label;
  final String? Function(String?)? validator;

  const CustomTextField(
      {super.key,
      this.onChanged,
      this.controller,
      this.hintText,
      this.sufixIcon, required this.label, this.validator});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        disabledBorder: buildBorder(),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey.withOpacity(.5), fontSize: 14),
        labelText: label,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: sufixIcon,
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