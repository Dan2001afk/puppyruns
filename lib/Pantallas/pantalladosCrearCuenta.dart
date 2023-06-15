import 'package:PuppyRuns/Widgets/BotonesLogin.dart';
import 'package:PuppyRuns/Widgets/BotonesRegUsuario.dart';
import 'package:flutter/material.dart';


class PantallaTres extends StatelessWidget {
  final String label;

  PantallaTres({required this.label});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 100, 92, 187),
        title: Text('Crear Cuenta'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 790,
              color: Color.fromARGB(255, 160, 132, 220),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 161, 110, 253), // Mismo color de fondo
                      borderRadius: BorderRadius.circular(20.0), // Radio de borde
                      border: Border.all(
                        color: Color.fromARGB(255, 160, 132, 220),
                        width: 2.0,
                      ),
                    ),
                    margin: EdgeInsets.only(top: 80, left: 10, right: 10),
                    child: Center(
                      child: Text("REGISTRO DE USUARIO",
                        style: TextStyle(
                            fontSize: 25,fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Opacity(
                      opacity: 0.8,
                      child: BotonesRegUsuario(),
                    ),
                  ),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}