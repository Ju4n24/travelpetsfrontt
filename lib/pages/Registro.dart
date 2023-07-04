import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/DetailsScreen.dart';
import 'package:flutter_application_1/pages/Login.dart';
import 'package:get/get.dart';
import 'package:cached_network_image/cached_network_image.dart';


class Registro extends StatefulWidget {
  final HeroTag;

  const Registro({Key? key,this.HeroTag}) : super(key: key);

  @override
  State<Registro> createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;




    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          _ColorFondo(),
          _FormularioRegistro(),
          _FlechaAtras()
          
         ]
        
          
                    
        
      

         
    



      )
    );
  }


Widget _FormularioRegistro(){

  String inputValue= '';
  return Positioned(
    child: Center(
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Registrese en Travel Pets",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 40,),
            TextField(
              onChanged: (value) {
                inputValue = value;
              },
              decoration: InputDecoration(
                hintText: "Nombre",
                hintStyle: TextStyle(
                 fontWeight: FontWeight.bold
                )
              ),
            ),
            SizedBox(height: 35),
            TextField(
              onChanged: (value) {
                inputValue = value;
              },
              decoration: InputDecoration(
                hintText: "Usuario",
                hintStyle: TextStyle(
                  fontWeight: FontWeight.bold
                )
              ),
            ),
            SizedBox(height: 35),
            TextField(
              onChanged: (value) {
                inputValue = value;
              },
              decoration: InputDecoration(
                hintText: "Email",
                hintStyle: TextStyle(
                  
                  fontWeight: FontWeight.bold
                )

              ),
            ),
            SizedBox(height: 35),
            TextField(
              onChanged: (value) {
                inputValue = value;
              },
              decoration: InputDecoration(
                hintText: "Contraseña",
                hintStyle: TextStyle(
                  fontWeight: FontWeight.bold
                )
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => DetailsScreen()));
              },
              child: Text(
                "Registrarse",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
              
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.lightBlue,
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 20)
              ),
              ),
              SizedBox(height: 30),
              Text(
                "¿Ya tienes una cuenta?",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15
                ),
              ),
              SizedBox(height: 4),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => Login()  ));
                },
                child: Text(
                  "[Inicia sesion aqui]",
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  ),
                ),
              )
          ]
          
        ),
      ),
    )
  );

}

Widget _ColorFondo(){
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [
          Colors.black,
          Colors.blue
        ]
      )
    )
  );
}



Widget _FlechaAtras(){
  return Positioned(
            top: 20,
            left: 5,
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_sharp,
                color: Colors.white,
                size: 40,
              ),
               onPressed: (){
                Navigator.pop(context);
               },
            ) 
          );
}


} 