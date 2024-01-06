import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      themeMode: ThemeMode.light,
      theme: ThemeData(
        // 2 important theme attributes are colorScheme & textTheme
        colorScheme:ColorScheme.fromSeed(seedColor: Colors.blueAccent.shade400),
        textTheme: GoogleFonts.latoTextTheme(),
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.all(10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        useMaterial3: true,
      ),
    );
  }
}
