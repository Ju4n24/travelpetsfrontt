   
import 'dart:html';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/DetailsScreen.dart';
import 'package:flutter_application_1/pages/Login.dart';
import 'package:get/get.dart';



class Uno extends StatefulWidget {
  final HeroTag;

  const Uno({Key? key,this.HeroTag}) : super(key: key);

  @override
  State<Uno> createState() => _UnoState();
}

class _UnoState extends State<Uno> {
  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;




    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          _ColorFondo(),
          _Pattern(),
          //_LogoFondo(),//
          _PaddingPrincipal(),
         _Logocasayusuario(),
         _ContainerInformacion()
         //_Blanco()//
         ],
      ),
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


Widget _Pattern() {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;

  return Positioned(
    top: 8,
    child: Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/patternn.png'),
          repeat: ImageRepeat.repeat,
        ),
      ),
    ),
  );
}

Widget _PaddingPrincipal(){
  var width = MediaQuery.of(context).size.width;
      var height = MediaQuery.of(context).size.height;


  return Positioned(
            bottom: 10,
            child: Container(
              width: width*0.9,
              height: height*0.13,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(60))

                )
              ),
                );
                
}

Widget _LogoFondo(){

 //var height = MediaQuery.of(context).size.height;//
 //var width = MediaQuery.of(context).size.width;//


  return Positioned(
    top: 10,
    left: 875,
    child: Container(
      child: Padding(padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.asset(
              'images/logitoo.png',
              width: 40,
              height: 40,
            ),
            Text(
              "Anashee",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    ),

    );
}

Widget _Blanco(){
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;

  return Positioned(
    top: 40,
    width: width*0.6,
    height: height*0.76,
    child: Container(
      padding: const EdgeInsets.all(20),
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(40))
      ),
      child: InkWell(
        child: Row(
          children: [
            SizedBox(width: 50,),
            Icon(
              Icons.person,
              size: 50,
              color: Colors.green,
              
            ),
            SizedBox(width: 50),
            Text(
              "Usuario",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            )
          ],
        ),
      ),
    ),
  );
}


Widget _Logocasayusuario(){

var height = MediaQuery.of(context).size.height;
var width = MediaQuery.of(context).size.width;

  return Positioned(
    bottom: height*0.03,
    child: Container(
        padding: const EdgeInsets.all(8),
        alignment: Alignment.bottomCenter,
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => DetailsScreen() ) );
              },
              child: Container(
                child: Icon(
                  Icons.house,
                  color: Colors.white,
                  size: 70,
                ),
              ),
            ),
            SizedBox(width: 65),
            InkWell(
              onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => Uno() ) );
              },
              child: Icon(
               Icons.add_box,
               color: Color.fromARGB(255, 105, 231, 240),
               size: 80, 
              )
            ),
            SizedBox(width: 65),

            InkWell(
              onTap: (){
                
              },
              child: Container(
                child: Icon(
                  Icons.person,
                  color: Colors.greenAccent,
                  size: 70,
                ),
              )
            ),

            


          ],
        ),),
    );
    
}

Widget _ContainerInformacion(){
var height = MediaQuery.of(context).size.height;
var width = MediaQuery.of(context).size.width;

  return Positioned(
    top:height*0.1,
    left: 20,
    right: 20,
    child: Container(
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(18)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 30,
              ),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '"Nombre de Usuario"',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold
                    ),
                    
                  ),
                  SizedBox(height: 15,),
                  Text(
                    '"Mascota:...."',
                    style: TextStyle(
                      color: Colors.black
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 16,),
          Text(
            'Informacion Personal',
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Localidad:......'
          ),
          SizedBox(height: 16),
          Text(
            'Fecha de nacimiento:......'
          ),
          SizedBox(height: 16),
          Text(
            'Viajes hasta la fecha:.....'
          ),
          SizedBox(height: 16),
          Text(
            'Primer Registro'
          ),
          SizedBox(height: 16),
          Text(
            'Correo Electronico: Usuario@gmail.com'
          )
        ],
      ),
    ),
  );
}



Widget _ColorFondo () {
  return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black,
                Color.fromARGB(255, 37, 37, 37)
              ], 
              ),
          ),
        );
}



}