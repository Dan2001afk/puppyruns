import 'package:flutter/material.dart';
class AgregarMascotas extends StatefulWidget {
  const AgregarMascotas({Key? key}) : super(key: key);

  @override
  State<AgregarMascotas> createState() => _AgregarMascotasState();
}

class _AgregarMascotasState extends State<AgregarMascotas> {
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
        title: Text('REGISTRAR MASCOTA'),
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
                      //child: BotonesLogin(),
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
