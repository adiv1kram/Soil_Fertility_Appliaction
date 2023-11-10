import 'package:flutter/material.dart';
import 'package:soil_analysis/screens/homescreen.dart';
import 'package:soil_analysis/screens/statpagescreen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homescreeen(),
    );
  }
}
