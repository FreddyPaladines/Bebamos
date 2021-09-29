import 'package:bebemos/widgets/background.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class Kingjuego extends StatelessWidget {

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
            FlipCard(
              front: Container(
                alignment: Alignment.center, 
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  
                  
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: FadeInImage(
                                placeholder: AssetImage("assets/loading.gif"),
                                image: AssetImage("assets/AS_Negro.jpg"),
                                height: 500,
                                width: 350,
                                fit:BoxFit.cover
                      ),
                  ),
                ),
              ),
               back: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FadeInImage(
                            placeholder: AssetImage("assets/loading.gif"),
                            image: AssetImage("assets/Trasera_roja.jpg"),
                            height: 500,
                            width: 350,
                            fit:BoxFit.cover
                  ),
               ))
            ],),
      ),

      


    

    );
  }
}