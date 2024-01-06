import 'package:flutter/material.dart';
import 'package:sample_flutter_app/routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRoutes.getRoutes(),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent.shade400),
        textTheme: const TextTheme(
            titleSmall: TextStyle(fontSize: 24),
            titleMedium: TextStyle(fontSize: 30),
            titleLarge: TextStyle(fontSize: 36)),
        inputDecorationTheme: InputDecorationTheme(
            contentPadding: const EdgeInsets.all(10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            hintStyle: const TextStyle(fontSize: 14)),
        useMaterial3: true,
      ),
    );
  }
}
