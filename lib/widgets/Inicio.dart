import 'dart:html';

import 'package:bebemos/games/YoNunca/YoNunca_Principal.dart';
import 'package:bebemos/widgets/background.dart';
import 'package:bebemos/widgets/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import 'menu_Juegos.dart';

class Inicio extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: Stack(
          children: [
            BackgroundInicio(),
            FondoSol(),
            CuerpoInicio(),
            Firma(),


            ],),
      ),

      


    

    );
  }
}

class FondoSol extends StatelessWidget {
  const FondoSol({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: size.width*0.18,),
        Center(
                child: Lottie.asset(
                  "assets/FondoSol.json",
                  repeat: true,
                  height: size.height*0.55,
                  width:size.width*1,
                  fit: BoxFit.fill, 
                  ),
              ),
      ],



    );
}

}
class CuerpoInicio extends StatelessWidget {
  const CuerpoInicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: size.height*0.05,),
        Center(
          child:Text("¡Bebamos!",
                      style: GoogleFonts.greatVibes(
                        fontSize:80,
                        color: Colors.black,
                        ),
                      ), 
        ),
        SizedBox(height: size.height*0.03,),
        Center(
          child:GestureDetector(
                      onTap: ()=> Navigator.pushNamed(context,"MenuJuegos" ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: FadeInImage(
                          placeholder: AssetImage("assets/loading.gif"),
                          image: AssetImage("assets/FondoShot.png"),
                          fit:BoxFit.cover,
                          height: size.height*0.5,
        ),
                      ),
                      ),
                      ),


        GestureDetector(
          onTap: ()=> Navigator.pushNamed(context,"MenuJuegos" ),
          child: Container(
                height:size.height*0.20 ,
                width: size.width*0.6,
            
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  gradient: LinearGradient(
                            
                   begin:  Alignment.topCenter,
                   end:Alignment.bottomRight,
                   stops: [0.01,1],
                   colors: [Color.fromARGB(255, 239, 233, 239),Color.fromARGB(255, 246, 211, 70)]
                  ),

                   boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(7,8)


                            )
                          ]
                           ), 
                child: Center(
                  child: Text("A DARLE", 
                  style: SplashScreen.style,



                            ),

                          

                          ),
                ),
        ), 

        



      ],
      

    );
  }
}




class Firma extends StatelessWidget {
  const Firma({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: size.height*0.97,),

          
        Align(
            alignment: Alignment.centerRight,
            child: Text("Por: Freddy Paladines L     ",
            style: TextStyle(
              color: Colors.black )
            ))
          

        
      ],



    );
}

}

























class BackgroundInicio extends StatelessWidget {
  const BackgroundInicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          stops: [0.01,0.9],
          colors: [Color(0xFFFDECEF),Color(0xFFFDECEF)]
      ),
    ),
    );
  }
}