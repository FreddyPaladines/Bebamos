
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../screens/personaProvider/provider.dart';

class InstruccionesKings extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Color(0xFFE928A0),
        title: Text('Kings'),
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
            BackgroundIntKings(),
            CuerpoKings(
            ),


            ],),
      );

      


  }
}

class CuerpoKings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     final size= MediaQuery.of(context).size;
     final listapersonaje = Provider.of<ListProvider>(context);

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
                        
              child: Column(
                children: [
                  SizedBox(height:size.height*0.009),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Text (listapersonaje.idioma==0?"INSTRUCCIONES":"INSTRUCTIONS", 
                    style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                    ),

                  
                  
                    )
                    
                    
                    ),
                  Padding(
                  padding: EdgeInsets.all(15),
                  child: Text (listapersonaje.idioma==0?
                          "Todos se sientan alrededor de la mesa. En el centro, pon un vaso grande, Por turnos todos los jugadores toman una carta y siguen las reglas de cada carta. ":"Everyone sits around the table. In the center, put a glass. In turns, all the players take a card and follow the rules of each card.", 
                    style: TextStyle(
                          color: Colors.black,
                          fontSize:18,
                          fontWeight: FontWeight.w600,
                    ),             
                    )
                  ),
                  SizedBox(height:size.height*0.05),

                  Image.asset(
                        'assets/Instrucciones_Kings3.png',
                        fit: BoxFit.cover,
                        height:200,
                        width:200,
                      ),



                  SizedBox(height:size.height*0.05),

                      Container(
                        margin: EdgeInsets.symmetric(horizontal: size.width*0.1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                        
                        children: [


                          ElevatedButton(
                            
                            
                            child: Text(listapersonaje.idioma==0?"Comenzar":"Play",style: TextStyle(
                                  color: Colors.black,
                                  fontSize:20,
                                  fontWeight: FontWeight.w600,)),
                            onPressed: (){
                              Navigator.pushNamed(context,"kingv3" );
                            }, 
                             style: ElevatedButton.styleFrom(
                             primary: Color(0xFFE928A0),
                             padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                             textStyle: TextStyle(
                             fontSize: 30,
                             fontWeight: FontWeight.bold),
                             shadowColor: Colors.black ),
                             ),




                        ],
                    ),
                      ),



                ],

//ok

              ),
           )
          
          
          
          
          ,
        )
      ],
      
    );

  }
}












class BackgroundIntKings extends StatelessWidget {
  const BackgroundIntKings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return Stack(
      children: [
      Container(
        decoration: BoxDecoration(
          color: Color(0xFFFDECEF)
    
      ),
      ),
      Column(
        children: [
          SizedBox(height:size.height*0.05),
          Row(
            children: [
              SizedBox(width:size.width*0.6),


              Image.asset(
                            'assets/Instrucciones_Kings1.png',
                            fit: BoxFit.cover,
                            height:200,
                            width:200,
                          ),
            ],
          ),
          SizedBox(height:size.height*0.35),

          Row(
            children: [
              SizedBox(width:size.width*0.05),
              Image.asset(
                            'assets/Instrucciones_Kings2.png',
                            fit: BoxFit.cover,
                            height:150,
                            width:150,
                          ),
            ],
          ),



        ],
      )


    ]);
  }
}