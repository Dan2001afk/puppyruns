import 'package:flutter/material.dart';
class PantallaCuatro extends StatelessWidget {
  const PantallaCuatro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Text(
                  "hola"
                ),
              )
            ],
          ),
      ),
    );
  }
}
