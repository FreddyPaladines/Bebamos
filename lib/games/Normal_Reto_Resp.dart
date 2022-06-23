import 'dart:math';
import 'package:bebemos/widgets/background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'kingV3.dart';



class NormalRetoResp extends StatelessWidget {


  final data = [
    {"id" : 0, "Descripcion" : "Subir a Facebook una de tus peores selfies"},
    {"id" : 1, "Descripcion" : "Publicar un estado de WhatsApp vergonzoso"},
    {"id" : 2, "Descripcion" : "Mandar una captura de pantalla a tus amigos en la que se vea que le confiesas tu amor a una persona de su elección"},





  ];
  
  
  
  Object? cuerpotexto = "";




  @override
  Widget build(BuildContext context) {
    int tamanolista = data.length;

    var intValue = Random().nextInt(tamanolista);
    
    cuerpotexto=data[intValue]["Descripcion"];



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
            CuadroTexto(),
            BotonVerdad(),
            _TextoEnPantalla(textoValor: "$cuerpotexto"),



            
            ],),
      ),
    );
}
}

class _TextoEnPantalla extends StatelessWidget{
  final String textoValor;
  
const _TextoEnPantalla({
    Key? key, 
    required this.textoValor, 

  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Column(
       children: [
        SizedBox(height: 220,),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: SizedBox(
            height: 300,
            width: 500,
            

            child: AspectRatio(
              aspectRatio: 0.83,
              child: Stack(
              
              
              children: [
                Text("$textoValor",
                style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 18,
                    color: Colors.white,
                    height: 1,
                  ),
                  ),
                  GestureDetector(
                  onTap: () {Navigator.pushNamed(context, "NoemalVerdadoReto");},
                  )
              
              
              ],
            ),
            )
            
              

            
            
            )
        )



        ]


    );


  }
}

class CuadroTexto extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 170,),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            width:500,
            height:400,
            
            
            child:  AspectRatio(
              aspectRatio: 2,
              child: 
              DecoratedBox (
                decoration: BoxDecoration(
                  color: Color(0xff34006d),
                  borderRadius: BorderRadius.all(Radius.circular(20),
                  )
                )
                ,),

              ),
              

              
              
              
              )
        
        
        )

        


      ],





    );
    throw UnimplementedError();
  }
  





}

class BotonVerdad extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50,),
        Padding(
          padding: const EdgeInsets.all(100.0),

          child: SizedBox(
                    width: 300,
            height: 80,
            child: AspectRatio (
              
              aspectRatio: 0.83,
              child: Stack(
                children: [
                  

                  
                  Container(     
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),


                  ),
                GestureDetector(
                onTap: () {Navigator.pushNamed(context, "NoemalVerdadoReto");},
                child: Hero(
                    tag: 2, 
                    child: ClipRRect(

                    borderRadius: BorderRadius.circular(20),
                    child: FadeInImage(
                      alignment: Alignment.center,
                      image: AssetImage("assets/Desafio.jpg"), 
                      placeholder: AssetImage("assets/loading.gif"),),
                  
                  
                  )
                    
                    
                    
                    
                    ),

              ),

                  
              ],
              ),
              
              ),
              


          

            

          ),
        ),
      ],
    );


  }




}