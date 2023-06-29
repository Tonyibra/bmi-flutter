import 'package:bmi_calc/header.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final double bmi;

  const ResultScreen({required this.bmi, super.key});

  Widget _bmiValidator() {
    if (bmi < 18.5) {
      return const Text(
        'Underweight',
        style:
            TextStyle(color: Color.fromARGB(255, 214, 201, 83), fontSize: 30),
      );
    } else if (bmi > 18.5 && bmi < 24.9) {
      return const Text(
        'Normal',
        style: TextStyle(color: Colors.green, fontSize: 30),
      );
    } else if (bmi > 25 && bmi < 29.9) {
      return const Text(
        'Overweight',
        style: TextStyle(color: Color.fromARGB(255, 141, 54, 52), fontSize: 30),
      );
    } else {
      return const Text(
        'Obesity',
        style: TextStyle(color: Colors.red, fontSize: 30),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Header(),
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              icon: const Icon(
                Icons.chevron_left,
                size: 60,
              ),
              onPressed: () => Navigator.pop(context),
            ),
          ),
          _bmiValidator()
        ],
      ),
    );
  }
}
