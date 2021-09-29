import 'dart:html';

import 'package:bebemos/widgets/background.dart';
import 'package:bebemos/widgets/card_swiper.dart';
import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {


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
            Card_swiper()
            ],),
      ),

      


    

    );
  }
}