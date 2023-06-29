import 'package:flutter/material.dart';

class CountController extends StatefulWidget {
  final String label;
  int value;
  void Function(int value) setter;
  CountController(
      {required this.label,
      required this.setter,
      required this.value,
      super.key});

  @override
  State<CountController> createState() => _CountControllerState();
}

class _CountControllerState extends State<CountController> {
  void changeValue(String type) {
    if (type == 'add') {
      widget.setter(widget.value + 1);
    } else {
      if (widget.value == 0) return;
      widget.setter(widget.value - 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9),
        color: const Color.fromARGB(
          255,
          26,
          31,
          56,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              widget.label,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 33),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              widget.value.toString(),
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
            Row(
              children: [
                Ink(
                  decoration: const ShapeDecoration(
                    color: Colors.blue,
                    shape: CircleBorder(),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.remove),
                    color: Colors.white,
                    onPressed: () => changeValue('remove'),
                  ),
                ),
                Ink(
                  decoration: const ShapeDecoration(
                    color: Colors.blue,
                    shape: CircleBorder(),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.add),
                    color: Colors.white,
                    onPressed: () => changeValue('add'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
