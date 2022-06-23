import 'dart:async';
import 'dart:math';

import 'package:bebemos/widgets/background.dart';
import 'package:flutter/material.dart';

import '../kingV3.dart';


  //List<int>  listacreciente =[0,1];
  final datameme= [
    {"id":0,"Imagen":"meme1.JPG","Nombre":"Pikachu sorprendido"},
    {"id":1,"Imagen":"meme3.JPG","Nombre":"Niña fondo casa en llamas"},
    {"id":2,"Imagen":"meme4.JPG","Nombre":"Niña fondo casa en llamas"},
    {"id":3,"Imagen":"meme5.JPG","Nombre":"Niña fondo casa en llamas"},
    {"id":4,"Imagen":"meme6.JPG","Nombre":"Niña fondo casa en llamas"},
    {"id":5,"Imagen":"meme7.JPG","Nombre":"Niña fondo casa en llamas"},
    {"id":6,"Imagen":"meme8.JPG","Nombre":"Niña fondo casa en llamas"},
    {"id":7,"Imagen":"meme9.JPG","Nombre":"Niña fondo casa en llamas"},
    {"id":8,"Imagen":"meme10.JPG","Nombre":"Niña fondo casa en llamas"},
    {"id":9,"Imagen":"meme11.JPG","Nombre":"Niña fondo casa en llamas"},
    {"id":10,"Imagen":"meme12.JPG","Nombre":"Niña fondo casa en llamas"},
    {"id":11,"Imagen":"meme13.JPG","Nombre":"Niña fondo casa en llamas"},
    
  ];

  
  List listacreciente = List<int>.generate(datameme.length, (int index) => index , growable: true);
  
  List listaMeme = shuffle(listacreciente);
  int counter = 0;
  int valorMax= datameme.length;
  
  
  


class QueMemejuego extends StatefulWidget {
  @override
  _QueMemejuegoState createState() => _QueMemejuegoState();
}
  


class _QueMemejuegoState extends State<QueMemejuego> {
   Object? imagenValor= "";
  


  



  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Color(0xff34006d),
        title: Text('Bebamos: Juego para beber con amigos'),
        elevation: 0,
        actions: [
          IconButton(onPressed: (){}, 
          icon: Icon(Icons.add_box))
        ],
      ),
      body: Scaffold(
        body: Stack(
          children: [
            Background(),
            Cronometro(),



             ],),
      ),
    );
  }
}





class Cronometro extends StatefulWidget {
    

    const Cronometro({
      Key? key,
      }) : super(key:key);
      

  @override
  _CronometroState createState() => _CronometroState();
}


class _CronometroState extends State<Cronometro> {
    //---------Funcion de contador--------
    
  static const maxSeconds = 60;
  int seconds = maxSeconds;
  Timer? timer;
  Object? imagenValor = '';
  bool mensajeMostrar = true;

  
  








  void resetTimer()=>setState(()=>seconds=maxSeconds);

   void increase() {
    
    setState(() {
      if (counter<datameme.length )
      counter++;
      
    });

    
  }

  void OnClicked(){




    
  }

  
  


  void startTimer (){
    timer =Timer.periodic(Duration(microseconds: 1), (_) { 

    if (seconds>0 && counter <5){
      setState(()=>seconds--);
      

      } 

    //if (seconds <=0 && counter >5){
      //timer?.cancel();
      

      //} 
      
      
     else if (seconds<1 && counter <5) {
        stopTimer(reset: true);
        increase();
        //counter++;

      }

      else  {
        timer?.cancel();
        mensajeMostrar = true;
        //counter++;

      }
    });
  }

  void stopTimer ({bool reset = true}){
    
    if (reset) {
      resetTimer() ;
      timer?.cancel();
    } else {
    timer?.cancel();
    }
  }


//Imagenes----------------------------------------------------------
  Object? imagen = '';


  //IMPORTANTE: CADA CAMBIO REALIZADO A LA LISTA AGEGAR EL VALOR CORRESPONDIENE
  //List listacreciente = List<int>.generate(2, (int index) => index , growable: true);
  // ignore: non_constant_identifier_names


 

  Widget buildButtons(){
    final isRunning= timer == null? false:timer!.isActive;


    return isRunning
    
    ?   Column(
      children: [

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    ButtonWidget(
                      text: 'Pausa', 
                      onCLicked:  (){stopTimer(reset: false);
                      
                      }),
                    SizedBox(width: 10,),
                    ButtonWidget(
                      text: 'Cancel', 
                      onCLicked:  (){stopTimer();}),

                  ],
                ),
      ],
    )
          
      
      :
    
    ButtonWidget(
      text: 'Comenzar', 
      onCLicked:  (){
        if (counter >0){
          mensajeMostrar = true;
          startTimer();

        }
        else  {
          startTimer();

          
          }
        

      });


}





//_____________________________Contructor_______________________________



  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    imagenValor=datameme[listaMeme[counter]]["Imagen"];
    
    
    return Stack(
      children: [

        Column(
          children: [
            SizedBox(height: size.height*0.05,),
            Center(
              child: Column(
                children: [
                  Text("$seconds",
                  style: TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.bold),
                  
                  ),
                  SizedBox(
                    height: size.height*0.5,
                    width: size.width*0.5,
                    child: AspectRatio (
                      aspectRatio: 0.83,
                  child:  FadeInImage(
                          alignment: Alignment.center,
                          height: size.height*0.4,
                          width: size.width*0.4,
                          
                          image: AssetImage("assets/$imagenValor"), 
                          placeholder: AssetImage("assets/loading.gif"),),
                    )

                    
                    
                    ),
                  buildButtons(),


                ],
              ),
                
            )
          ],

        ),


                
                
        Column(
          children: [
            SizedBox(height: size.height*0.10,),
            Visibility(
              visible: mensajeMostrar,
              
              
              child:
              Center(
                child: Container(

                  height: 500,
                  width: 400,

                  decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(16)


                       ),

                  child: Center(
                    child: Column(
                      children: [
                        SizedBox(height: size.height*0.05,),

                        Container(
                       height: 300,
                       width: 300,
                       color: Colors.red,
                       alignment: Alignment.center,
                       
                       child: Text(
                        "Gracias por jugar, por degracia ya no tengo mas imagenes, retorna para mas juegos :D",
                        style: TextStyle(fontSize: 30),
                        
                       ),),
                       SizedBox(height: size.height*0.10,),

                        Container(
                       height: 50,
                       width: 130,

                       child: Text(
                        "Retornar",style: TextStyle(fontSize: 30),
                       ),
                       alignment: Alignment.center,
                       constraints: BoxConstraints(
                        maxHeight: 100,
                        minWidth: 50,
                        maxWidth: 200,
                        ),
                       decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(16)

                       ),
                       
                       ),
                      ],
                    ),
                  ),
                ),
              ),)

          ],
        ),








      ],
    );


  }
}







class ButtonWidget extends StatelessWidget{
    final String text;
    final VoidCallback onCLicked;
    const ButtonWidget({
      Key? key,
      required this.text,
      required this.onCLicked,
      }) : super(key:key);
  @override
  Widget build(BuildContext context){ 
    
    return ElevatedButton(
    onPressed: onCLicked,
    child: Text (
      text,
    style: TextStyle(fontSize: 20),
    ),
    
    );
    }

}

