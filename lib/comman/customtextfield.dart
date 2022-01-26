import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final IconData data;
  final String hintText;
  bool isobsecure = true;

  CustomTextField({
    Key? key,
    required this.controller,
    required this.data,
    required this.hintText,
    required this.isobsecure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isobsecure,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(),
        border: InputBorder.none,
        prefixIcon: Icon(
          data,
          color: Colors.green,
        ),
        focusColor: Colors.orange,
        hintText: hintText,
      ),
    );
  }
}
