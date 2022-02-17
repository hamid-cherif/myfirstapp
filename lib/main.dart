import 'package:flutter/material.dart';
import 'package:helloworld/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI AP',
      theme: ThemeData(
        sliderTheme: const SliderThemeData(
          trackHeight: 2,
          overlappingShapeStrokeColor: Colors.red,
          thumbShape: RoundSliderThumbShape(
            elevation: 0,
            enabledThumbRadius: 15,
          ),
        ),
      ),
      home: const SafeArea(
        bottom: false,
        child: HomeScreen(),
      ),
    );
  }
}
