import 'package:flutter/material.dart';

getElevatedButtonStyle(BuildContext context) {
  return ElevatedButton.styleFrom(
      minimumSize: const Size.fromHeight(50),
      backgroundColor: Theme.of(context).primaryColor,
      foregroundColor: Theme.of(context).indicatorColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)));
}