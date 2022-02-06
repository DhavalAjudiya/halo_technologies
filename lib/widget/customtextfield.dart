import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {
  final String hinttext;
  final String labletext;
  final TextEditingController controller;
  final bool obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Widget? prefix;
  String? Function(String?)? validator;
  final Color color;
  TextStyle? style;

  CustomTextFormFiled({
    this.hinttext = '',
    required this.labletext,
    required this.controller,
    this.obscureText = false,
    this.suffixIcon,
    this.prefix,
    this.validator,
    this.color = Colors.white,
    this.style,
    this.prefixIcon,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: style,
      obscureText: obscureText,
      controller: controller,
      textInputAction: TextInputAction.next,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      decoration: InputDecoration(
        prefix: prefix,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        hintText: hinttext,
        labelText: labletext,
        labelStyle: const TextStyle(color: Colors.black),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
