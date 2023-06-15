import 'package:flutter/material.dart';

import '../Pantallas/pantallaunoLogin.dart';

class BotonesRegUsuario extends StatefulWidget {
  const BotonesRegUsuario({Key? key}) : super(key: key);

  @override
  State<BotonesRegUsuario> createState() => _BotonesRegUsuarioState();
}

class _BotonesRegUsuarioState extends State<BotonesRegUsuario> {
  final Nombres = TextEditingController();
  final Apellidos = TextEditingController();
  final Num_Cedula = TextEditingController();
  final Direccion = TextEditingController();
  final Num_Celular = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Nombre_usu() ,
        ),
        Container(
          child: Apellidos_usu(),
        ),
        Container(
          child: Cedula_usu(),
        ),
        Container(
          child: Direccion_usu(),
        ),
        Container(
          child: NumeroCelular_usu(),
        ),
        Container(
          child: Enviar_Datos(),
        )
      ],
    );
  }
  //NOMBRES
  Column Nombre_usu() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          margin: EdgeInsets.only(left: 20,top: 40),
          child: Text(
            'Nombres',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w500
            ),
          ),
        ),
        Container(
          height: 50,
          margin: EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 2),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black),
          ),
          child: TextFormField(
            style: TextStyle(fontSize: 20, color: Colors.black),
            decoration: InputDecoration(
              hintText: 'Daniel Camilo',
              hintStyle: TextStyle(fontSize: 15, color: Color.fromARGB(
                  200, 200, 200, 200)),
              border: InputBorder.none,
              contentPadding:
              EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 0),
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
            controller: Nombres,
          ),
        ),
      ],
    );
  }

//APELLIDOS
  Column Apellidos_usu() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Text(
            'Apellidos',
            style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w500
            ),
          ),
        ),
        Container(
          height: 50,
          margin: EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 2),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black),
          ),
          child: TextFormField(
            style: TextStyle(fontSize: 20, color: Colors.black),
            decoration: InputDecoration(
              hintText: 'Gonzalez',
              hintStyle: TextStyle(fontSize: 15, color: Color.fromARGB(
                  200, 200, 200, 200)),
              border: InputBorder.none,
              contentPadding:
              EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 0),
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
            controller: Apellidos,
          ),
        ),
      ],
    );
  }

//Cedula
  Column Cedula_usu() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Text(
            'Nº Cedula',
            style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w500
            ),
          ),
        ),
        Container(
          height: 50,
          margin: EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 2),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black),
          ),
          child: TextFormField(
            style: TextStyle(fontSize: 20, color: Colors.black),
            decoration: InputDecoration(
              hintText: '0012101210',
              hintStyle: TextStyle(fontSize: 15, color: Color.fromARGB(
                  200, 200, 200, 200)),
              border: InputBorder.none,
              contentPadding:
              EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 0),
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
            controller: Num_Cedula,
          ),
        ),
      ],
    );
  }

//Direccion
  Column Direccion_usu() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Text(
            'Direccion',
            style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w500
            ),
          ),
        ),
        Container(
          height: 50,
          margin: EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 2),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black),
          ),
          child: TextFormField(
            style: TextStyle(fontSize: 20, color: Colors.black),
            decoration: InputDecoration(
              hintText: 'Cra 16 # 17-32',
              hintStyle: TextStyle(fontSize: 15, color: Color.fromARGB(
                  200, 200, 200, 200)),
              border: InputBorder.none,
              contentPadding:
              EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 0),
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
            controller: Direccion,
          ),
        ),
      ],
    );
  }

//NumeroCelular
  Column NumeroCelular_usu() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Text(
            'Nº Celular',
            style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w500
            ),
          ),
        ),
        Container(
          height: 50,
          margin: EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 2),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black),
          ),
          child: TextFormField(
            style: TextStyle(fontSize: 20, color: Colors.black),
            decoration: InputDecoration(
              hintText: '320*******',
              hintStyle: TextStyle(fontSize: 15, color: Color.fromARGB(
                  200, 200, 200, 200)),
              border: InputBorder.none,
              contentPadding:
              EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 0),
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
            controller: Num_Celular,
          ),
        ),
      ],
    );
  }


  Container Enviar_Datos() {
    return Container(
      margin: EdgeInsets.only(top: 50, left: 20, right: 20),
      width: 250,
      height: 60,
      child: ElevatedButton(
        onPressed: () {
          if (Nombres.text.isEmpty ||
              Apellidos.text.isEmpty ||
              Num_Cedula.text.isEmpty ||
              Direccion.text.isEmpty ||
              Num_Celular.text.isEmpty) {
            // error si hay campos vacíos
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('Error'),
                  content: Text('Por favor, rellene todos los campos.'),
                  actions: [
                    TextButton(
                      child: Text('Aceptar'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            );
          } else if (Num_Cedula.text.length < 10) {
            // longitud mínima de la cédula
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('Error'),
                  content: Text('La cédula debe tener al menos 10 caracteres.'),
                  actions: [
                    TextButton(
                      child: Text('Aceptar'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            );
          } else if (Num_Celular.text.length < 7) {
            //
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('Error'),
                  content: Text('El número de celular debe tener al menos 7 caracteres.'),
                  actions: [
                    TextButton(
                      child: Text('Aceptar'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            );
          } else {
            //  campos están llenos y válidos
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => pantallauno(label: '',)),
            );
          }
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            Color.fromARGB(255, 61, 132, 198),
          ),
          side: MaterialStateProperty.all<BorderSide>(
            BorderSide(
              color: Colors.purple[800]!,
              width: 2.0,
            ),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
        child: Center(
          child: Text(
            'Registrar',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }

}




