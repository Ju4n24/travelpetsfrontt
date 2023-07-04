import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/DetailsScreen.dart';
import 'package:flutter_application_1/pages/Login.dart';
import 'package:flutter_application_1/pages/Registro.dart';
import 'package:get/get_navigation/get_navigation.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen ({Key? key}) : super (key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold (
      body: Stack(
        children: [
          _colordefondo(),
          _imagenfondo(),
          _textotitulo(),
          Positioned(
            top: 200,
            bottom: 0,
            width: width,
            child: Column(
              children: [
                Expanded(child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 4),
                  itemCount: 151,
                  shrinkWrap: true, 
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5
                      ),
                      child: InkWell(
                        child: SafeArea(
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                Radius.circular(40)
                                ),
                                color: Color.fromARGB(255, 255, 255, 255)
                            ),
                            child: Stack(
                              children: [
                                _pokeballnterno(),
                                _imagenpokemon(index),
                                _nombrepokemon(),
                                _tipopokemon(),
                              ],
                            )
                          
                          )
                        ),
                        onTap: (){
                          Navigator.push(context,
                           MaterialPageRoute(builder: (_) => Login(
                            
                           )
                           )
                          );
                        },
                        ), 
                      
                      );
                    
                  }
                  
                  )
                  )

            ],)            
            )
        ],
      ),
    );
  }

  Widget _imagenfondo(){
    return  Positioned(
            top: -50,
            right: -200,
            width: 500,
            child: Image.asset('images/logitoo.png',
            fit: BoxFit.fitWidth,
            width: 200,
            
            ),
            );


    
  }

  Widget _textotitulo(){
    return  Positioned(
            top:80 ,
            left:20 ,
            child: Text(
              'Travel Pets jujuu',
               style: TextStyle(
                color: Colors.white.withOpacity(0.8),
                fontWeight: FontWeight.bold,
                fontSize: 30

               ),
               ));
  }

  Widget _pokeballnterno(){
    return  Positioned(
            bottom: -50,
            right: -85,
            child: Image.asset('images/nasshe.png',height: 200,fit: BoxFit.fitHeight),
            );
  }

  Widget _imagenpokemon(index){
    return  Positioned(
             bottom: -1,
             right: 5,
             child: Hero(
              tag: index,
               child: CachedNetworkImage(imageUrl: 'https://www.serebii.net/pokemongo/pokemon/094.png', height: 140,fit: BoxFit.fitHeight,
               placeholder:((context, url) => Center(
                  child: CircularProgressIndicator(),
                  )),
                ),
             )
           );
  }

  Widget _nombrepokemon(){
    return const Positioned(
      top: 30,
      left: 50,
      child: Text(
        "Gengar",
        style: TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
        )
      );
  }

  Widget _tipopokemon(){
    return Positioned(
      top: 100,
      left: 50,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
          child: Text(
            "Ghost",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(20)
            ),
            color: Colors.black.withOpacity(0.5)

          ),

      )
    );
  }

Widget _colordefondo(){
  return Positioned(
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.bottomRight,
          colors: [
            Colors.black,
            Color.fromARGB(255, 2, 85, 5)
          ]
        )
      ),
    ),
  );
}


}
