// import 'package:flutter/material.dart';
//
// class TextFormField extends StatelessWidget {
//   final TextEditingController controller;
//   final IconData data;
//   final String labelText;
//   final String validator;
//   bool isobsecure = true;
//
//   CustomTextFormField({
//     Key? key,
//     required this.controller,
//     required this.data,
//     required this.labelText,
//     required this.isobsecure, required this.validator,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: TextFormField(
//         validator: validator,
//         controller: controller,
//         obscureText: isobsecure,
//         decoration: InputDecoration(
//           contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//           enabledBorder: OutlineInputBorder(),
//           focusedBorder: OutlineInputBorder(),
//           border: InputBorder.none,
//           prefixIcon: Icon(
//             data,
//             color: Colors.green,
//           ),
//           focusColor: Colors.orange,
//           labelText: labelText,
//         ),
//       ),
//     );
//   }
// }
