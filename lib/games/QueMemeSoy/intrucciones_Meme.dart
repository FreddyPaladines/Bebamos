
import 'package:flutter/material.dart';

import '../BackgroundInstruccionesGeneral.dart';

class InstruccionesMeme extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
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
        body: Stack(
          children: [
            BackgroundgeneralInstru(
              colorfondo: Color(0xffFCD23D), 
              imagen1: 'assets/Instrucciones_meme1.png', 
              imagen2: 'assets/Instrucciones_meme2.png',
              
            ),
            CuerpoMeme(),


            ],),
      ),

      


    

    );
  }
}

class CuerpoMeme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     final size= MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(height: size.height*0.1,),
        Center(
          child: Container(
              height:size.height*0.7,
              width: size.width*0.85,
              decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(7,8)


                          )
                        ]
                        
                        
                        ),
                        
              child: CuerpoInstruccionesGeneral(
                colorBotones: Color(0xffFCD23D), 
                cuerpoInstricciones: 'Una persona por turno vera una imagen al azar del meme, y tendra que imitarlo, el publico decide si tomas o no dependiendo de como imitas el meme (ojo es por tiempo):D', 
                imagenInstrucciones: 'assets/Instrucciones_meme3.png', 
                rutapagina: 'QueMemejuego', 
                size: size,)
           )
          
          
          
          
          ,
        )
      ],
      
    );

  }
}











