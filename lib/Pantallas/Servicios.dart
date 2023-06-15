import 'package:PuppyRuns/Pantallas/pantallaunoLogin.dart';
import 'package:PuppyRuns/Widgets/BotonesServicios.dart';
import 'package:flutter/material.dart';
class Servicios extends StatelessWidget {
  const Servicios({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 100, 92, 187),
        title: Center(child: Text('SERVICIOS')),
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
                  "Pasea Tu Mascota En Cicla",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  )
              )),
            ),
            Container(
              width: 400,
              height: 300,
              color: Colors.deepOrange,
              margin: EdgeInsets.only(top: 60),
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset("img/paseoCicla.jpg",),
              ),
            ),
// boton informacion

            Container(
              width: double.infinity,
              height: 20,
              margin: EdgeInsets.only(top: 50, left: 25),
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
              margin: EdgeInsets.only(top: 10,left: 20,right: 20),
              child: Center(child: Text(
                  "Pasea Tu Mascota En Moto",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              )),
            ),
            Container(
              width: 350,
              height: 225,
              color: Colors.deepOrange,
              margin: EdgeInsets.only(top: 10),
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset("img/PaseoEnMoto.jpeg"),
              ),
            ),
//imagen 3

            //BOTON INFORMACION
            Container(
              width: double.infinity,
              height: 20,
              margin: EdgeInsets.only(top: 5, left: 25),
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
              margin: EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Center(
                child: Text(
                  "Cuidado de mascotas durante las vacaciones",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),

            Container(
              width: 400,
              height: 225,
              color: Colors.deepOrange,
              margin: EdgeInsets.only(top: 47),
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset("img/cuidadoVacaciones.jpg"),
              ),
            ),
// boton informacion

            Container(
              width: double.infinity,
              height: 20,
              margin: EdgeInsets.only(top: 40, left: 25),
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
              child: BotonesServicios(),
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
