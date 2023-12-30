import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthScreenWidget extends StatelessWidget {
  const AuthScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text('Login'),
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            const SizedBox(height: 16.0),
            const TextField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              // ignore: avoid_print
              onPressed: () => context.replace("/"),
              child: const Text('Login'),
            ),
            const SizedBox(height: 16.0),
            const Text('Or login with:'),
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    // Implement Google login
                    context.go("/");
                  },
                  icon: const Icon(Icons.g_translate),
                  label: const Text('Google'),
                ),
                const SizedBox(width: 16.0),
                ElevatedButton.icon(
                  onPressed: () {
                    // Implement Facebook login
                    context.go("/");
                  },
                  icon: const Icon(Icons.facebook),
                  label: const Text('Facebook'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
