   
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/Login.dart';
import 'package:flutter_application_1/pages/Uno.dart';
import 'package:get/get.dart';



class DetailsScreen extends StatefulWidget {
  final HeroTag;

  const DetailsScreen({Key? key,this.HeroTag}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {

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
          _Logo(),
          _PaddingSecundario(),
          _PaddingPrincipal(),
         _Logocasayusuario(),
         _Botonsolicitar(),
         _BotonhistorialV2(),
         _BotonInteresV2(),
         _BotonConejo(),
         _BotonCiervo(),
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

Widget _Logo(){
  return Positioned(
    top: 1,
    child: InkWell(
      child: Image(
        image: AssetImage('images/logitoo.png'),
        width: 200,
        height: 120,
      ),
    ),
  );
}


Widget _PaddingSecundario(){

  var width = MediaQuery.of(context).size.width;
  var height = MediaQuery.of(context).size.width;

  return Positioned(
    bottom: 0,
    child:Container(
      width: width,
      height: width *0.38,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 247, 245, 245),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50)
        )
      ),

    )
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
                
              },
              child: Container(
                child: Icon(
                  Icons.house,
                  color: Colors.greenAccent,
                  size: 64,
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
                Navigator.push(context, MaterialPageRoute(builder: (_) => Uno() ) );
              },
              child: Container(
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 64,
                ),
              )
            ),

            


          ],
        ),),
    );
    
}


Widget _Pattern() {
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;

  return Positioned(
    top: 1,
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

Widget _ColorFondo () {
  return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white,
                Colors.white
              ], 
              ),
          ),
        );
}



Widget _Botonsolicitar(){
    //FALTA CENTRARLO Y CORTARLO

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

  return Positioned(
    bottom: height*0.64,
    child: Container(
     padding: EdgeInsets.all(20) ,
     alignment: Alignment.center,
     decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(40)),
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.greenAccent,
          Colors.green
        ],
        
      )
      
     ),
     child: Row(
      children: [
        InkWell(
          child: Container(
            child: Text(
              "!Inicie ya un viaje¡",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              )
            ),
          ),
        ),
        SizedBox(width: 15,),
        InkWell(
          onTap:(){ Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255).withOpacity(1),
            borderRadius: BorderRadius.all(Radius.circular(40))
            ),

            child: Text(
              "iniciar viaje",
               style: TextStyle(
                color: Colors.lightBlue,
                fontSize: 30,
                fontWeight: FontWeight.bold
               ),
            ),
    
            )
            ),
      ],
     ),
      ),
    );
  
}


Widget _BotonInteresV2(){
var height = MediaQuery.of(context).size.height;
var width = MediaQuery.of(context).size.width;

  return Positioned(
    bottom: height*0.41,
    right: width*0.4,
    child: InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(18)),
          boxShadow: [
            BoxShadow(
              color: Colors.red,
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3)
            )
          ]
        ),
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            Image(
              image: AssetImage('images/ubicacion.jpg',),
              width: 150,
              height: 150,
              ),
              Text(
                "Puntos de interes",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 1,)
          ],
        ),
      ),

    ),
  );
}

Widget _BotonhistorialV2(){
var height = MediaQuery.of(context).size.height;
var width = MediaQuery.of(context).size.width;

  return Positioned(
    bottom: height*0.41,
    left: width*0.4,
    child: InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(18)),
          boxShadow: [
            BoxShadow(
              color: Colors.green.withOpacity(1),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3)
            )
          ]
        ),
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            Image(
              image: AssetImage('images/mapa.png',),
              width: 150,
              height: 150,
              ),
              Text(
                "Historial de viajes",
                style: TextStyle(
                  color: Color.fromARGB(255, 52, 230, 58),
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 1,)
          ],
        ),
      ),

    ),
  );
}

Widget _BotonConejo(){
var height = MediaQuery.of(context).size.height;
var width = MediaQuery.of(context).size.width;

  return Positioned(
    bottom: height*0.18,
    left: width*0.4,
    child: InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(18)),
          boxShadow: [
            BoxShadow(
              color: Colors.lightBlue,
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3)
            )
          ]
        ),
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            Image(
              image: AssetImage('images/conejo.png',),
              width: 150,
              height: 150,
              ),
              Text(
                "Animales",
                style: TextStyle(
                  color: Colors.lightBlue,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 1,)
          ],
        ),
      ),

    ),
  );
}

Widget _BotonCiervo(){
var height = MediaQuery.of(context).size.height;
var width = MediaQuery.of(context).size.width;

  return Positioned(
    bottom: height*0.18,
    right: width*0.4,
    child: InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(18)),
          boxShadow: [
            BoxShadow(
              color: Colors.lightBlue,
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3)
            )
          ]
        ),
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            Image(
              image: AssetImage('images/ciervo.png',),
              width: 150,
              height: 150,
              ),
              Text(
                "Ajustes",
                style: TextStyle(
                  color: Colors.lightBlue,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 1,),
          ],
        ),
      ),

    ),
  );
}




}