import 'dart:html';

import 'package:bebemos/games/kingV3.dart';
import 'package:bebemos/widgets/Datos.dart';
import 'package:bebemos/widgets/background.dart';
import 'package:bebemos/widgets/card_swiper.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import '../BackgroundInstruccionesGeneral.dart';


var randomHappylist = (juegosYoNunca.toList()..shuffle()).first;

List newlista= shuffle(juegosYoNunca);

class YoNuncaPrincipal extends StatelessWidget {
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Bebamos: Juego para beber con amigos'),
        elevation: 0,
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context,"MenuJuegos" );
          }, 
          icon: Icon(Icons.videogame_asset))
        ],
        )
      ,
      body: Scaffold(
        body: Stack(
          children: [

            //Background------------------
            BackgroundgeneralInstru(
            colorfondo: Color(0xFFF12EA7), 
            imagen1: 'assets/Instrucciones_Nunca3.png', 
            imagen2: 'assets/Instrucciones_Nunca1.png',),

            Cuerpo(),

            ],),
      ),

      


    

    );
  }
}





//Aqui es el cuerpo de la aplicacion
class Cuerpo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    
    return Column(
      children: [
        SizedBox(height: size.height*0.02,),


        Card_swiperNunca(),
        



      ],
      


    );
  }
}





class Card_swiperNunca  extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {




    final size= MediaQuery.of(context).size;
    //El size sirve para tomar el tamaño del dispositivo que se use


    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      
      children: 
        [
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),

          
          
          //width: double.infinity,
          width: double.infinity,
          height: size.height*0.8,
          child: Swiper(
            itemCount: juegosYoNunca.length,
            layout: SwiperLayout.TINDER,
            itemWidth: size.width*0.8,
            itemHeight: size.height*1,
            itemBuilder: (BuildContext context, int index){
              return Stack(
              



                children: 

                    [
                    BackgroundCafe(),
//randomHappylist.descripcion
                    Column(
                      children: [
                        SizedBox(height: size.height*0.02,),

                        Text("YO NUNCA NUNCA ",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
              

               ),
          ),
                        SizedBox(height: size.height*0.02,),
                        Container(
                          height:  size.height*0.2,
                          width:  size.height*0.4,
                          child: Text(newlista[index].descripcion,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize:18,
                              fontWeight: FontWeight.w600,
          ), 
                          )),
                        SizedBox(height: size.height*0.02,),
                        Center(
                          child: GestureDetector(
                            
                            onTap: (){},
                            child: ClipRRect(

                              borderRadius: BorderRadius.circular(20),
                              child: FadeInImage(
                                height: size.height*0.4,
                                width:size.width*0.6,
                                placeholder: AssetImage("assets/loading.gif"),
                                image: AssetImage(newlista[index].imaganes),
                                fit:BoxFit.cover,
                            
                                
                                
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: size.height*0.02,),

                        Text("Desplazar a la derecha ",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
              

               ),
          ),
                      ],
                    ),

                    //Descripcion 











                  ],
              );
            
            },
            
          ),
        ),
      ],
    );
    
  }
}






class BackgroundCafe extends StatelessWidget {
  const BackgroundCafe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),

        gradient: LinearGradient(
        begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          stops: [0.01,0.9],
          colors: [Color.fromARGB(255, 255, 255, 255),Color.fromARGB(255, 255, 255, 255)]
      ),
    ),
    );
  }
}




