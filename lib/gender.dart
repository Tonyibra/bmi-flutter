import 'package:flutter/material.dart';

class Gender extends StatefulWidget {
  String gender;

  Gender({required this.gender, super.key});

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
  _setGender(String currGender) {
    setState(() {
      widget.gender = currGender;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 26, 31, 56),
            side: BorderSide(
                color: widget.gender == 'female'
                    ? Colors.blue
                    : Colors.transparent),
            shape: ContinuousRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          onPressed: () => _setGender('female'),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 25,
              horizontal: 10,
            ),
            child: Column(
              children: const [
                Icon(
                  Icons.female,
                ),
                Text(
                  'Female',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 26, 31, 56),
            side: BorderSide(
              color: widget.gender == 'male' ? Colors.blue : Colors.transparent,
            ),
            shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(20)),
          ),
          onPressed: () => _setGender('male'),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 25,
              horizontal: 10,
            ),
            child: Column(
              children: const [
                Icon(
                  Icons.male,
                ),
                Text(
                  'Male',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
