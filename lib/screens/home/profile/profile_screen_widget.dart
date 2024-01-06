import 'package:flutter/material.dart';

class ProfileScreenWidget extends StatefulWidget {
  const ProfileScreenWidget({super.key});

  @override
  State<ProfileScreenWidget> createState() => _ProfileScreenWidgetState();
}

class _ProfileScreenWidgetState extends State<ProfileScreenWidget> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(title: const Text('Profile'),
         actions: <Widget>[
      IconButton(
        icon: const Icon(Icons.arrow_drop_down_outlined),
        tooltip: 'Show Snackbar',
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('This is a snackbar')));
        },
      )
    ]));
  }
}