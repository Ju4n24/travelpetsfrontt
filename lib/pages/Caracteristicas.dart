import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/DetailsScreen.dart';
import 'package:flutter_application_1/pages/Login.dart';
import 'package:get/get.dart';
import 'package:cached_network_image/cached_network_image.dart';


class Caracteristicas extends StatefulWidget {
  final HeroTag;
  

  const Caracteristicas({Key? key,this.HeroTag}) : super(key: key);

  @override
  State<Caracteristicas> createState() => _CaracteristicasState();
}

class _CaracteristicasState extends State<Caracteristicas> {
Color _backgroundColor1 = Colors.black;
Color _backgroundColor2 = Colors.black;


  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;


    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          _ColorFondo(),
          _Container()
         ]
      )
    );
  }

Widget _ColorFondo(){
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.lightBlue,
          Color.fromARGB(255, 6, 228, 106)
        ]
      )
    ),
  );
}


Widget _Container(){
  var height = MediaQuery.of(context).size.height;
  var width = MediaQuery.of(context).size.width;

  return Center(
    child: Container(
      height: height*0.9,
      width: width*0.9,
      padding: EdgeInsets.all(35),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Colors.white
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 0, 84, 122),
                  Colors.lightBlue
                ]
              )
            ),
            child: Text(
              '¿Que mascota desea transportar?',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30
              ),
            ),
          ),
          SizedBox(height: 45),
          TextField(
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecoration(
              hintText: 'Perro',
              hintStyle: TextStyle(
                color: Colors.lightBlue
              )   
            ),
          ),
            SizedBox(height: 45),
          TextField(
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecoration(
              hintText: 'Gato',
              hintStyle: TextStyle(
                color: Colors.lightBlue
              )   
            ),
          ),
            SizedBox(height: 45),
          TextField(
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecoration(
              hintText: 'Conejo',
              hintStyle: TextStyle(
                color: Colors.lightBlue
              )   
            ),
          ),
            SizedBox(height: 45),
          TextField(
            style: TextStyle(
              color: Colors.black
            ),
            decoration: InputDecoration(
              hintText: 'Otro:',
              hintStyle: TextStyle(
                color: Colors.lightBlue
              )   
            ),
          ),
          SizedBox(height: 45),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromARGB(255, 0, 71, 129),
                  Colors.lightBlue
                ]
              )
            ),
            child: Text(
              '¿Viaja con acompañante?',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30
              ),
            ),
          ),
          SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    _backgroundColor1 = Colors.green;
                  });
                },
                child: Text(
                  'SI',
                  style: TextStyle(
                    color:_backgroundColor1,
                    fontWeight: FontWeight.bold,
                    fontSize: 45

                  ),
                ),
              ),
              SizedBox(width: 100),
              InkWell(
                onTap: () {
                  setState(() {
                    _backgroundColor2 = Colors.green;
                  });
                },
                child: Text(
                  'NO',
                  style: TextStyle(
                    color:_backgroundColor2,
                    fontWeight: FontWeight.bold,
                    fontSize: 45

                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}


} 