import 'dart:html';
import 'dart:math';

import 'package:bebemos/widgets/Datos.dart';
import 'package:bebemos/widgets/background.dart';
import 'package:bebemos/widgets/card_swiper.dart';
import 'package:flutter/material.dart';

import '../kingV3.dart';



class Juego_Botella extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bebamos: Juego para beber con amigos'),
        elevation: 0,
        actions: [
          IconButton(onPressed: (){}, 
          icon: Icon(Icons.keyboard_return))
        ],
        )
      ,
      body: Scaffold(
        body: Stack(
          children: [
            Background(),
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
  


    



    
  

  @override
  
  void initState(){
    super.initState();
    controller = AnimationController (
      vsync: this,
      duration: Duration(seconds: 2),


      

      
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
              SizedBox(height: 150,),
              AnimatedBuilder(
                animation: animation, 
                builder: (context,child)=>     
                    Transform.rotate(
                      angle: animation.value,
                      child: Image.asset("assets/4_Corazon.JPG",
                        height: 250,
                        width: 250,


                    ),
              ),


              ),


              SizedBox(height: 32,),
              ElevatedButton(
                onPressed: (){
                  controller.forward(from: 0);
                  setState(() {
                  randomNum=random.nextInt(1000)+1000;
                  final angle = randomNum * pi /180;
                  animation= Tween<double>(begin: 0, end: angle).animate(controller);
                  //mensajeMostrar= true;





                  });
                }, 
                child: Text("Rotate")),
              SizedBox(height: 32,),
              Visibility(
                visible: mensajeMostrar,
                child: ElevatedButton(
                  onPressed: (){
                    setState(() {

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
              width: size.width*0.7,
              decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(16)
                         ),            
              child: Column(
                children: [
                  Row(children: [
                    SizedBox(width: size.width*0.50,),
                    IconButton(
                      onPressed: (){
                        setState(() {
                          desafioMostrar=false;
                          mensajeMostrar = false;
                          
                        });
                        
                      }, 
                      icon: Icon(Icons.close),
                      iconSize: 45,
                      
                    
                    
                    )

                   ],),
                  Container(
                    height: size.height*0.5 ,
                    width: size.width*0.5,

                       child: Text(newjuegosBotella.first.descripcion
                        ,style: TextStyle(fontSize: 30),
                       ),
                  )


                ],),

            ),
          ),
        ),
      ],
    )

















      ],
    );

  }
}
