
import 'package:flutter/material.dart';

import '../BackgroundInstruccionesGeneral.dart';
import 'MiBarquito_Juego.dart';

class InstruccionesBarquito extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        title: Text('Bebamos'),
        elevation: 0,
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context,"MenuJuegos" );
          }, 
          icon: Icon(Icons.keyboard_return))
        ],
        )
      ,
        body: Stack(
          children: [
            FondoInstrucciones(),
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
                        
              child: GestureDetector(
                onTap: ()=> Navigator.pushNamed(context,"Barquitojuego" ),
                child: CuerpoInstruccionesGeneral(
                  colorBotones: Color(0xffFCD23D), 
                  cuerpoInstricciones: 'Un participante en voz alta dirá la frase “llegó un barco cargado de…” y agrega el contenido que se muestre, pierde el que repita o no responda a tiempo.', 
                  imagenInstrucciones: 'assets/Instrucciones_meme3.png', 
                  rutapagina: 'Barquitojuego', 
                  size: size,),
              )
           )
          
          
          
          
          ,
        )
      ],
      
    );

  }
}











