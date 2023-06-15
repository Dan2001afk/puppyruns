import 'package:flutter/material.dart';

import '../Widgets/BotonesServicios.dart';

class ServiciosDos extends StatelessWidget {
  const ServiciosDos({Key? key, required String label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 100, 92, 187),
        title: Center(child: Text('Mas Servicios')),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 1270,
              color: Color.fromARGB(255, 160, 132, 220),
              child: Column(
                children: [
//imagen 1
                  Container(
                    width: double.infinity,
                    height: 30,
                    color: Colors.amber,
                    margin: EdgeInsets.only(top: 10,left: 20,right: 20),
                    child: Center(child: Text(
                        "Visita Domiciliaria",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        )
                    )),
                  ),
                  Container(
                    width: 300,
                    height: 220,
                    color: Colors.deepOrange,
                    margin: EdgeInsets.only(top: 10),
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Image.asset("img/VisitaDomiciliaria.png"),
                    ),
                  ),
// boton informacion

                  Container(
                    width: double.infinity,
                    height: 20,
                    margin: EdgeInsets.only(top: 10, left: 25),
                    child: InkWell(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => pantallauno(label: '',)),
                        // );
                      },
                      child: Center(
                        child: Text(
                          "Ver mas Informacion...",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(250, 4, 83, 147),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ),
// imagen 2
                  Container(
                    width: double.infinity,
                    height: 30,
                    color: Colors.amber,
                    margin: EdgeInsets.only(top: 15,left: 20,right: 20),
                    child: Center(child: Text(
                      "Entrenamiento Basico",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    )),
                  ),
                  Container(
                    width: 390,
                    height: 230,
                    color: Colors.deepOrange,
                    margin: EdgeInsets.only(top: 25),
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Image.asset("img/EntrenamientoCanino.jpg"),
                    ),
                  ),
//imagen 3

                  //BOTON INFORMACION
                  Container(
                    width: double.infinity,
                    height: 20,
                    margin: EdgeInsets.only(top: 20, left: 25),
                    child: InkWell(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => pantallauno(label: '',)),
                        // );
                      },
                      child: Center(
                        child: Text(
                          "Ver mas Informacion...",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(250, 4, 83, 147),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ),


                  Container(
                    width: double.infinity,
                    height: 30,
                    color: Colors.amber,
                    margin: EdgeInsets.only(top: 15, left: 20, right: 20),
                    child: Center(
                      child: Text(
                        "Seguimiento via GPS",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),

                  Container(
                    width: 400,
                    height: 190,
                    color: Colors.deepOrange,
                    margin: EdgeInsets.only(top: 15),
                    child: FittedBox(
                      fit: BoxFit.cover,
                      child: Image.asset("img/seguimientoGPS.jpg"),
                    ),
                  ),
// boton informacion

                  Container(
                    width: double.infinity,
                    height: 50,
                    margin: EdgeInsets.only(top: 20, left: 25),

                      child: Center(
                        child: Text(
                          "Gracias a nuestro avanzado sistema, podras  localizar tu mascota en tiempo real",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 186, 242, 115),

                          ),
                        ),
                      ),

                  ),

                  Container(
                     child: BotonesServiciosdos(),
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
