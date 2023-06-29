import 'package:flutter/material.dart';

class HeightBox extends StatefulWidget {
  double heightValue;
  void Function(double val) setter;
  HeightBox({required this.setter, required this.heightValue, super.key});

  @override
  State<HeightBox> createState() => _HeightBoxState();
}

class _HeightBoxState extends State<HeightBox> {
  void _onChangeValue(double siderValue) {}

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(
          255,
          26,
          31,
          56,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            const Text(
              'Height',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Slider(
              min: 140,
              max: 230,
              divisions: 18,
              value: widget.heightValue,
              onChanged: ((value) => widget.setter(
                    value,
                  )),
              label: widget.heightValue.round().toString(),
            ),
          ],
        ),
      ),
    );
  }
}
