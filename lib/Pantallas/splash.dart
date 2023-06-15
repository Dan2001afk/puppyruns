import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'Servicios.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  State<splash> createState() => _splashState();
}
class _splashState extends State<splash> {
  void initState(){
    Future.delayed(Duration(seconds: 0),(){
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context)=>Servicios()
          )
      );
    });
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,//alinear vartical y horizontalmente

          children: [
            SizedBox(
              height: 300,width: 300,
              child: Lottie.asset("animacion/dog.json"),
            ),//dar espacio

            SizedBox(
                height: 20),
            const Text("PUPYY RUNS",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
      ),
    );
  }

}

