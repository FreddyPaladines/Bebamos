import 'dart:math';

import 'package:flutter/material.dart';

import 'BackgroundInstruccionesGeneral.dart';




class NormalVerdadoResp extends StatelessWidget {


  final data = [
    {"id" : 0, "Descripcion" : "¿De este grupo, a quién te llevarías a una isla desierta?"},
    {"id" : 1, "Descripcion" : "¿Qué es lo más vergonzoso que te ha pasado en la vida?"},
    {"id" : 2, "Descripcion" : "¿Cuál fue el sueño más extraño que has tenido?"},
    {"id" : 3, "Descripcion" : "¿Cuándo fue la última vez que mentiste?"},
    {"id" : 4, "Descripcion" : "¿Qué es lo peor que has hecho en el trabajo?"},
    {"id" : 5, "Descripcion" : "¿Cuándo fue la última vez que lloraste?"},
    {"id" : 6, "Descripcion" : "¿Cuál es tu mayor miedo?"},
    {"id" : 7, "Descripcion" : "¿Cuál es tu mayor fantasía?"},
    {"id" : 8, "Descripcion" : "¿Tienes algún fetiche?"},
    {"id" : 9, "Descripcion" : "¿Quién es la última persona que has buscado en Instagram?"},
    {"id" : 10, "Descripcion" : "¿Qué es lo que te alegra que tu familia no sepa de ti?"},
    {"id" : 11, "Descripcion" : "¿Has engañado alguna vez a alguien?"},
    {"id" : 12, "Descripcion" : "¿Cuál es el lugar más extraño en el que has orinado?"},
    {"id" : 13, "Descripcion" : "¿Qué es lo peor que has hecho?"},
    {"id" : 14, "Descripcion" : "¿Qué es lo más extraño que has comido?"},
    {"id" : 15, "Descripcion" : "¿Cuál es tu problema en las relaciones?"},
    {"id" : 16, "Descripcion" : "¿Cuál es el secreto que nunca le has contado a nadie?"},
    {"id" : 17, "Descripcion" : "¿Tienes algún talento oculto?"},
    {"id" : 18, "Descripcion" : "¿Quién fue tu primer amor 'celebrity'?"},
    {"id" : 19, "Descripcion" : "¿Qué opinas del poliamor?"},
    {"id" : 20, "Descripcion" : "¿Cuál es la peor experiencia íntima que has tenido?"},
    {"id" : 21, "Descripcion" : "¿Cuál es la mejor experiencia íntima que has tenido?"},
    {"id" : 22, "Descripcion" : "¿Has copiado alguna vez en un examen?"},
    {"id" : 23, "Descripcion" : "Si fueras a participar en un 'reality show', ¿cuál sería?"},
    {"id" : 24, "Descripcion" : "¿Cuál es la mayor borrachera que has tenido?"},
    {"id" : 25, "Descripcion" : "¿Has infringido alguna vez la ley?"},
    {"id" : 26, "Descripcion" : "¿Qué es lo más vergonzoso que has hecho?"},
    {"id" : 27, "Descripcion" : "¿Cuál es tu mayor inseguridad?"},
    {"id" : 28, "Descripcion" : "¿Has seguido siendo amigo de alguien porque te beneficiaba más allá de la amistad?"},
    {"id" : 29, "Descripcion" : "¿Cuál es el mayor error que has cometido?"},
    {"id" : 30, "Descripcion" : "¿Qué es lo más desagradable que has hecho?"},
    {"id" : 31, "Descripcion" : "¿A quién te gustaría besar en esta habitación?"},
    {"id" : 32, "Descripcion" : "¿Qué es lo que odias que la gente sepa de ti?"},
    {"id" : 33, "Descripcion" : "¿Qué es lo peor que te han hecho?"},
    {"id" : 34, "Descripcion" : "¿Qué es lo mejor que alguien ha hecho por ti?"},
    {"id" : 35, "Descripcion" : "¿Has tenido alguna vez un enfrentamiento con la ley?"},
    {"id" : 36, "Descripcion" : "¿Cuál es tu peor hábito?"},
    {"id" : 37, "Descripcion" : "¿Qué es lo más vergonzoso que has hecho en un taxi?"},
    {"id" : 38, "Descripcion" : "¿Qué es lo peor que le has dicho a alguien?"},
    {"id" : 39, "Descripcion" : "¿Cuál es la peor cita que has tenido??"},
    {"id" : 40, "Descripcion" : "¿Qué pasó en la última noche de fiesta que has tenido?"},
    {"id" : 41, "Descripcion" : "¿Cuál es la mayor idea errónea sobre ti?"},
    {"id" : 42, "Descripcion" : "¿Cuál es el mejor consejo que te han dado?"},
    {"id" : 43, "Descripcion" : "¿Qué es lo que solo haces cuando estás solo?"},
    {"id" : 44, "Descripcion" : "Si tuvieras que volver con un ex, ¿a quién elegirías?"},
    {"id" : 45, "Descripcion" : "¿Tienes un amigo favorito?"},
    {"id" : 46, "Descripcion" : "¿Tienes un hermano favorito?"},
    {"id" : 47, "Descripcion" : "¿Cuál es el rumor más extraño que has escuchado sobre ti?"},
    {"id" : 48, "Descripcion" : "¿Qué es lo que más te excita?"},
    {"id" : 49, "Descripcion" : "¿Cuál es tu combinación de alimentos asquerosos favorita?"},
    {"id" : 50, "Descripcion" : "¿Cuál es la razón más tonta por la que has abandonado un club antes de tiempo?"},
    {"id" : 51, "Descripcion" : "¿Qué has comprado que haya sido el mayor despilfarro de dinero?"},
    {"id" : 52, "Descripcion" : "Si pudieras intercambiar tu vida con alguien de esta sala, ¿quién sería?"},
    {"id" : 53, "Descripcion" : "¿Te masturbas cada día?"},
    {"id" : 54, "Descripcion" : "¿Has comido insectos una vez?"},
    {"id" : 55, "Descripcion" : "¿Has dejado a alguna cita plantada?"},
    {"id" : 56, "Descripcion" : "¿Tienes un hermano favorito?"},
    {"id" : 57, "Descripcion" : "¿Alguna vez has salido con zapatillas de andar por casa a la calle?"},
    {"id" : 58, "Descripcion" : "¿Alguna vez te has quedado sin dinero antes de llegar a fin de mes?"},
    {"id" : 59, "Descripcion" : "¿Te has escapado de casa para ir de fiesta?"},
    {"id" : 60, "Descripcion" : "¿Te has liado con la pareja de un amigo?"},




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
                  )
              
              
              ],
            ),
            )
            
              

            
            
            )
        ),
        







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
                  color: Color(0xff34006d),
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

              
              
              
              )
        
        
        ),



        


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
                    tag: 1, 
                    child: ClipRRect(

                    borderRadius: BorderRadius.circular(20),
                    child: FadeInImage(
                      alignment: Alignment.center,
                      image: AssetImage("assets/Verdad.jpg"), 
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