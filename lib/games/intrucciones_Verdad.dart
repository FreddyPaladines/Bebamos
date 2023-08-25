
import 'package:flutter/material.dart';

import 'BackgroundInstruccionesGeneral.dart';

class InstruccionesVerdad extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
        title: Text('¿Verdad o reto?'),
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
              colorfondo: Color(0xff28A5B6), 
              imagen1: 'assets/Instrucciones_Verdad2.png', 
              imagen2: 'assets/Instrucciones_Verdad3.png',),
            _CuerpoVerdad(
            ),


            ],),
      ),

      


    

    );
  }
}

class _CuerpoVerdad extends StatelessWidget {
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
                        color: Color.fromARGB(255, 255, 255, 255), 
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
                        
                        child:CuerpoInstruccionesGeneral(
                          colorBotones: Color(0xff28A5B6), 
                          cuerpoInstricciones: 'Cada uno de los jugadores por turno deberan elegir entre contar una verdad o hacer un desafio que salga en la pantalla ;v', 
                          imagenInstrucciones: 'assets/Instrucciones_Verdad1.png', 
                          rutapagina: 'NoemalVerdadoReto', 
                          size: size,)
              
              
           )

          ,
        )
      ],
      
    );

  }
}











