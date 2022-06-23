import 'dart:html';

import 'package:bebemos/games/kingV3.dart';
import 'package:bebemos/widgets/Datos.dart';
import 'package:bebemos/widgets/background.dart';
import 'package:bebemos/widgets/card_swiper.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';


var randomHappylist = (juegosYoNunca.toList()..shuffle()).first;

List newlista= shuffle(juegosYoNunca);

class YoNuncaPrincipal extends StatelessWidget {
  


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
            Cuerpo(),

            ],),
      ),

      


    

    );
  }
}





//Aqui es el cuerpo de la aplicacion
class Cuerpo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    
    return Column(
      children: [
        SizedBox(height: size.height*0.05,),

        Container(
          child: 
            Text("YO NUNCA NUNCA ",
               textAlign: TextAlign.center,
               style: TextStyle(fontSize: 40,
               fontWeight: FontWeight.bold,

               ),
          ),
        ),
        Card_swiperNunca(),
        



      ],
      


    );
  }
}





class Card_swiperNunca  extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {




    final size= MediaQuery.of(context).size;
    //El size sirve para tomar el tamaño del dispositivo que se use


    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      
      children: 
        [
        Container(

          
          
          //width: double.infinity,
          width: double.infinity,
          height: size.height*0.7,
          child: Swiper(
            itemCount: juegosYoNunca.length,
            layout: SwiperLayout.TINDER,
            itemWidth: size.width*0.7,
            itemHeight: size.height*0.8,
            itemBuilder: (BuildContext context, int index){
              return Stack(
              



                children: 

                    [
                    BackgroundCafe(),
//randomHappylist.descripcion
                    Column(
                      children: [
                        SizedBox(height: size.height*0.03,),
                        Container(
                          height:  size.height*0.2,
                          width:  size.height*0.4,
                          child: Text(newlista[index].descripcion,)),
                        SizedBox(height: size.height*0.03,),
                        Center(
                          child: GestureDetector(
                            
                            onTap: ()=> Navigator.pushNamed(context, juegos[index].ruta),
                            child: ClipRRect(

                              borderRadius: BorderRadius.circular(20),
                              child: FadeInImage(
                                height: size.height*0.4,
                                width:size.width*0.5,
                                placeholder: AssetImage("assets/loading.gif"),
                                image: AssetImage(newlista[index].imaganes),
                                fit:BoxFit.cover,
                            
                                
                                
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    //Descripcion 











                  ],
              );
            
            },
            
          ),
        ),
      ],
    );
    
  }
}






class BackgroundCafe extends StatelessWidget {
  const BackgroundCafe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          stops: [0.01,0.9],
          colors: [Color(0xff6f3200),Color(0xff804000)]
      ),
    ),
    );
  }
}




