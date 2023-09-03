import 'dart:math';

import 'package:flutter/material.dart';

import '../BackgroundInstruccionesGeneral.dart';
import 'package:provider/provider.dart';
import '../../../screens/personaProvider/provider.dart';




class NormalRetoResp extends StatelessWidget {

  final dataEnglish=[
    {"id": 0, "Description": "Upload one of your worst selfies to Facebook"},
     {"id": 1, "Description": "Post an embarrassing WhatsApp status"},
     {"id" : 2, "Description" : "Send a screenshot to your friends showing you confessing your love to a person of their choice"},
     {"id" : 3, "Description" : "Show the most embarrassing photo on your phone."},
     {"id" : 4, "Description" : "Show the last five people you texted and what the messages said."},
     {"id" : 5, "Description" : "Let the rest of the group DM someone on your Instagram account."},
     {"id" : 6, "Description" : "Eat a piece of raw garlic."},
     {"id" : 7, "Description" : "Do 100 squats."},
     {"id" : 8, "Description" : "Let the group see your Instagram DMs."},
     {"id" : 9, "Description" : "Show your time report on screen."},
     {"id" : 10, "Description" : "Hold three ice cubes in your mouth until they melt."},
     {"id" : 11, "Description" : "Say something dirty to the person on your left."},
     {"id" : 12, "Description" : "Give a foot massage to the person on your right."},
     {"id" : 13, "Description" : "Put 10 different liquids in a glass and drink it."},
     {"id": 14, "Description": "Shout the first word that comes to mind."},
     {"id": 15, "Description": "Make an erotic dance to the person you choose."},
     {"id": 16, "Description": "Repeat everything the person on your right says until it's your turn again"},
     {"id" : 17, "Description" : "Take off four items of clothing."},
     {"id" : 18, "Description" : "Like the first 15 posts on your Facebook."},
     {"id" : 19, "Description" : "Eat a spoonful of mustard."},
     {"id" : 20, "Description" : "Keep your eyes closed until it's your turn again."},
     {"id" : 21, "Description" : "Try to put all the toes of one foot in the mouth."},
     {"id" : 22, "Description" : "Send a 'sext' to the last person in your phonebook."},
     {"id" : 23, "Description" : "Show your orgasm face."},
     {"id" : 24, "Description" : "Empty your wallet/purse and show everyone what's inside."},
     {"id" : 25, "Description" : "Do your best 'sexy crawl'."},
     {"id" : 26, "Description" : "Pretend to be the person on your right for 10 minutes."},
     {"id" : 27, "Description" : "Eat a sandwich without using your hands."},
     {"id" : 28, "Description" : "Whisper a secret to the person on your left."},
     {"id" : 29, "Description" : "Twerk for one minute."},
     {"id" : 30, "Description" : "Try to make the group laugh as quickly as possible."},
     {"id" : 31, "Description" : "Try to put your whole fist in your mouth."},
     {"id" : 32, "Description" : "Let someone else in the group touch up your makeup."},
     {"id" : 33, "Description" : "Tell everyone an embarrassing story about yourself."},
     {"id" : 34, "Description" : "Try licking your elbow."},
     {"id" : 35, "Description" : "Peeling a banana with your toes."},
     {"id" : 36, "Description" : "Say everything in a whisper for the next 10 minutes."},
     {"id" : 37, "Description" : "Smell another player's armpit."},
     {"id" : 38, "Description" : "Speak with an American accent for the rest of the night."},
     {"id" : 39, "Description" : "Post the oldest 'selfie' from your phone to Instagram Stories."},
     {"id" : 40, "Description" : "Tell the saddest story you know."},
     {"id" : 41, "Description" : "Howl like a wolf for 30 seconds."},
     {"id": 42, "Description": "Dance without music for 30 seconds"},
     {"id" : 43, "Description" : "Do 'pole dance' with an imaginary bar."},
     {"id" : 44, "Description" : "Let someone else tickle you and try not to laugh."},
     {"id" : 45, "Description" : "Put as many snacks in your mouth as you can at once."},
     {"id" : 46, "Description" : "Scroll through your phonebook until someone tells you to stop. You have to call or delete that person."},
     {"id" : 47, "Description" : "Put your clothes inside out for two of your turns."},
     {"id": 48, "Description": "Finish your drink (responsibly)."},
     {"id" : 49, "Description" : "Try crying in front of the group."},
     {"id" : 50, "Description" : "Tell the group two truths and one lie, and they have to guess which one is the lie."},
     {"id" : 51, "Description" : "Show your secret talent."},
     {"id": 52, "Description": "Try to impersonate everyone in the room."},
     {"id": 53, "Description": "Respond to the first five Instagram stories on your timeline."},
     {"id" : 54, "Description" : "Put on all possible layers in 60 seconds."},
     {"id" : 55, "Description" : "Make another player jump in the next 10 minutes."},
     {"id" : 56, "Description" : "Hold your drink with both hands for the rest of the night."},
     {"id" : 57, "Description" : "Sit on the floor for the rest of the night."},
     {"id" : 58, "Description" : "Make up without a mirror and leave it like that for the rest of the game."},
     {"id": 59, "Description": "Custom insult to everyone present."},
     {"id": 60, "Description": "Say Im gay."},
  ];


  
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
    //
    {"id" : 24, "Descripcion" : "Comer un plátano de forma seductora."},
    {"id" : 25, "Descripcion" : "Vaciar tu cartera/monedero y enseñar a todos lo que hay dentro."},
    {"id" : 26, "Descripcion" : "Hacer tu mejor 'gateo sexy'."},
    {"id" : 27, "Descripcion" : "Fingir ser la persona de tu derecha durante 10 minutos."},
    {"id" : 28, "Descripcion" : "Comer un bocadillo sin usar las manos."},
    {"id" : 29, "Descripcion" : "Susurrar un secreto a la persona de tu izquierda."},
    {"id" : 30, "Descripcion" : "Hacer 'twerking' durante un minuto."},
    {"id" : 31, "Descripcion" : "Intentar hacer reír al grupo lo más rápido posible."},
    {"id" : 32, "Descripcion" : "Intentar meter todo el puño en la boca."},
    {"id" : 33, "Descripcion" : "Dejar que otra persona del grupo te retoque el maquillaje."},
    {"id" : 34, "Descripcion" : "Contar a todos una historia embarazosa sobre ti mismo."},
    {"id" : 35, "Descripcion" : "Intentar lamerte el codo."},
    {"id" : 36, "Descripcion" : "Pelar un plátano con los dedos de los pies."},
    {"id" : 37, "Descripcion" : "Decir todo en un susurro durante los próximos 10 minutos."},
    {"id" : 38, "Descripcion" : "Oler la axila de otro jugador."},
    {"id" : 39, "Descripcion" : "Hablar con acento americano durante el resto de la noche."},
    {"id" : 40, "Descripcion" : "Publicar el 'selfie' más antiguo de tu teléfono en Instagram Stories."},
    {"id" : 41, "Descripcion" : "Contar la historia más triste que conozcas."},
    {"id" : 42, "Descripcion" : "Aullar como un lobo durante 30 segundos."},
    {"id" : 43, "Descripcion" : "Bailar sin música durante 30 segundos"},
    {"id" : 44, "Descripcion" : "Hacer 'pole dance' con una barra imaginaria."},
    {"id" : 45, "Descripcion" : "Dejar que otra persona te haga cosquillas e intentar no reírte."},
    {"id" : 46, "Descripcion" : "Meter en la boca todos los bocadillos que puedas a la vez."},
    {"id" : 47, "Descripcion" : "Desplazarte por tu agenda telefónica hasta que alguien te diga que pares. Tienes que llamar o borrar a esa persona."},
    {"id" : 48, "Descripcion" : "Ponerte la ropa al revés durante dos turnos tuyos."},
    {"id" : 49, "Descripcion" : "Acabarte la bebida (responsablemente)."},
    {"id" : 50, "Descripcion" : "Intentar llorar delante del grupo."},
    {"id" : 51, "Descripcion" : "Decir al grupo dos verdades y una mentira, y ellos tienen que adivinar cuál es la mentira."},
    {"id" : 52, "Descripcion" : "Mostrar tu talento secreto."},
    {"id" : 53, "Descripcion" : "Intentar suplantar a todos los presentes en la sala."},
    {"id" : 54, "Descripcion" : "Responder a las cinco primeras 'stories' de Instagram de tu 'timeline'."},
    {"id" : 55, "Descripcion" : "Ponerte todas las capas posibles en 60 segundos."},
    {"id" : 56, "Descripcion" : "Hacer saltar a otro jugador en los próximos 10 minutos."},
    {"id" : 57, "Descripcion" : "Sostener tu bebida con las dos manos durante el resto de la noche."},
    {"id" : 58, "Descripcion" : "Sentarte en el suelo durante el resto de la noche."},
    {"id" : 59, "Descripcion" : "Maquillarte sin espejo y dejarte así durante el resto del juego."},
    {"id" : 60, "Descripcion" : "Insultar de forma personalizada a todos los presentes."},

  ];


  
  
  Object? cuerpotexto = "";
  Object? cuerpotextoIngles = "";
  




  @override
  Widget build(BuildContext context) {
    final listapersonaje=Provider.of<ListProvider>(context);
    int tamanolista = data.length;

    var intValue = Random().nextInt(tamanolista);
    
    cuerpotexto=data[intValue]["Descripcion"];
    cuerpotextoIngles=dataEnglish[intValue]["Description"];



    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(listapersonaje.idioma==0?'¿Verdad o reto?':'Truth or dare?'),
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
            _TextoEnPantalla(textoValor: listapersonaje.idioma==0?"$cuerpotexto":"$cuerpotextoIngles"),



            
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
   final listapersonaje=Provider.of<ListProvider>(context);

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
                  Text(listapersonaje.idioma==0?"Siguiente":"Next",
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
    final listapersonaje=Provider.of<ListProvider>(context);
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
                      image: AssetImage(listapersonaje.idioma==0?"assets/Desafio.jpg":"assets/Dare.png"), 
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