import 'dart:async';

import 'package:bebemos/widgets/background.dart';
import 'package:flutter/material.dart';


class QueMemejuego extends StatefulWidget {
  @override
  _QueMemejuegoState createState() => _QueMemejuegoState();
}

class _QueMemejuegoState extends State<QueMemejuego> {

  



  
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



  void resetTimer()=>setState(()=>seconds=maxSeconds);


  


  void startTimer (){
    timer =Timer.periodic(Duration(microseconds: 1), (_) { 

    if (seconds>0){
      setState(()=>seconds--);

      } else {
        stopTimer(reset: true);
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
                      onCLicked:  (){stopTimer(reset: false);}),
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
      onCLicked:  (){startTimer();});


}








  @override
  Widget build(BuildContext context) {

    
    return Column(
      children: [
        SizedBox(height: 150,),
        Center(
          child: Column(
            children: [
              Text("$seconds",
              style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold),
              
              ),
              buildButtons(),


            ],
          ),
            
        )
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


