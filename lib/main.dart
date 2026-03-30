import 'package:flutter/material.dart';
import 'screens/landing_screen.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parveen Eswaran - Portfolio',
      debugShowCheckedModeBanner: false,
      theme: buildAppTheme(),
      home: const LandingScreen(),
    );
  }
}
