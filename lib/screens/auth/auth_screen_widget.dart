import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_flutter_app/widgets/custom_button_widget.dart';
import 'package:sample_flutter_app/widgets/custom_text_field_widget.dart';

class AuthScreenWidget extends StatefulWidget {
  const AuthScreenWidget({super.key});

  @override
  State<AuthScreenWidget> createState() => _AuthScreenWidgetState();
}

class _AuthScreenWidgetState extends State<AuthScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.fromLTRB(15, 150, 15, 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              alignment: Alignment.center,
              child: Text("Sign In",
                  style: Theme.of(context).textTheme.titleLarge)),
          Container(height: 50),
          const CustomTextFieldWidget(hintText: 'Email Id', icon: Icons.email),
          Container(height: 10),
          const CustomTextFieldWidget(hintText: 'Password', icon: Icons.lock),
          Container(height: 10),
           CustomButtonWidget(
            buttonText: 'Login',
            onPressed: () => {
              context.go("/")
            },
          )
        ],
      ),
    ));
  }
}
