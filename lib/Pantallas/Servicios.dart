import 'package:carousel_slider/carousel_slider.dart';
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
        height: 1560,
        color: Color.fromARGB(255, 160, 132, 220),
        child: Column(
          children: [
            Container(
              child: CarouselExample(),
            ),
//imagen 1
            Container(
              width: double.infinity,
              height: 30,
              color: Color.fromARGB(250, 161, 157, 231),
              margin: EdgeInsets.only(top: 10,left: 20,right: 20),
              child: Center(child: Text(
                  "Paseo En Cicla",
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
              color: Color.fromARGB(250, 161, 157, 231),
              margin: EdgeInsets.only(top: 10,left: 20,right: 20),
              child: Center(child: Text(
                  "Paseo En Moto",
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
              color: Color.fromARGB(250, 161, 157, 231),
              margin: EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Center(
                child: Text(
                  "Cuidado durante las vacaciones",
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




class CarouselExample extends StatelessWidget {
  final List<String> imageList = [
    'img/cuidadoVacaciones.jpg',
    'img/cuidadoVacaciones.jpg',
    'img/cuidadoVacaciones.jpg',
    'img/cuidadoVacaciones.jpg',
    'img/cuidadoVacaciones.jpg',
  ];

  final List<String> textList = [
    'Paseos grupales',
    'Paseos individuales',
    'Alimentación y agua',
    'Administración de medicamentos',
    'Juego y estimulación',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: CarouselSlider(
        options: CarouselOptions(
          height: 300,
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 2000),
          viewportFraction: 0.8,
        ),
        items: imageList.asMap().entries.map((entry) {
          final int index = entry.key;
          final String imageUrl = entry.value;
          final String text = textList[index];

          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 134, 96, 206),
                ),
                child: Stack(
                  children: [
                    Image.asset(
                      imageUrl,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: Text(
                            text,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}





