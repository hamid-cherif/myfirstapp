import 'package:flutter/material.dart';
import 'package:helloworld/screens/constants.dart';
import 'package:helloworld/screens/result_screen.dart';
import './../components/components.dart';

enum Gender { male, female }

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _sliderValue = 1;
  Gender gender = Gender.male;
  int height = 1;
  int weight = 1;
  int age = 1;

  Map<dynamic, dynamic> result(
      {required double height, required double weight}) {
    double heightInMeter = height.toDouble() / 100;

    final bmi = weight.toDouble() / (heightInMeter * heightInMeter);

    if (bmi <= 18.5) {
      return {
        "result": bmi,
        "rangeValue": "Below 18,5",
        "interpretation": "underweight"
      };
    } else if (bmi >= 18.5 && bmi <= 24.9) {
      return {
        "result": bmi,
        "rangeValue": "18,5 - 24,9",
        "interpretation": "normal weight"
      };
    } else if (bmi >= 25 && bmi <= 29.9) {
      return {
        "result": bmi,
        "rangeValue": "25 - 29,9",
        "interpretation": "overweight"
      };
    } else {
      return {
        "result": bmi,
        "rangeValue": "30 - Above",
        "interpretation": "obesity"
      };
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BY DOCTOR HAMID"),
        backgroundColor: kAppBarColor,
        elevation: 8,
      ),
      backgroundColor: kBodyColor,
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 32, left: 32, right: 32),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: GenderButtonComponent(
                          title: "MALE",
                          bgColor: gender == Gender.male
                              ? kGenderBoxColor
                              : kBodyColor,
                          buttonIcon: Icons.male,
                          onTap: (() {
                            setState(() {
                              gender = Gender.male;
                            });
                          }),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          child: GenderButtonComponent(
                        title: "FEMALE",
                        bgColor: gender == Gender.female
                            ? kGenderBoxColor
                            : kBodyColor,
                        buttonIcon: Icons.female,
                        onTap: (() {
                          setState(() {
                            gender = Gender.female;
                          });
                        }),
                      ))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: kBoxColor,
                      ),
                      child: Column(
                        children: [
                          Text(
                            'HEIGHT',
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            textBaseline: TextBaseline.alphabetic,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '$_sliderValue',
                                style: TextStyle(
                                  color: Colors.grey[50],
                                  fontWeight: FontWeight.w900,
                                  fontSize: 56,
                                  textBaseline: TextBaseline.alphabetic,
                                ),
                              ),
                              Text(
                                'cm',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 26,
                                  textBaseline: TextBaseline.alphabetic,
                                ),
                              ),
                            ],
                          ),
                          Slider(
                            activeColor: Colors.white,
                            inactiveColor: Colors.grey[200],
                            thumbColor: kSliderActiveColor,
                            min: 0,
                            max: 300,
                            divisions: 300,
                            value: _sliderValue.toDouble(),
                            onChanged: (value) {
                              setState(
                                () {
                                  _sliderValue = value.toInt();
                                  height = _sliderValue;
                                },
                              );
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: kBoxColor,
                            ),
                            child: Column(
                              children: [
                                Text(
                                  'WEIGHT',
                                  style: TextStyle(
                                    color: Colors.grey[400],
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  '$weight',
                                  style: TextStyle(
                                    color: Colors.grey[50],
                                    fontWeight: FontWeight.w900,
                                    fontSize: 56,
                                    textBaseline: TextBaseline.alphabetic,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: (() {
                                        setState(() {
                                          if (weight > 10) weight--;
                                        });
                                      }),
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: kRoundedButtonColor,
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                        child: const Icon(
                                          Icons.remove,
                                          size: 35,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    GestureDetector(
                                      onTap: (() {
                                        setState(() {
                                          if (weight < 600) weight++;
                                        });
                                      }),
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: kRoundedButtonColor,
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                        child: const Icon(
                                          Icons.add,
                                          size: 35,
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: kBoxColor,
                            ),
                            child: Column(
                              children: [
                                Text(
                                  'AGE',
                                  style: TextStyle(
                                    color: Colors.grey[400],
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Text(
                                  '$age',
                                  style: TextStyle(
                                    color: Colors.grey[50],
                                    fontWeight: FontWeight.w900,
                                    fontSize: 56,
                                    textBaseline: TextBaseline.alphabetic,
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: (() {
                                        setState(() {
                                          if (age > 1) age--;
                                        });
                                      }),
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: kRoundedButtonColor,
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                        child: const Icon(
                                          Icons.remove,
                                          size: 35,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    GestureDetector(
                                      onTap: (() {
                                        setState(() {
                                          if (age < 120) age++;
                                        });
                                      }),
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: kRoundedButtonColor,
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                        child: const Icon(
                                          Icons.add,
                                          size: 35,
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            highlightColor: Colors.white,
            splashColor: Colors.amberAccent,
            radius: 10,
            onTap: (() {
              setState(() {
                if (height >= 120 && weight >= 30.0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return ResultScreen(
                          bmiResult: result(
                            height: height.toDouble(),
                            weight: weight.toDouble(),
                          ),
                        );
                      },
                    ),
                  );
                } else {
                  showAboutDialog(
                    context: context,
                    applicationIcon: const Icon(Icons.cancel),
                    applicationName: "Dr. HAMID",
                    children: [
                      const Text('Please provide good information.'),
                    ],
                  );
                }
              });
            }),
            child: Container(
              color: kMainButtonColor,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: const Center(
                child: Text(
                  'CALCULATE YOUR BMI',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
