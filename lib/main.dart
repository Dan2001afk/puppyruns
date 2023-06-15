import 'package:PuppyRuns/Pantallas/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Principal());
}
class Principal extends StatelessWidget {
  const Principal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: splash(),
    );
  }
}
