/* import 'dart:async';

import 'package:bebemos/widgets/background.dart';
import 'package:flutter/material.dart';

import '../kingV3.dart';


  //List<int>  listacreciente =[0,1];
  final datameme= [
    {"id":0,"Imagen":"meme1.JPG","Nombre":"Pikachu sorprendido"},
    {"id":1,"Imagen":"meme3.jpg","Nombre":"Niña fondo casa en llamas"},
    {"id":2,"Imagen":"meme4.JPG","Nombre":"Niña fondo casa en llamas"},
    {"id":3,"Imagen":"meme5.JPG","Nombre":"Niña fondo casa en llamas"},
    {"id":4,"Imagen":"meme6.JPG","Nombre":"Niña fondo casa en llamas"},
    {"id":5,"Imagen":"meme7.JPG","Nombre":"Niña fondo casa en llamas"},
    {"id":6,"Imagen":"meme8.JPG","Nombre":"Niña fondo casa en llamas"},
    {"id":7,"Imagen":"meme9.JPG","Nombre":"Niña fondo casa en llamas"},
    {"id":8,"Imagen":"meme10.JPG","Nombre":"Niña fondo casa en llamas"},
    {"id":9,"Imagen":"meme11.JPG","Nombre":"Niña fondo casa en llamas"},
    {"id":10,"Imagen":"meme12.JPG","Nombre":"Pikachu sorprendido"},
    {"id":11,"Imagen":"meme13.JPG","Nombre":"Niña fondo casa en llamas"},
    {"id":12,"Imagen":"meme14.jpg","Nombre":"Niña fondo casa en llamas"},
    {"id":13,"Imagen":"meme15.jpg","Nombre":"Niña fondo casa en llamas"},
    {"id":14,"Imagen":"meme16.jpg","Nombre":"Niña fondo casa en llamas"},
    {"id":15,"Imagen":"meme17.jpg","Nombre":"Niña fondo casa en llamas"},
    {"id":16,"Imagen":"meme18.png","Nombre":"Niña fondo casa en llamas"},
    {"id":17,"Imagen":"meme19.jpg","Nombre":"Niña fondo casa en llamas"},
    {"id":18,"Imagen":"meme20.jpg","Nombre":"Niña fondo casa en llamas"},
    {"id":19,"Imagen":"meme21.jpg","Nombre":"Niña fondo casa en llamas"},
    {"id":20,"Imagen":"meme22.jpg","Nombre":"Pikachu sorprendido"},
    {"id":21,"Imagen":"meme23.jpg","Nombre":"Niña fondo casa en llamas"},
    {"id":22,"Imagen":"meme24.jpg","Nombre":"Niña fondo casa en llamas"},
    {"id":23,"Imagen":"meme25.jpg","Nombre":"Niña fondo casa en llamas"},
    {"id":24,"Imagen":"meme26.jpg","Nombre":"Niña fondo casa en llamas"},
    {"id":25,"Imagen":"meme27.jpg","Nombre":"Niña fondo casa en llamas"},
    {"id":26,"Imagen":"meme28.jpg","Nombre":"Niña fondo casa en llamas"},
    {"id":27,"Imagen":"meme29.jpg","Nombre":"Niña fondo casa en llamas"},
    {"id":28,"Imagen":"meme30.jpg","Nombre":"Niña fondo casa en llamas"},
    {"id":29,"Imagen":"meme31.jpg","Nombre":"Niña fondo casa en llamas"},
    {"id":30,"Imagen":"meme32.jpg","Nombre":"Pikachu sorprendido"},
    {"id":31,"Imagen":"meme33.jpg","Nombre":"Niña fondo casa en llamas"},
    {"id":32,"Imagen":"meme34.jpg","Nombre":"Niña fondo casa en llamas"},
    {"id":33,"Imagen":"meme35.jpg","Nombre":"Niña fondo casa en llamas"},
    {"id":34,"Imagen":"meme36.jpg","Nombre":"Niña fondo casa en llamas"},
    {"id":35,"Imagen":"meme37.jpg","Nombre":"Niña fondo casa en llamas"},
    {"id":36,"Imagen":"meme38.jpg","Nombre":"Niña fondo casa en llamas"},
    {"id":37,"Imagen":"meme39.jpg","Nombre":"Niña fondo casa en llamas"},
    {"id":38,"Imagen":"meme40.jpg","Nombre":"Niña fondo casa en llamas"},
    {"id":39,"Imagen":"meme41.png","Nombre":"Niña fondo casa en llamas"},
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
        title: Text('Bebamos'),
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
            BackgroundColor(colorprimario: Colors.white, colorsecundario: Colors.white,),
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
    
  static const maxSeconds = 15;
  int seconds = maxSeconds;
  Timer? timer;
  Object? imagenValor = '';
  bool mensajeMostrar = false;

  
  








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
    timer =Timer.periodic(Duration(seconds: 1), (_) { 

    if (seconds>0 && counter <40){
      setState(()=>seconds--);
      

      } 

    //if (seconds <=0 && counter >5){
      //timer?.cancel();
      

      //} 
      
      
     else if (seconds<1 && counter <40) {
        stopTimer(reset: true);
        increase();
        //counter++;

      }

      else  {
        timer?.cancel();
        mensajeMostrar = false;
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
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xffFCD23D),
                           onPrimary: Colors.black,
                           textStyle: TextStyle(fontSize: 20)
      ),                     
                      child:Text( 'Pausa'), 
                      onPressed:  (){stopTimer(reset: false);}),

                    SizedBox(width: 10,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                           primary: Color(0xffFCD23D),
                           onPrimary: Colors.black,
                           textStyle: TextStyle(fontSize: 20)
      ),
                     
                      child:Text( 'Siguiente'), 
                      onPressed:  (){
                         stopTimer(reset: true);
                         increase();
                      }),

                  ],
                ),
      ],
    )
          
      
      :
    ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(150, 75),
        primary: Color(0xffFCD23D),
        onPrimary: Colors.black,
        textStyle: TextStyle(fontSize: 20)
      ),
        child:Text( 'Comenzar'), 
        
        onPressed:  (){
        if (counter >0){
          mensajeMostrar = false;
          startTimer();

        }
        else  {
          startTimer();
          }}

      
      
      
      
      );  


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
                    color:Colors.black,
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


 */