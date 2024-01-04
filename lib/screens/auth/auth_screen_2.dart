import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_flutter_app/ui/custom_widgets.dart';

class AuthScreen2 extends StatefulWidget {
  const AuthScreen2({super.key});

  @override
  State<AuthScreen2> createState() => _AuthScreen2State();
}

class _AuthScreen2State extends State<AuthScreen2> {
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
                  style: Theme.of(context).textTheme.titleMedium)),
          Container(height: 50),
          const CustomTextFieldWidget(hintText: 'Email Id', icon: Icons.email),
          Container(height: 10),
          const CustomTextFieldWidget(hintText: 'Password', icon: Icons.lock),
          Container(height: 10),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
                backgroundColor: Theme.of(context).primaryColor,
                foregroundColor: Theme.of(context).indicatorColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5))),
            onPressed: () {
               context.go("/");
            },
            child: const Text('Login'),
          ),
        ],
      ),
    ));
  }
}
