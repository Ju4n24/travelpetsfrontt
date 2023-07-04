import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/DetailsScreen.dart';
import 'package:flutter_application_1/pages/Registro.dart';
import 'package:get/get.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _ColorFondo(),
          _Formulario()
        ],
      ),





    );
  } 

Widget _Formulario() {
  String inputValue = '';

  return Container(
    child: Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),

        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Bienvenido a Travel Pets",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 40),
            TextField( //PRIMERA CASILLA
              onChanged: (value) {
                inputValue = value;
              },
              decoration: InputDecoration(
                hintText: 'Nombre',
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 40),
            TextField( //SEGUNDA CASILLA
              onChanged: (value) {
                inputValue = value;
              },
              decoration: InputDecoration(
                hintText: 'Usuario',
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
                
              ),
            ),
            SizedBox(height: 40),
            TextField( //TERCERA CASILLA
              onChanged: (value) {
                inputValue = value;
              },
              decoration: InputDecoration(
                hintText: 'Contraseña',
                hintStyle: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 40),
              ElevatedButton(  //BOTON
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => DetailsScreen() ) );
              },
              child: Text(
                "Ingresar",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 33, 243, 61), 
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40))
                ),
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                // Espaciado interno
              ),
            ),
            SizedBox(height: 25),
            Text(
              "¿Todavia no tienes una cuenta?",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15
              ),
              
            ),
            SizedBox(height: 4),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => Registro()));
              },
              child: Text(
                "[Registrate Aqui]",
                style: TextStyle(
                  color: Color.fromARGB(255, 35, 213, 219),
                  fontSize: 16
                ),
              ),
            )
          ],
        ),
      ),
    ),
  );
}

Widget _ColorFondo(){
  return Positioned(
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Colors.black,
            Color.fromARGB(255, 35, 182, 39)
          ]
        )
      ),
    ),
  );
}





}
