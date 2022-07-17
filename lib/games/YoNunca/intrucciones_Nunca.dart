
import 'package:flutter/material.dart';

import '../BackgroundInstruccionesGeneral.dart';

class InstruccionesNunca extends StatelessWidget {


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
            colorfondo: Color(0xFFF12EA7), 
            imagen1: 'assets/Instrucciones_Nunca3.png', 
            imagen2: 'assets/Instrucciones_Nunca1.png',),
            CuerpoNunca(),
            ],),
      ),

      


    

    );
  }
}

class CuerpoNunca extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     final size= MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(height: size.height*0.1,),
        Center(
          child: Container(
              height:size.height*0.7,
              width: size.width*0.7,
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
                size: size, 
                colorBotones: Color(0xFFF12EA7), 
                cuerpoInstricciones: 'En la pantalla saldrán preguntas al azar, los participantes que han hecho lo mencionado alguna vez deben beber una cantidad fijada por el grupo"', 
                imagenInstrucciones: 'assets/Instrucciones_Nunca2.png', 
                rutapagina: 'YoNuncaPrincipal',),
           )
          
          
          
          
          ,
        )
      ],
      
    );

  }
}






