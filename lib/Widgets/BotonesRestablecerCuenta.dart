import 'package:PuppyRuns/Pantallas/pantallaunoLogin.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BotonesRestablecerCuenta extends StatefulWidget {
  const BotonesRestablecerCuenta({Key? key}) : super(key: key);

  @override
  State<BotonesRestablecerCuenta> createState() => _BotonesRestablecerCuentaState();
}
  final Correo = TextEditingController();
class _BotonesRestablecerCuentaState extends State<BotonesRestablecerCuenta> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child:BuscarCorreo() ,
        ),
        Container(
          child:Enviar_Datos() ,
        )
      ],
    );
  }

  Container BuscarCorreo() {
    return Container(
      height: 50,
      margin: EdgeInsets.only(top: 20, right: 20, left: 20, bottom: 2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black),
      ),
      child: TextFormField(
        style: TextStyle(fontSize: 20, color: Colors.black),
        decoration: InputDecoration(
          labelStyle: TextStyle(fontSize: 20, color: Color.fromARGB(200, 200, 200, 200)),
          suffixIcon: Icon(Icons.search), // Icono de lupa
        ),
       controller: Correo,
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
            if (Correo.text.isEmpty){
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Error'),
                    content: Text('Digita tu correo para recuperar la cuenta'),
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
            }
            else{
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => pantallauno(label: label)),
              // );
            }
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(
                255, 61, 132, 198))
        ),
        icon: Icon(
            null
        ),
        label: Text('Enviar',
          style: TextStyle(
              fontWeight: FontWeight.w500
          ),
        ),
      ),
    );
  }
}
