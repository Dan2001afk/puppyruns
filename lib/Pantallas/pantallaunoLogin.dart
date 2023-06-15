import 'package:PuppyRuns/Widgets/BotonesLogin.dart';
import 'package:flutter/material.dart';
import '../Figuras/IconoLogin.dart';

class pantallauno extends StatelessWidget {
  const pantallauno({Key? key, required String label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 100, 92, 187),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text('Inicio de Sesión'),
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
                    child:figura_principal() ,
                    margin: EdgeInsets.only(top: 50),
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: Center(
                      child: Text(
                        "INICIAR SESION",
                        style: TextStyle(
                            fontSize: 25,fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Opacity(
                      opacity: 0.8,
                      child: BotonesLogin(),
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
