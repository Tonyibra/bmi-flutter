import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    final double topPadding = MediaQuery.of(context).padding.top;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(top: 16 + topPadding, bottom: 23),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 113, 111, 111),
      ),
      child: const Text(
        'BMI calculator',
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontSize: 30),
      ),
    );
  }
}
