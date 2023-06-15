import 'package:flutter/material.dart';

class BotonesRegistroMascota extends StatefulWidget {
  const BotonesRegistroMascota({Key? key}) : super(key: key);

  @override
  State<BotonesRegistroMascota> createState() => _BotonesRegistroMascotaState();
}
final nombres = TextEditingController();
final edad = TextEditingController();
final raza = TextEditingController();
class _BotonesRegistroMascotaState extends State<BotonesRegistroMascota> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Nombres_Mascota() ,
        ),
        Container(
          child: Edad_Mascotas() ,
        ),
        Container(
          child: Raza_Mascotas(),
        )
      ],
    );
  }

  Column Nombres_Mascota() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          margin: EdgeInsets.only(left: 20,top: 30),
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
              hintText: 'Rocky',
              hintStyle: TextStyle(fontSize: 15, color: Color.fromARGB(
                  200, 200, 200, 200)),
              border: InputBorder.none,
              contentPadding:
              EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 0),
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
            controller: nombres,
          ),
        ),
      ],
    );
  }

//APELLIDOS
  Column Edad_Mascotas() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Text(
            'Edad',
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
              hintText: '4 años',
              hintStyle: TextStyle(fontSize: 15, color: Color.fromARGB(
                  200, 200, 200, 200)),
              border: InputBorder.none,
              contentPadding:
              EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 0),
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
            controller: edad,
          ),
        ),
      ],
    );
  }

//Cedula
  Column Raza_Mascotas() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Text(
            'Raza',
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
              hintText: 'Pitbull',
              hintStyle: TextStyle(fontSize: 15, color: Color.fromARGB(
                  200, 200, 200, 200)),
              border: InputBorder.none,
              contentPadding:
              EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 0),
              floatingLabelBehavior: FloatingLabelBehavior.always,
            ),
            controller: raza,
          ),
        ),
      ],
    );
  }
}

class BotonesRegistroMascotasdos extends StatefulWidget {
  const BotonesRegistroMascotasdos({Key? key}) : super(key: key);

  @override
  State<BotonesRegistroMascotasdos> createState() => _BotonesRegistroMascotasdosState();
}

class _BotonesRegistroMascotasdosState extends State<BotonesRegistroMascotasdos> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Registrar_Mascota(),
        ),
        Container(
          child: Omitir_Registro_M() ,
        ),
      ],
    );
  }
  Container Registrar_Mascota() {
    return Container(
      margin: EdgeInsets.only(top: 20,left: 20,right: 20),
      width: 400,
      height: 50,
      child: ElevatedButton.icon(
        onPressed: () {
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(
                255, 61, 132, 198))
        ),
        icon: Icon(
            null
        ),
        label: Text('Registrar Mascota',
          style: TextStyle(
              fontWeight: FontWeight.w500
          ),
        ),
      ),
    );
  }

  Container Omitir_Registro_M() {
    return Container(
      margin: EdgeInsets.only(top: 20,left: 20,right: 20),
      width: 400,
      height: 50,
      child: ElevatedButton.icon(
        onPressed: () {
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(
                255, 61, 132, 198))
        ),
        icon: Icon(
            null
        ),
        label: Text('Omitir Registro',
          style: TextStyle(
              fontWeight: FontWeight.w500
          ),
        ),
      ),
    );
  }
}

