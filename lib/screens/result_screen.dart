import 'package:flutter/material.dart';

import 'constants.dart';

class ResultScreen extends StatelessWidget {
  final Map bmiResult;
  const ResultScreen({
    required this.bmiResult,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCUlATOR"),
        backgroundColor: kAppBarColor,
        elevation: 8,
      ),
      backgroundColor: kBodyColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 60.0,
                left: 35,
                right: 35,
              ),
              child: Column(
                children: [
                  const Text(
                    'Your Result',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(25),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: kGenderBoxColor,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 10),
                          Text(
                            "${bmiResult['interpretation']}",
                            style: const TextStyle(
                              color: Colors.green,
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          const SizedBox(height: 30),
                          Text(
                            "${bmiResult['result'].toStringAsFixed(1)}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 100,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          // const SizedBox(height: 30),
                          const Text(
                            "Normal BMI range:",
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "18.5 - 25 kg/m2",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 30),
                          Text(
                            "You have a ${bmiResult['interpretation']} body",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text(
                            "weight. Good job!",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 30),
                          Expanded(
                            child: Container(
                              color: kBodyColor,
                              padding: const EdgeInsets.symmetric(
                                vertical: 16,
                                horizontal: 3,
                              ),
                              child: const Center(
                                child: Text(
                                  "SAVE RESULT",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          InkWell(
            highlightColor: Colors.white,
            splashColor: Colors.amberAccent,
            radius: 10,
            onTap: (() {
              Navigator.pop(context);
            }),
            child: Container(
              color: kMainButtonColor,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: const Center(
                child: Text(
                  'RE-CALCULATE YOUR BMI',
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
