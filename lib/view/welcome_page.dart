import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          'Welcome to my personal custom set widget!',
        ),
      ),
    );
  }
}
