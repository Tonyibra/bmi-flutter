import 'package:bmi_calc/count_controller.dart';
import 'package:bmi_calc/gender.dart';
import 'package:bmi_calc/height_box.dart';
import 'package:bmi_calc/result_screen.dart';
import 'package:flutter/material.dart';

class AppContainer extends StatefulWidget {
  const AppContainer({super.key});

  @override
  State<AppContainer> createState() => _AppContainerState();
}

class _AppContainerState extends State<AppContainer> {
  int weight = 45;

  int age = 12;

  double heightValue = 140;

  final String activeGender = '';

  @override
  Widget build(BuildContext context) {
    void _calculateBmi() {
      double heightInMeters = heightValue / 100; // convert height to meters
      double bmi = weight / (heightInMeters * heightInMeters);

      print(bmi);

      if (!bmi.isNaN) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ResultScreen(bmi: bmi)),
        );
      }
    }

    void setHeight(double height) {
      setState(() {
        heightValue = height;
      });
    }

    void setWeight(int selectedWeight) {
      setState(() {
        weight = selectedWeight;
      });
    }

    void setAge(int userAge) {
      setState(() {
        age = userAge;
      });
    }

    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 10, 14, 35),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Gender(gender: activeGender),
              const SizedBox(
                height: 50,
              ),
              HeightBox(
                heightValue: heightValue,
                setter: (val) => setHeight(val),
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CountController(
                    label: 'WIEGHT',
                    value: weight,
                    setter: (val) => setWeight(val),
                  ),
                  CountController(
                    label: 'AGE',
                    value: age,
                    setter: (val) => setAge(val),
                  )
                ],
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red[700]),
                    onPressed: _calculateBmi,
                    child: const Text(
                      'CALCULATE',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
