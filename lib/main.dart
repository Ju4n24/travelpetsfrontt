import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/DetailsScreen.dart';
import 'package:flutter_application_1/pages/Login.dart';
import 'package:flutter_application_1/pages/LoginV2.dart';
import 'package:flutter_application_1/pages/Registro.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/pages/HomeScreen.dart';
import 'package:flutter_application_1/pages/Uno.dart';


void main() {
  runApp ( MyApp());
}



class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: LoginV2(),
    );
  }
}


