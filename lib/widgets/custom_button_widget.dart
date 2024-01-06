import 'package:flutter/material.dart';
import 'package:sample_flutter_app/widgets/widgets_utility.dart';

class CustomButtonWidget extends StatelessWidget {
  final String buttonText;
  final Function? onPressed;

  const CustomButtonWidget(
      {super.key, required this.buttonText, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: getElevatedButtonStyle(context),
      onPressed: () {
        onPressed!.call();
      },
      child: Text(buttonText),
    );
  }
}
