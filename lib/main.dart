import 'package:bmi_calc/container.dart';
import 'package:bmi_calc/header.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: const [
            Header(),
            AppContainer(),
          ],
        ),
      ),
    );
  }
}
