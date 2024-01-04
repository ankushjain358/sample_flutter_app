import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final String? labelText;
  final EdgeInsetsGeometry? contentPadding;

  const CustomTextFieldWidget({
    super.key,
    required this.hintText,
    required this.icon,
    this.labelText,
    this.contentPadding,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        contentPadding: contentPadding ?? Theme.of(context).inputDecorationTheme.contentPadding,
        hintText: hintText,
        prefixIcon: Icon(icon), // Optional icon
      ),
    );
  }
}

// customTextField(String hintText, IconData icon) {
//   return TextField(
//     decoration: InputDecoration(
//       // labelText: labelText,
//       contentPadding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
//       hintText: hintText,
//       prefixIcon: Icon(icon), // Optional icon
//     ),
//   );
// }
