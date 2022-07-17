
import 'package:bebemos/widgets/background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BackgroundInstruccionesGeneral.dart';

class NormalVerdadoReto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff34006d),
        title: Text('Bebamos: Juego para beber con amigos'),
        elevation: 0,
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context,"MenuJuegos" );
          }, 
          icon: Icon(Icons.videogame_asset))
        ],
      ),
      body: Scaffold(
        body: Stack(
          children: [
            BackgroundgeneralInstru(
              colorfondo: Color(0xff28A5B6), 
              imagen1: 'assets/Instrucciones_Verdad2.png', 
              imagen2: 'assets/Instrucciones_Verdad3.png',),
            BotonVerdad(),
            BotonDesafio(),


            
            ],),
      ),
    );
}
}

class BotonVerdad extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     final size= MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: size.height*0.2,),


        Padding(
          padding: const EdgeInsets.all(30.0),

          child: SizedBox(
                    width: 500,
            height: 110,
            child: AspectRatio (
              
              aspectRatio: 0.83,
              child: Stack(
                children: [

                  
                  Container(     
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(7,8)


                          )
                        ]
                  ),


                  
                  

                  ),
                  GestureDetector(
                  onTap: () {Navigator.pushNamed(context, "NoemalVerdadoResp");},
                  child: Hero(
                  tag: 1, 
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    
                    
                    child: FadeInImage(
                      alignment: Alignment.center,
                      image: AssetImage("assets/Verdad.jpg"),
                      placeholder: AssetImage("assets/loading.gif")
                      ,
                      
                      ),
                  
                  
                  ),
                  ),

              ),
                  

                  
              ],
              ),
              
              ),
              


          

            

          ),
        ),
      ],
    );





  }




}


class BotonDesafio extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     final size= MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: size.height*0.45,),


        Padding(
          padding: const EdgeInsets.all(30.0),

          child: SizedBox(
                    width: 500,
            height: 110,
            child: AspectRatio (
              
              aspectRatio: 0.83,
              child: Stack(
                children: [

                  
                  Container(     
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(7,8)


                          )
                        ]
                  ),


                  
                  

                  ),
                  GestureDetector(
                  onTap: () {Navigator.pushNamed(context, "NoemalRetoResp");},
                  child: Hero(
                  tag: 2, 
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    
                    
                    child: FadeInImage(
                      alignment: Alignment.center,
                      image: AssetImage("assets/Desafio.jpg"),
                      placeholder: AssetImage("assets/loading.gif")
                      ,
                      
                      ),
                  
                  
                  ),
                  ),

              ),
                  

                  
              ],
              ),
              
              ),
              


          

            

          ),
        ),
      ],
    );




  }




}