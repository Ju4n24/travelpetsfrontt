import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/DetailsScreen.dart';
import 'package:flutter_application_1/pages/LoginV2.dart';

class RegistroV2 extends StatefulWidget {
  
  final HeroTag;
    

  const RegistroV2({Key? key,this.HeroTag}) : super(key: key);

  @override
  State<RegistroV2> createState() => _RegistroV2State();
  
}

class _RegistroV2State extends State<RegistroV2> {
  @override
  Widget build(BuildContext context) {;
    
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          _Color(),
          _ContainerRegistro()   
         ]
      )
    );
  }

Widget _Color(){
  return Positioned(
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          end: Alignment.bottomCenter,
          begin: Alignment.topCenter,
          colors: [
            Colors.black,
            Color.fromARGB(255, 54, 244, 149)
          ]
        )
      ),
    ),
  );
}

Widget _ContainerRegistro(){
  return Center(
    child: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 10,
                  offset: Offset(0, 5)
                )
              ],
              
            ),
            child: Image(
              image: AssetImage('images/logitoo.png'),
              fit: BoxFit.cover,
              
            )
            
          ),
          SizedBox(height: 80),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: TextField(
              style: TextStyle(
                color: Colors.white
              ),
              decoration: InputDecoration(
                hintText: 'Ingrese su nombre',
                hintStyle: TextStyle(
                  color: Colors.white
                ),
                prefixIcon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none
                ),
                filled: true,
                fillColor: Colors.white.withOpacity(0.3),


              ),
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: TextField(
              style: TextStyle(
                color: Colors.white
              ),
              decoration: InputDecoration(
                hintText: 'Escriba su Nombre de Usuario',
                hintStyle: TextStyle(
                  color: Colors.white
                ),
                prefixIcon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none
                ),
                filled: true,
                fillColor: Colors.white.withOpacity(0.3),
              ),
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: TextField(
              style: TextStyle(
                color: Colors.white
              ),
              decoration: InputDecoration(
                hintText: 'Ingrese un Correo Electronico',
                hintStyle: TextStyle(
                  color: Colors.white
                ),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none
                ),
                filled: true,
                fillColor: Colors.white.withOpacity(0.3),


              ),
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: TextField(
              style: TextStyle(
                color: Colors.white
              ),
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Ingrese contraseña',
                hintStyle: TextStyle(
                  color: Colors.white
                ),
                prefixIcon: Icon(
                  Icons.security,
                  color: Colors.white,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none
                ),
                filled: true,
                fillColor: Colors.white.withOpacity(0.3),


              ),
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: TextField(
              style: TextStyle(
                color: Colors.white
              ),
              decoration: InputDecoration(
                hintText: 'Ingrese tipo de mascota',
                hintStyle: TextStyle(
                  color: Colors.white
                ),
                prefixIcon: Icon(
                  Icons.catching_pokemon,
                  color: Colors.white,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none
                ),
                filled: true,
                fillColor: Colors.white.withOpacity(0.3),
              ),
            ),
          ),
          SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => DetailsScreen()));
            },
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 33, 255, 41),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.symmetric(
                vertical: 22,
                horizontal: 80
              )
            ),
            child: Text(
              'Registrarse',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          SizedBox(height: 14),
            Text(
            '¿Ya tienes una cuenta?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18
            ),
          ),
          SizedBox(height: 5),
            InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => LoginV2()));

            },
            child: Text(
              "[Inicia Sesion aqui]",
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 16,
                backgroundColor: Colors.white
              ),
            ),
          )
        ],
      ),
    ),
  );
}




}
