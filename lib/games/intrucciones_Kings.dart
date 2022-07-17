
import 'package:flutter/material.dart';

class InstruccionesKings extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
        title: Text('Bebamos: Juego para beber con amigos'),
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
      ),

      


    

    );
  }
}

class CuerpoKings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     final size= MediaQuery.of(context).size;

    return Column(
      children: [
        SizedBox(height: size.height*0.1,),
        Center(
          child: Container(
              height:size.height*0.7,
              width: size.width*0.7,
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
                    child: Text ("INSTRUCCIONES", 
                    style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                    ),

                  
                  
                    )
                    
                    
                    ),
                  Padding(
                  padding: EdgeInsets.all(10),
                  child: Text ("Todos se sientan alrededor de la mesa. En el centro, pon un vaso grande, Por turnos todos los jugadores toman una carta y siguen las reglas de cada carta. ", 
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

                      Row(
                      children: [
                        SizedBox(width:size.width*0.06),
                        ElevatedButton(
                          
                          
                          
                          child: Text("Volver",style: TextStyle(
                                color: Colors.black,
                                fontSize:20,
                                fontWeight: FontWeight.w600,)),
                          onPressed: (){
                            Navigator.pushNamed(context,"MenuJuegos" );
                          }, 
                           style: ElevatedButton.styleFrom(
                            
                           primary: Color(0xFFE928A0),
                           padding: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                           textStyle: TextStyle(
                           fontSize: 30,
                           fontWeight: FontWeight.bold),
                           shadowColor: Colors.black ),
                           ),
                        SizedBox(width:size.width*0.02),

                           
                        





                        ElevatedButton(
                          
                          
                          child: Text("Comenzar",style: TextStyle(
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