import 'package:PuppyRuns/Widgets/BotonesRegistroMascota.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AgregarMascotas extends StatefulWidget {
  const AgregarMascotas({Key? key}) : super(key: key);

  @override
  State<AgregarMascotas> createState() => _AgregarMascotasState();
}

class _AgregarMascotasState extends State<AgregarMascotas> {
  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.camera);

    if (pickedImage != null) {
      // Aquí puedes hacer algo con la imagen seleccionada, como guardarla o mostrarla en tu pantalla
    }
  }

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
              height: 950,
              color: Color.fromARGB(255, 160, 132, 220),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 170,
                    color: Color.fromARGB(255, 147, 112, 211),
                    margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: ElevatedButton.icon(
                      onPressed: _pickImage,
                      icon: Icon(Icons.camera ,color: Color.fromARGB(
                          255, 104, 71, 168),
                      ), // Aquí puedes cambiar el icono por el que desees
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(
                              255, 191, 172, 226))
                      ),
                      label: Text('Cargar Foto de Mascota'),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 40,
                      margin: EdgeInsets.only(top: 10,left: 40,right: 40),
                    child: Center(
                      child: Text(
                        "Informacion de la Mascota",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Opacity(
                      opacity: 0.9,
                      child: BotonesRegistroMascota(),
                    ),

                  ),
                  Container(
                    width: double.infinity,
                    height: 40,
                    margin: EdgeInsets.only(top: 10,left: 40,right: 40),
                    child: Center(
                      child: Text(
                        "Informacion Adicional",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 170,
                    color: Color.fromARGB(255, 191, 172, 226),
                    margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Text(
                      "Agrega algo mas acerta de tu Mascota"
                    ),
                  ),

              Container(
                margin: EdgeInsets.only(top: 10,left: 10,right: 10),
                child: BotonesRegistroMascotasdos(),
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
