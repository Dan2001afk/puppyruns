import 'package:PuppyRuns/Widgets/BotonesRestablecerCuenta.dart';
import 'package:flutter/material.dart';

class pantallaTres extends StatelessWidget {
  final String label;

  pantallaTres({required this.label});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 100, 92, 187),
        title: Center(child: Text('Recupera tu cuenta')),
      ),
      body: SingleChildScrollView(
            child:Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 790,
                  color: Color.fromARGB(255, 160, 132, 220),
                  child: Column(
                    children: [

                      Container(
                        width: double.infinity,
                        height: 50,
                        //color: Color.fromARGB(47, 45, 29, 80),
                        margin: EdgeInsets.only(top: 160,left: 10,right: 10),
                        child: Center(
                          child: Text(
                            "¡ENCONTREMOS TU CUENTA!",
                            style: TextStyle(
                                fontSize: 20,fontWeight: FontWeight.w800
                            ),
                          ),
                        ),
                      ),

                      Container(
                        width: double.infinity,
                        height: 50,
                        //color: Color.fromARGB(47, 45, 29, 80),
                        margin: EdgeInsets.only(top: 20,left: 10,right: 10),
                        child: Center(
                          child: Text(
                            "¿Cual es tu Correo Electronico?",
                            style: TextStyle(
                                fontSize: 25,fontWeight: FontWeight.w500
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Opacity(
                          opacity: 0.8,
                          child: BotonesRestablecerCuenta(),
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
