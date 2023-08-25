
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../games/BackgroundInstruccionesGeneral.dart';
import 'menu_Juegos.dart';

class Inicio extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: GestureDetector(
          onTap: ()=> Navigator.pushNamed(context,"Lenguaje" ),
          child: Stack(
            children: [
              BackgroundInicio(),
              //FondoSol(),
              CuerpoInicio(),
              Firma(),
        
        
              ],),
        ),
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
        SizedBox(height: size.width*0.5,),
        Center(
                child: Lottie.asset(
                  "assets/FondoSol.json",
                  repeat: true,
                  height: size.height*0.40,
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
    return GestureDetector(
      onTap: ()=> Navigator.pushNamed(context,"Lenguaje" ),
      child: Column(
        children: [
          SizedBox(height: size.height*0.08,),
          
          Center(
            child:Text("Bebamos",
                        style: GoogleFonts.greatVibes(
                          fontSize:90,
                          color: Colors.black,
                          ),
                        ), 
          ),
          SizedBox(height: size.height*0.03,),

          SizedBox(height: size.height*0.1,),
          Center(
            child:GestureDetector(
                        onTap: ()=> Navigator.pushNamed(context,"Lenguaje" ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: FadeInImage(
                            placeholder: AssetImage("assets/loading.gif"),
                            image: AssetImage("assets/ShotsInicio.png"),
                            fit:BoxFit.cover,
                            height: size.height*0.5,
          ),
                        ),
                        ),
                        ),
    
    
           
    
          
    
    
    
        ],
        
    
      ),
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
        SizedBox(height: size.height*0.30,),
        Center(
                  child: Lottie.asset(
                    "assets/StarInicio.json",
                    repeat: true,
                    height: 300,
                    width:400
                    
                    ),
                ),
        SizedBox(height: size.height*0.05,),
        Center(
                  child: Lottie.asset(
                    "assets/StartInicio.json",
                    repeat: true,
                    height: 200,
                    width:300
                    
                    ),
                ),


        SizedBox(height: size.height*0.02,),

          
        Align(
            alignment: Alignment.centerRight,
            child: Text("Freddy P ",
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
        image: DecorationImage(
        image: AssetImage("assets/FondoColores.png"),
        fit: BoxFit.fill),
    ),
    );
  }
}



/*           GestureDetector(
            onTap: ()=> Navigator.pushNamed(context,"Persona" ),
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
          ), */