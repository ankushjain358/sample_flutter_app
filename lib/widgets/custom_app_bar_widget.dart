import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget {
  final String title;
  final List<Widget>? actions;

  const CustomAppBarWidget({super.key, required this.title, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        title: Text(title),
        actions: actions);
  }
}
