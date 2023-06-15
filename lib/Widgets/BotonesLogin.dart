import 'package:PuppyRuns/Pantallas/AgregarMascota.dart';
import 'package:PuppyRuns/Pantallas/PantallaCuatroInicioUsuario.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:PuppyRuns/Pantallas/pantalladosCrearCuenta.dart';
import '../Pantallas/pantallaTresRecuperarCuenta.dart';

class BotonesLogin extends StatefulWidget {
  const BotonesLogin({Key? key}) : super(key: key);

  @override
  State<BotonesLogin> createState() => _BotonesLoginState();
}

class _BotonesLoginState extends State<BotonesLogin> {
  final Usuario = TextEditingController();
  final clave = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: CrearCuenta(),
        ),
        Container(
          child: loginUsuario(),
        ),
        Container(
          child: loginclave(),
        ),
        Container(
          child: olvidoContrasena(),
        ),
        Container(
          child: Enviar_Datos(),
        ),
      ],
    );
  }

  Container CrearCuenta() {
    return Container(
      width: double.infinity,
      height: 20,
      margin: EdgeInsets.only(top: 20, left: 25),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PantallaTres(label: '',)),
          );
        },
        child: Text(
          "Crear una cuenta",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.white,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }

  Container loginUsuario() {
    return Container(
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
          hintText: '',
          hintStyle: TextStyle(fontSize: 20, color: Colors.black),
          labelText: 'Correo',
          labelStyle: TextStyle(fontSize: 20, color: Colors.black),
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 0),
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
        controller: Usuario,
      ),
    );
  }

  Container loginclave() {
    return Container(
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
          hintText: '',
          hintStyle: TextStyle(fontSize: 20, color: Colors.black),
          labelText: 'Contraseña',
          labelStyle: TextStyle(fontSize: 20, color: Colors.black),
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 0),
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
        controller: clave,
      ),
    );
  }

  Container olvidoContrasena() {
    return Container(
      width: double.infinity,
      height: 20,
      margin: EdgeInsets.only(top: 20, left: 25),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => pantallaTres(label: '',)),
          );
        },
        child: Text(
          "¿Haz olvidado tu contraseña?",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: Colors.white,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }

  Container Enviar_Datos() {
    return Container(
      margin: EdgeInsets.only(top: 20,left: 20,right: 20),
      width: 400,
      height: 50,
      child: ElevatedButton.icon(
        onPressed: () {
          String usu = "Daniel";
          String clave1 = "1234";

          if (Usuario.text.isEmpty || clave.text.isEmpty) {
            Fluttertoast.showToast(
              msg: "Por favor complete todos los campos",
              textColor: Colors.white,
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.CENTER,
            );
          } else if (Usuario.text.length < 4 || clave.text.length < 4) {
            Fluttertoast.showToast(
              msg: "Correo o contraseña demasiado cortos",
              textColor: Colors.white,
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.CENTER,
            );
          } else if (Usuario.text == usu && clave.text == clave1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AgregarMascotas()),
            );
          } else {
            Fluttertoast.showToast(
              msg: "Datos incorrectos",
              textColor: Colors.white,
              toastLength: Toast.LENGTH_LONG,
              gravity: ToastGravity.CENTER,
            );
          }
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(
              255, 61, 132, 198))
        ),
        icon: Icon(
          null
        ),
        label: Text('Iniciar Sesión',
          style: TextStyle(
            fontWeight: FontWeight.w500
          ),
        ),
      ),
    );
  }
}
