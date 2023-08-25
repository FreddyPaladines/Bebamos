
import 'package:bebemos/games/Botella/Juego_Botella.dart';
import 'package:flutter/material.dart';

import '../BackgroundInstruccionesGeneral.dart';

class InstruccionesBotella extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        
        appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 54, 46, 37),
        title: Text('La Botella'),
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
            FondoInstrucciones(),
            CuerpoBotella(
            ),


            ],),
      ),

      


    

    );
  }
}

class CuerpoBotella extends StatelessWidget {
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
                colorBotones: Color(0xFFD9A238), 
                cuerpoInstricciones: 'Todos se sientan alrededor de la mesa. En el centro pongan en el celuar, la persona que salga en direccion a la botella tendra que hacer el reto que salga en pantalla', 
                imagenInstrucciones: 'assets/Instrucciones_botella1.png', 
                rutapagina: 'JuegoBotella', 
                size: size,
                
                
                
                )
           )
          
          
          
          
          ,
        )
      ],
      
    );

  }
}












class BackgroundIntBotella extends StatelessWidget {
  const BackgroundIntBotella({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        color: Color(0xFF8C755E)

    ),
    );
  }
}