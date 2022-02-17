import 'package:flutter/material.dart';
import 'package:helloworld/screens/constants.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HAMID CALCUlATOR"),
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
                        child: Container(
                          padding: const EdgeInsets.all(25),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: kGenderBoxColor,
                          ),
                          child: Column(children: const [
                            Icon(
                              Icons.male,
                              color: Colors.white,
                              size: 100,
                            ),
                            SizedBox(height: 20),
                            Text(
                              "MALE",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ]),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(25),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: kBoxColor,
                          ),
                          child: Column(children: const [
                            Icon(
                              Icons.female,
                              color: Colors.white,
                              size: 100,
                            ),
                            SizedBox(height: 20),
                            Text(
                              "FEMALE",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ]),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(25),
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
                            height: 6,
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
                                    textBaseline: TextBaseline.alphabetic),
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
                                },
                              );
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Expanded(
                    child: Row(
                      children: [
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
                                  '74',
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
                                    Container(
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
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    Container(
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
                            padding: const EdgeInsets.all(20),
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
                                  '19',
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
                                    Container(
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
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    Container(
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
          Container(
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
          )
        ],
      ),
    );
  }
}
