import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final String? labelText;
  final bool obscureText;
  final EdgeInsetsGeometry? contentPadding;


  const CustomTextFieldWidget({
    super.key,
    required this.hintText,
    required this.icon,
    this.labelText,
    this.contentPadding,
    this.obscureText = false
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        contentPadding: contentPadding ?? Theme.of(context).inputDecorationTheme.contentPadding,
        hintText: hintText,
        prefixIcon: Icon(icon),
      )
    );
  }
}

