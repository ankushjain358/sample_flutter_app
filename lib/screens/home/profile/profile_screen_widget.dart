import 'package:flutter/material.dart';
import 'package:sample_flutter_app/widgets/custom_button_widget.dart';

class ProfileScreenWidget extends StatefulWidget {
  const ProfileScreenWidget({super.key});

  @override
  State<ProfileScreenWidget> createState() => _ProfileScreenWidgetState();
}

class _ProfileScreenWidgetState extends State<ProfileScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile'), actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.arrow_drop_down_outlined),
          tooltip: 'Show Snackbar',
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('This is a snackbar')));
          },
        )
      ]),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(height: 25),
            CustomButtonWidget(
              buttonText: "Take Picture",
              onPressed: () => {

              },
            ),
            Container(height: 12),
          ],
        ),
      ),
    );
  }
}
