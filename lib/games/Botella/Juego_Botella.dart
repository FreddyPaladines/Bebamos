import 'dart:math';
import 'package:bebemos/widgets/Datos.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import '../BackgroundInstruccionesGeneral.dart';
import '../kingV3.dart';



class Juego_Botella extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 54, 46, 37),
        title: Text('Bebamos'),
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
            FondoInstrucciones(),
            CuerpoBotella(),
           

            ],),
      ),

      


    

    );
  }
}



class MensajeDesafio {
}

class CuerpoBotella extends StatefulWidget{







  @override
  
  _CuerpoBotellaState createState() => _CuerpoBotellaState();
}

class _CuerpoBotellaState extends State<CuerpoBotella> 
 with SingleTickerProviderStateMixin
{
  late AnimationController controller;


  late Animation<double> animation;

  int randomNum = 180;
  Random random = Random();
  bool mensajeMostrar = false;
  bool desafioMostrar = false;
  bool botongirar=true;
  


    



    
  

  @override
  
  void initState(){
    super.initState();
    controller = AnimationController (
      vsync: this,
      duration: Duration(seconds: 3),


      

      
    );

    controller.addListener(() {
      if (controller.value>0.99){
        controller.stop();

        setState(() {
            mensajeMostrar = true;
        });
      }
      else {
          setState(() {
            mensajeMostrar = false;
        });
      }
    });

    
    final angle = randomNum * pi /180;
    animation= Tween<double>(begin: 0, end: angle).animate(controller);
    
  }



  @override
  Widget build(BuildContext context) {
 final size= MediaQuery.of(context).size;
 List newjuegosBotella= shuffle(juegosBotella);
    



    return Stack(
      children: [
        Center(
          child: Column(
            children: [
              SizedBox(height:  size.height*0.25,),
              AnimatedBuilder(
                animation: animation, 
                builder: (context,child)=>     
                    Transform.rotate(
                      angle: animation.value,
                      child: Image.asset("assets/Juego_Botella.png",
                        height: 250,
                        width: 250,


                    ),
              ),


              ),


              SizedBox(height: size.height*0.2,),
              Visibility(
                visible: botongirar,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize:20,
                      fontWeight: FontWeight.w600,),
                    primary: Color(0xFFD9A238),
                    onPrimary: Colors.black
                    
                  ),
                  onPressed: (){
                    controller.forward(from: 0);
                    setState(() {
                    randomNum=random.nextInt(44);
                    final angle = randomNum+31.416;
                    animation= Tween<double>(begin: 0, end: angle).animate(CurvedAnimation(parent: controller, curve: Curves.decelerate));
                    //mensajeMostrar= true;
              
              
              
              
              
                    });
                  }, 
                  child: Text("Girar")),
              ),
              SizedBox(height: 32,),
              Visibility(
                visible: mensajeMostrar,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize:20,
                    fontWeight: FontWeight.w600,),
                  primary: Color(0xFFD9A238),
                  onPrimary: Colors.black
                  
                ),

                  onPressed: (){
                    setState(() {
                      botongirar=false;
                      mensajeMostrar=false;
                    

                    desafioMostrar = true;});



                  }, 
                  child: Text("Mostrar desafio")),
              ),





            ],
          ),
        ),

         Column(
      children: [
        SizedBox(height: size.height*0.1,),
        Visibility(
          visible: desafioMostrar,

          child: Center(
            child: Container(

              height:size.height*0.6 ,
              width: size.width*0.8,
              decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("assets/FondoPapel.png",),
        fit: BoxFit.fill,
        ),
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
              child: Column(
                children: [
                  Row(children: [
                    SizedBox(width: size.width*0.65,),
                    IconButton(
                      onPressed: (){
                        setState(() {
                          desafioMostrar=false;
                          mensajeMostrar = false;
                          botongirar=true;
                          
                          
                        });
                        
                      }, 
                      icon: Icon(Icons.close),
                      iconSize: 45,
                      color: Colors.black,
                      
                    
                    
                    )

                   ],),
                  Container(
                    height: size.height*0.28 ,
                    width: size.width*0.7,

                       child: Text(newjuegosBotella.first.descripcion,textAlign: TextAlign.center

                       //----------------
                        ,style:GoogleFonts.syneMono(
                        fontWeight: FontWeight.bold,
                          fontSize:23,
                          color: Colors.black,
                          ),
                       ),
                  ),
                  SizedBox(height: size.height*0.05,),
                  Container(      
                      height: size.height*0.10,
                      width: size.width*0.6,
                      decoration: BoxDecoration(
                      image: DecorationImage(
                      image: AssetImage(newjuegosBotella.first.imagen),
                      fit: BoxFit.fill,
        ),
        ),

            

                    
                  )


                ],),

            ).animate().fadeIn(),
          ),
        ),
      ],
    )

      ],
    );

  }
}


class FondoInstrucciones extends StatelessWidget {
  const FondoInstrucciones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/FondoMadera.png",),
        fit: BoxFit.fill,
        )
      ),


    );
  }
}