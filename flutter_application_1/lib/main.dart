import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentations/screens/counters/counter_functions_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.lightBlue
      ),
      debugShowCheckedModeBanner: false,
      home: const CounterFunctionsScreens(),
    );
  }
}