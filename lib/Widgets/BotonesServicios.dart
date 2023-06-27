import "package:PuppyRuns/Pantallas/serviciosDos.dart";
import "package:flutter/material.dart";

import "../Pantallas/pantallaunoLogin.dart";
class BotonesServicios extends StatefulWidget {
  const BotonesServicios({Key? key}) : super(key: key);

  @override
  State<BotonesServicios> createState() => _BotonesServiciosState();
}

class _BotonesServiciosState extends State<BotonesServicios> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Enviar_Datos(context),
        )
      ],
    );
  }
}

Container Enviar_Datos(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(top: 20,left: 20,right: 20),
    width: 400,
    height: 50,
    child: ElevatedButton.icon(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ServiciosDos(label: '',)),
        );
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(
              255, 61, 132, 198))
      ),
      icon: Icon(
          null
      ),
      label: Text('Ver mas Servicios',
        style: TextStyle(
            fontWeight: FontWeight.w500
        ),
      ),
    ),
  );
}

class BotonesServiciosdos extends StatelessWidget {
  const BotonesServiciosdos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: unirAlEquipo(context),
        ),
        Container(
          child: solicitarServicio(context),
        )
      ],
    );
  }

  Container unirAlEquipo(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 20, right: 20),
      width: 400,
      height: 60,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => pantallauno(label: '',)),
          );
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 104, 109, 224)),
          side: MaterialStateProperty.all<BorderSide>(
            BorderSide(
              color: Colors.purple[800]!, // Color del borde morado más intenso
              width: 2.0, // Ancho del borde
            ),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0), // Radio de borde
            ),
          ),
        ),
        child: Text(
          'Hacer parte de nuestro equipo de trabajo',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  Container solicitarServicio(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25, left: 20, right: 20),
      width: 200,
      height: 60,
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => pantallauno(label: '',)),
          );
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 104, 109, 224)),
          side: MaterialStateProperty.all<BorderSide>(
            BorderSide(
              color: Colors.purple[800]!, // Color del borde morado más intenso
              width: 2.0, // Ancho del borde
            ),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0), // Radio de borde
            ),
          ),
        ),
        child: Center(
          child: Text(
            'Solicitar Servicios',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }

}

