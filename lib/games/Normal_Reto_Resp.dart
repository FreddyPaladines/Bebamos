import 'dart:math';

import 'package:flutter/material.dart';

import 'BackgroundInstruccionesGeneral.dart';




class NormalRetoResp extends StatelessWidget {


  final data = [
    {"id" : 0, "Descripcion" : "Subir a Facebook una de tus peores selfies"},
    {"id" : 1, "Descripcion" : "Publicar un estado de WhatsApp vergonzoso"},
    {"id" : 2, "Descripcion" : "Mandar una captura de pantalla a tus amigos en la que se vea que le confiesas tu amor a una persona de su elección"},
    {"id" : 3, "Descripcion" : "Enseñar la foto más embarazosa de tu teléfono."},
    {"id" : 4, "Descripcion" : "Enseñar las últimas cinco personas a las que enviaste mensajes de texto y lo que decían los mensajes."},
    {"id" : 5, "Descripcion" : "Dejar que el resto del grupo envíe un MD a alguien de tu cuenta de Instagram."},
    {"id" : 6, "Descripcion" : "Comer un trozo de ajo crudo."},
    {"id" : 7, "Descripcion" : "Hacer 100 sentadillas."},
    {"id" : 8, "Descripcion" : "Dejar que el grupo mire tus MDs de Instagram."},
    {"id" : 9, "Descripcion" : "Enseñar tu informe de tiempo en pantalla."},
    {"id" : 10, "Descripcion" : "Mantener tres cubitos de hielo en la boca hasta que se derritan."},
    {"id" : 11, "Descripcion" : "Decir algo sucio a la persona de tu izquierda."},
    {"id" : 12, "Descripcion" : "Dar un masaje en los pies a la persona de tu derecha."},
    {"id" : 13, "Descripcion" : "Poner 10 líquidos diferentes en un vaso y beberlo."},
    {"id" : 14, "Descripcion" : "Gritar la primera palabra que se te ocurra."},
    {"id" : 15, "Descripcion" : "Hacer un baile erótico a la persona que elijas."},
    {"id" : 16, "Descripcion" : "Repetir todo lo que dice la persona de tu derecha hasta que sea tu turno de nuevo"},
    {"id" : 17, "Descripcion" : "Quitarte cuatro prendas de ropa."},
    {"id" : 18, "Descripcion" : "Dar me gusta a las 15 primeras publicaciones de tu Facebook."},
    {"id" : 19, "Descripcion" : "Comer una cucharada de mostaza."},
    {"id" : 20, "Descripcion" : "Mantener los ojos cerrados hasta que sea tu turno de nuevo."},
    {"id" : 21, "Descripcion" : "Intentar meter todos los dedos de un pie en la boca."},
    {"id" : 22, "Descripcion" : "Enviar un 'sext' a la última persona de tu agenda telefónica."},
    {"id" : 23, "Descripcion" : "Mostrar tu cara de orgasmo."},
    {"id" : 23, "Descripcion" : "Comer un plátano de forma seductora."},
    {"id" : 24, "Descripcion" : "Vaciar tu cartera/monedero y enseñar a todos lo que hay dentro."},
    {"id" : 25, "Descripcion" : "Hacer tu mejor 'gateo sexy'."},
    {"id" : 26, "Descripcion" : "Fingir ser la persona de tu derecha durante 10 minutos."},
    {"id" : 27, "Descripcion" : "Comer un bocadillo sin usar las manos."},
    {"id" : 28, "Descripcion" : "Susurrar un secreto a la persona de tu izquierda."},
    {"id" : 29, "Descripcion" : "Hacer 'twerking' durante un minuto."},
    {"id" : 30, "Descripcion" : "Intentar hacer reír al grupo lo más rápido posible."},
    {"id" : 31, "Descripcion" : "Intentar meter todo el puño en la boca."},
    {"id" : 32, "Descripcion" : "Dejar que otra persona del grupo te retoque el maquillaje."},
    {"id" : 33, "Descripcion" : "Contar a todos una historia embarazosa sobre ti mismo."},
    {"id" : 34, "Descripcion" : "Intentar lamerte el codo."},
    {"id" : 35, "Descripcion" : "Pelar un plátano con los dedos de los pies."},
    {"id" : 36, "Descripcion" : "Decir todo en un susurro durante los próximos 10 minutos."},
    {"id" : 37, "Descripcion" : "Oler la axila de otro jugador."},
    {"id" : 38, "Descripcion" : "Hablar con acento americano durante el resto de la noche."},
    {"id" : 39, "Descripcion" : "Publicar el 'selfie' más antiguo de tu teléfono en Instagram Stories."},
    {"id" : 40, "Descripcion" : "Contar la historia más triste que conozcas."},
    {"id" : 41, "Descripcion" : "Aullar como un lobo durante 30 segundos."},
    {"id" : 42, "Descripcion" : "Bailar sin música durante 30 segundos"},
    {"id" : 43, "Descripcion" : "Hacer 'pole dance' con una barra imaginaria."},
    {"id" : 44, "Descripcion" : "Dejar que otra persona te haga cosquillas e intentar no reírte."},
    {"id" : 45, "Descripcion" : "Meter en la boca todos los bocadillos que puedas a la vez."},
    {"id" : 46, "Descripcion" : "Desplazarte por tu agenda telefónica hasta que alguien te diga que pares. Tienes que llamar o borrar a esa persona."},
    {"id" : 47, "Descripcion" : "Ponerte la ropa al revés durante dos turnos tuyos."},
    {"id" : 48, "Descripcion" : "Acabarte la bebida (responsablemente)."},
    {"id" : 49, "Descripcion" : "Intentar llorar delante del grupo."},
    {"id" : 50, "Descripcion" : "Decir al grupo dos verdades y una mentira, y ellos tienen que adivinar cuál es la mentira."},
    {"id" : 51, "Descripcion" : "Mostrar tu talento secreto."},
    {"id" : 52, "Descripcion" : "Intentar suplantar a todos los presentes en la sala."},
    {"id" : 53, "Descripcion" : "Responder a las cinco primeras 'stories' de Instagram de tu 'timeline'."},
    {"id" : 54, "Descripcion" : "Ponerte todas las capas posibles en 60 segundos."},
    {"id" : 55, "Descripcion" : "Hacer saltar a otro jugador en los próximos 10 minutos."},
    {"id" : 56, "Descripcion" : "Sostener tu bebida con las dos manos durante el resto de la noche."},
    {"id" : 57, "Descripcion" : "Sentarte en el suelo durante el resto de la noche."},
    {"id" : 58, "Descripcion" : "Maquillarte sin espejo y dejarte así durante el resto del juego."},
    {"id" : 59, "Descripcion" : "Insultar de forma personalizada a todos los presentes."},




  ];
  
  
  
  Object? cuerpotexto = "";




  @override
  Widget build(BuildContext context) {
    int tamanolista = data.length;

    var intValue = Random().nextInt(tamanolista);
    
    cuerpotexto=data[intValue]["Descripcion"];



    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('¿Verdad o reto?'),
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
            
            BackgroundgeneralInstru(
              colorfondo: Color(0xff28A5B6), 
              imagen1: 'assets/Instrucciones_Verdad2.png', 
              imagen2: 'assets/Instrucciones_Verdad3.png',),
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
   final size= MediaQuery.of(context).size;

    return Column(
       children: [
        SizedBox(height: size.height*0.3,),
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
                    fontSize: 30,
                    color: Colors.white,
                    height: 1,
                  ),
                  ),
                  GestureDetector(
                  onTap: () {Navigator.pushNamed(context, "NoemalVerdadoReto");},
                  ),
                Column( children: [

                  Container(height: 250,),
                  Text("Siguiente",
                style: TextStyle(
                    fontFamily: 'Arial',
                    fontSize: 15,
                    color: Colors.white,
                    height: 1,
                  ),
                  ),
                ],

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
          child: Container(
            width:500,
            height:400,
            
            


                decoration: BoxDecoration(
                  color: Colors.black87,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(7,8)


                          )
                        ]

                  

                  
                )
                ,),

              
              

              
              
              
              )
        
        
        

        


      ],





    );
  }
  





}

class BotonVerdad extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: size.height*0.045,),
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