import 'dart:math';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:bebemos/widgets/background.dart';

import 'intrucciones_Kings.dart';
List<int> newList = [0,1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51];
List listaId = shuffle(newList);

class KingjuegoV3 extends StatefulWidget {
  
  const KingjuegoV3({ Key? key }) : super(key: key);
  

  @override
  State<KingjuegoV3> createState() => _CounterScreenState();
  


}

class _CounterScreenState extends State<KingjuegoV3> {
  

  Object? imagenValor = 'Trasera_roja.jpg';
  Object? nombreValor = 'Comienza';
  Object? descripcionValor = '';
  Object? idactual;
  List kings=[];
  final data = [
     {"id" : 1, "Imagen" : "2_Brillo.JPG", "Nombre" : "PARA TI", "Descripcion" : "Si un jugador saca un 2 (de cualquier color o palo), podría escoger a un jugador para que beba. La persona elegida deberá beber durante el tiempo establecido al principio del juego."},
     {"id" : 2, "Imagen" : "2_Corazon.JPG", "Nombre" : "PARA TI","Descripcion" : "Si un jugador saca un 2 (de cualquier color o palo), podría escoger a un jugador para que beba. La persona elegida deberá beber durante el tiempo establecido al principio del juego."},
     {"id" : 3, "Imagen" : "2_Negro.JPG", "Nombre" : "PARA TI","Descripcion" : "Si un jugador saca un 2 (de cualquier color o palo), podría escoger a un jugador para que beba. La persona elegida deberá beber durante el tiempo establecido al principio del juego."},
     {"id" : 4, "Imagen" : "2_Trevol.JPG", "Nombre" : "PARA TI","Descripcion" : "Si un jugador saca un 2 (de cualquier color o palo), podría escoger a un jugador para que beba. La persona elegida deberá beber durante el tiempo establecido al principio del juego."},
     {"id" : 5, "Imagen" : "3_Brillo.JPG", "Nombre" : "PARA MI", "Descripcion" : "Si un jugador saca un 3, deberá beber su bebida."},
     {"id" : 6, "Imagen" : "3_Corazon.JPG", "Nombre" : "PARA MI","Descripcion" : "Si un jugador saca un 3, deberá beber su bebida."},
     {"id" : 7, "Imagen" : "3_Negro.JPG", "Nombre" : "PARA MI","Descripcion" : "Si un jugador saca un 3, deberá beber su bebida."},
     {"id" : 8, "Imagen" : "3_Trevol.JPG", "Nombre" : "PARA MI","Descripcion" : "Si un jugador saca un 3, deberá beber su bebida."},
     {"id" : 9, "Imagen" : "4_Brillo.JPG", "Nombre" : "PARA EL SUELO", "Descripcion" : "Si un jugador saca un 4, todos en la mesa deberán agacharse y tocar el suelo lo antes posible. El último en hacerlo deberá beber."},
     {"id" : 10, "Imagen" : "4_Corazon.JPG", "Nombre" : "PARA EL SUELO","Descripcion" : "Si un jugador saca un 4, todos en la mesa deberán agacharse y tocar el suelo lo antes posible. El último en hacerlo deberá beber."},
     {"id" : 11, "Imagen" : "4_Negro.JPG", "Nombre" : "PARA EL SUELO","Descripcion" : "Si un jugador saca un 4, todos en la mesa deberán agacharse y tocar el suelo lo antes posible. El último en hacerlo deberá beber."},
     {"id" : 12, "Imagen" : "4_Trevol.JPG", "Nombre" : "PARA EL SUELO","Descripcion" : "Si un jugador saca un 4, todos en la mesa deberán agacharse y tocar el suelo lo antes posible. El último en hacerlo deberá beber."},   
     {"id" : 13, "Imagen" : "5_Brillo.JPG", "Nombre" : "PARA LOS CHICOS", "Descripcion" : " Si un jugador saca un 5, todos en la mesa deberán beber."},
     {"id" : 14, "Imagen" : "5_Corazon.JPG", "Nombre" : "PARA LOS CHICOS","Descripcion" : " Si un jugador saca un 5, todos en la mesa deberán beber."},
     {"id" : 15, "Imagen" : "5_Negro.JPG", "Nombre" : "PARA LOS CHICOS","Descripcion" : " Si un jugador saca un 5, todos en la mesa deberán beber."},
     {"id" : 16, "Imagen" : "5_Trevol.JPG", "Nombre" : "PARA LOS CHICOS","Descripcion" : " Si un jugador saca un 5, todos en la mesa deberán beber."},   
     {"id" : 17, "Imagen" : "6_Brillo.JPG", "Nombre" : "PARA LAS CHICAS", "Descripcion" : "Si un jugador saca un 6, todas las chicas en la mesa deberán beber."},
     {"id" : 18, "Imagen" : "6_Corazon.JPG", "Nombre" : "PARA LAS CHICAS","Descripcion" : " Si un jugador saca un 6, todas las chicas en la mesa deberán beber."},
     {"id" : 19, "Imagen" : "6_Negro.JPG", "Nombre" : "PARA LAS CHICAS","Descripcion" : " Si un jugador saca un 6, todas las chicas en la mesa deberán beber."},
     {"id" : 20, "Imagen" : "6_Trevol.JPG", "Nombre" : "PARA LAS CHICAS","Descripcion" : " Si un jugador saca un 6, todas las chicas en la mesa deberán beber."},         
     {"id" : 21, "Imagen" : "7_Brillo.JPG", "Nombre" : "EL CIELO", "Descripcion" : "Si un jugador saca un 7, todos en la mesa deberán levantar las manos lo más rápido posible. El último en hacerlo tendrá que beber."},
     {"id" : 22, "Imagen" : "7_Corazon.JPG", "Nombre" : "EL CIELO","Descripcion" : "Si un jugador saca un 7, todos en la mesa deberán levantar las manos lo más rápido posible. El último en hacerlo tendrá que beber."},
     {"id" : 23, "Imagen" : "7_Negro.JPG", "Nombre" : "EL CIELO","Descripcion" : "Si un jugador saca un 7, todos en la mesa deberán levantar las manos lo más rápido posible. El último en hacerlo tendrá que beber."},
     {"id" : 24, "Imagen" : "7_Trevol.JPG", "Nombre" : "EL CIELO","Descripcion" : "Si un jugador saca un 7, todos en la mesa deberán levantar las manos lo más rápido posible. El último en hacerlo tendrá que beber."},     
     {"id" : 25, "Imagen" : "8_Brillo.JPG", "Nombre" : "EL COMPAÑERO", "Descripcion" : "Si un jugador saca un 8, deberá escoger a otra persona de la mesa para que beba cada vez que él lo hace y viceversa. Esto continuará hasta que alguien saque un 8. Si alguno de los jugadores se olvida de beber cuando lo haga su “compañero”, deberá tomar una bebida adicional como penalización."},
     {"id" : 26, "Imagen" : "8_Corazon.JPG", "Nombre" : "EL COMPAÑERO","Descripcion" : "Si un jugador saca un 8, deberá escoger a otra persona de la mesa para que beba cada vez que él lo hace y viceversa. Esto continuará hasta que alguien saque un 8. Si alguno de los jugadores se olvida de beber cuando lo haga su “compañero”, deberá tomar una bebida adicional como penalización."},
     {"id" : 27, "Imagen" : "8_Negro.JPG", "Nombre" : "EL COMPAÑERO","Descripcion" : "Si un jugador saca un 8, deberá escoger a otra persona de la mesa para que beba cada vez que él lo hace y viceversa. Esto continuará hasta que alguien saque un 8. Si alguno de los jugadores se olvida de beber cuando lo haga su “compañero”, deberá tomar una bebida adicional como penalización."},
     {"id" : 28, "Imagen" : "8_Trevol.JPG", "Nombre" : "EL COMPAÑERO","Descripcion" : "Si un jugador saca un 8, deberá escoger a otra persona de la mesa para que beba cada vez que él lo hace y viceversa. Esto continuará hasta que alguien saque un 8. Si alguno de los jugadores se olvida de beber cuando lo haga su “compañero”, deberá tomar una bebida adicional como penalización."},     
     {"id" : 29, "Imagen" : "9_Brillo.JPG", "Nombre" : "LA RIMA", "Descripcion" : "Deberá elegir una palabra y decirla en voz alta, como por ejemplo “rata”. En sentido horario, cada jugador tendrá que decir una palabra que rime con la original (p.ej. capa, pata, gata, etc.) en menos de 5 segundos. Esto continuará hasta que a un jugador no se le ocurra una palabra que rime con la primera, por lo que deberá beber."},
     {"id" : 30, "Imagen" : "9_Corazon.JPG", "Nombre" : "LA RIMA","Descripcion" : "Deberá elegir una palabra y decirla en voz alta, como por ejemplo “rata”. En sentido horario, cada jugador tendrá que decir una palabra que rime con la original (p.ej. capa, pata, gata, etc.) en menos de 5 segundos. Esto continuará hasta que a un jugador no se le ocurra una palabra que rime con la primera, por lo que deberá beber."},
     {"id" : 31, "Imagen" : "9_Negro.JPG", "Nombre" : "LA RIMA","Descripcion" : "Deberá elegir una palabra y decirla en voz alta, como por ejemplo “rata”. En sentido horario, cada jugador tendrá que decir una palabra que rime con la original (p.ej. capa, pata, gata, etc.) en menos de 5 segundos. Esto continuará hasta que a un jugador no se le ocurra una palabra que rime con la primera, por lo que deberá beber."},
     {"id" : 32, "Imagen" : "9_Trevol.JPG", "Nombre" : "LA RIMA","Descripcion" : "Deberá elegir una palabra y decirla en voz alta, como por ejemplo “rata”. En sentido horario, cada jugador tendrá que decir una palabra que rime con la original (p.ej. capa, pata, gata, etc.) en menos de 5 segundos. Esto continuará hasta que a un jugador no se le ocurra una palabra que rime con la primera, por lo que deberá beber."},     
     {"id" : 33, "Imagen" : "10_Brillo.JPG", "Nombre" : "YO NUNCA HE...", "Descripcion" : "todos en la mesa deberán comenzar con tres dedos levantados. Comenzando por la persona que sacó la carta, cada jugador deberá empezar una oración con “Yo nunca he…” y completarla con algo que nunca haya hecho. Si los demás jugadores en la mesa sí han hecho esa cosa en particular, tendrán que bajar un dedo. Este proceso continuará por toda la mesa hasta que el primer jugador o jugadores que ya no tengan ningún dedo levantado se vean obligados a beber."},
     {"id" : 34, "Imagen" : "10_Corazon.JPG", "Nombre" : "YO NUNCA HE...","Descripcion" : "todos en la mesa deberán comenzar con tres dedos levantados. Comenzando por la persona que sacó la carta, cada jugador deberá empezar una oración con “Yo nunca he…” y completarla con algo que nunca haya hecho. Si los demás jugadores en la mesa sí han hecho esa cosa en particular, tendrán que bajar un dedo. Este proceso continuará por toda la mesa hasta que el primer jugador o jugadores que ya no tengan ningún dedo levantado se vean obligados a beber."},
     {"id" : 35, "Imagen" : "10_Negro.JPG", "Nombre" : "YO NUNCA HE...","Descripcion" : "todos en la mesa deberán comenzar con tres dedos levantados. Comenzando por la persona que sacó la carta, cada jugador deberá empezar una oración con “Yo nunca he…” y completarla con algo que nunca haya hecho. Si los demás jugadores en la mesa sí han hecho esa cosa en particular, tendrán que bajar un dedo. Este proceso continuará por toda la mesa hasta que el primer jugador o jugadores que ya no tengan ningún dedo levantado se vean obligados a beber."},
     {"id" : 36, "Imagen" : "10_Trevol.JPG", "Nombre" : "YO NUNCA HE...","Descripcion" : "todos en la mesa deberán comenzar con tres dedos levantados. Comenzando por la persona que sacó la carta, cada jugador deberá empezar una oración con “Yo nunca he…” y completarla con algo que nunca haya hecho. Si los demás jugadores en la mesa sí han hecho esa cosa en particular, tendrán que bajar un dedo. Este proceso continuará por toda la mesa hasta que el primer jugador o jugadores que ya no tengan ningún dedo levantado se vean obligados a beber."},     
     {"id" : 37, "Imagen" : "j_Brillo.JPG", "Nombre" : "INVENTA UNA REGLA", "Descripcion" : "Podrá inventar una regla que deberá seguirse durante todo el juego. Podría indicar que nadie debe decir alguna grosería, que está prohibido ir al baño o que nadie puede llamar a alguien por su primer nombre. Cualquier jugador que rompa la regla deberá beber a modo de penalización. Sigue leyendo este artículo para conocer algunas ideas populares para las reglas."},
     {"id" : 38, "Imagen" : "J_Corazon.JPG", "Nombre" : "INVENTA UNA REGLA","Descripcion" : "Podrá inventar una regla que deberá seguirse durante todo el juego. Podría indicar que nadie debe decir alguna grosería, que está prohibido ir al baño o que nadie puede llamar a alguien por su primer nombre. Cualquier jugador que rompa la regla deberá beber a modo de penalización. Sigue leyendo este artículo para conocer algunas ideas populares para las reglas."},
     {"id" : 39, "Imagen" : "J_Negro.JPG", "Nombre" : "INVENTA UNA REGLA","Descripcion" : "Podrá inventar una regla que deberá seguirse durante todo el juego. Podría indicar que nadie debe decir alguna grosería, que está prohibido ir al baño o que nadie puede llamar a alguien por su primer nombre. Cualquier jugador que rompa la regla deberá beber a modo de penalización. Sigue leyendo este artículo para conocer algunas ideas populares para las reglas."},
     {"id" : 40, "Imagen" : "J_Trevol.JPG", "Nombre" : "INVENTA UNA REGLA","Descripcion" : "Podrá inventar una regla que deberá seguirse durante todo el juego. Podría indicar que nadie debe decir alguna grosería, que está prohibido ir al baño o que nadie puede llamar a alguien por su primer nombre. Cualquier jugador que rompa la regla deberá beber a modo de penalización. Sigue leyendo este artículo para conocer algunas ideas populares para las reglas."},     
     {"id" : 41, "Imagen" : "Q_Brillo.JPG", "Nombre" : "INTERROGATORIO", "Descripcion" : "Si un jugador saca una reina, se convertirá en el maestro del interrogatorio. Hasta que alguien más saque una reina, todos solo podrán responder a las preguntas de dicho jugador con otra pregunta. Por ejemplo, si Antonio es el maestro del interrogatorio y le pregunta a Juan “¿Qué hora es?”, este solo debería responder “¿Son las dos en punto?”. Si no lo hace de esta manera, deberá tomar una bebida."},
     {"id" : 42, "Imagen" : "Q_Corazon.JPG", "Nombre" : "INTERROGATORIO","Descripcion" : "Si un jugador saca una reina, se convertirá en el maestro del interrogatorio. Hasta que alguien más saque una reina, todos solo podrán responder a las preguntas de dicho jugador con otra pregunta. Por ejemplo, si Antonio es el maestro del interrogatorio y le pregunta a Juan “¿Qué hora es?”, este solo debería responder “¿Son las dos en punto?”. Si no lo hace de esta manera, deberá tomar una bebida."},
     {"id" : 43, "Imagen" : "Q_Negro.JPG", "Nombre" : "INTERROGATORIO","Descripcion" : "Si un jugador saca una reina, se convertirá en el maestro del interrogatorio. Hasta que alguien más saque una reina, todos solo podrán responder a las preguntas de dicho jugador con otra pregunta. Por ejemplo, si Antonio es el maestro del interrogatorio y le pregunta a Juan “¿Qué hora es?”, este solo debería responder “¿Son las dos en punto?”. Si no lo hace de esta manera, deberá tomar una bebida."},
     {"id" : 44, "Imagen" : "Q_Trevol.JPG", "Nombre" : "INTERROGATORIO","Descripcion" : "Si un jugador saca una reina, se convertirá en el maestro del interrogatorio. Hasta que alguien más saque una reina, todos solo podrán responder a las preguntas de dicho jugador con otra pregunta. Por ejemplo, si Antonio es el maestro del interrogatorio y le pregunta a Juan “¿Qué hora es?”, este solo debería responder “¿Son las dos en punto?”. Si no lo hace de esta manera, deberá tomar una bebida."},     
     {"id" : 45, "Imagen" : "K_Brillo.JPG", "Nombre" : "¡KING!", "Descripcion" : "Debe echar su bebida en el vaso ubicado en el centro de la mesa. Cuando un jugador saque el cuarto rey, deberá beber la mezcla del vaso, lo que indicará el final del juego. Si juegas con latas en lugar de vasos, los reyes podrían indicar que tendrás que terminarte tu bebida actual u otra regla."},
     {"id" : 46, "Imagen" : "K_Corazon.JPG", "Nombre" : "¡KING!","Descripcion" : "Debe echar su bebida en el vaso ubicado en el centro de la mesa. Cuando un jugador saque el cuarto rey, deberá beber la mezcla del vaso, lo que indicará el final del juego. Si juegas con latas en lugar de vasos, los reyes podrían indicar que tendrás que terminarte tu bebida actual u otra regla."},
     {"id" : 47, "Imagen" : "K_Negro.JPG", "Nombre" : "¡KING!","Descripcion" : "Debe echar su bebida en el vaso ubicado en el centro de la mesa. Cuando un jugador saque el cuarto rey, deberá beber la mezcla del vaso, lo que indicará el final del juego. Si juegas con latas en lugar de vasos, los reyes podrían indicar que tendrás que terminarte tu bebida actual u otra regla."},
     {"id" : 48, "Imagen" : "K_Trevol.JPG", "Nombre" : "¡KING!","Descripcion" : "Debe echar su bebida en el vaso ubicado en el centro de la mesa. Cuando un jugador saque el cuarto rey, deberá beber la mezcla del vaso, lo que indicará el final del juego. Si juegas con latas en lugar de vasos, los reyes podrían indicar que tendrás que terminarte tu bebida actual u otra regla."},     
     {"id" : 49, "Imagen" : "A_Brillo.JPG", "Nombre" : "CASCADA", "Descripcion" : "Todos los de la mesa deberán tomar su bebida, comienza por el que sacó la carta. Cada jugador solo puede empezar a beber después de que la persona a su derecha haya empezado a hacerlo y solo podría detenerse cuando ella lo haya hecho. Por lo tanto, si te encuentras a la izquierda del jugador que sacó la carta, no puedes dejar de beber hasta que todos en la mesa lo hayan hecho."},
     {"id" : 50, "Imagen" : "A_Corazon.JPG", "Nombre" : "CASCADA","Descripcion" : "Todos los de la mesa deberán tomar su bebida, comienza por el que sacó la carta. Cada jugador solo puede empezar a beber después de que la persona a su derecha haya empezado a hacerlo y solo podría detenerse cuando ella lo haya hecho. Por lo tanto, si te encuentras a la izquierda del jugador que sacó la carta, no puedes dejar de beber hasta que todos en la mesa lo hayan hecho."},
     {"id" : 51, "Imagen" : "A_Negro.JPG", "Nombre" : "CASCADA","Descripcion" : "Todos los de la mesa deberán tomar su bebida, comienza por el que sacó la carta. Cada jugador solo puede empezar a beber después de que la persona a su derecha haya empezado a hacerlo y solo podría detenerse cuando ella lo haya hecho. Por lo tanto, si te encuentras a la izquierda del jugador que sacó la carta, no puedes dejar de beber hasta que todos en la mesa lo hayan hecho."},
     {"id" : 52, "Imagen" : "A_Trevol.JPG", "Nombre" : "CASCADA","Descripcion" : "Todos los de la mesa deberán tomar su bebida, comienza por el que sacó la carta. Cada jugador solo puede empezar a beber después de que la persona a su derecha haya empezado a hacerlo y solo podría detenerse cuando ella lo haya hecho. Por lo tanto, si te encuentras a la izquierda del jugador que sacó la carta, no puedes dejar de beber hasta que todos en la mesa lo hayan hecho."},     
     ];



  



  int counter = -1;
  int kingcounter=0;





  void increase() {
    
    setState(() {
      if (counter<51 )
      counter++;
      
    });
    OnClicked();
    
  }

  void decrease() {
    if (counter> 0 )
      counter--;
       setState(() {});
    OnClicked();
  }

  void reset() {
    kingcounter=0;
    counter = -1;
    kings.clear( ) ;
   
    listaId.shuffle();
    OnClicked2();
    


  }

  void OnClicked(){

    setState(() {
      //------------------------------data--------------
      

      idactual=data[listaId[counter]]["id"];

      if (counter >= 0 ){
            imagenValor=data[listaId[counter]]["Imagen"];
            nombreValor=data[listaId[counter]]["Nombre"];
            descripcionValor=data[listaId[counter]]["Descripcion"];
}
      if (counter ==-1 ){
        imagenValor="Trasera_roja.jpg";
        nombreValor= "Comienza";
        descripcionValor=""; 
}
      //Se establece contadores en caso de que saquen Reyes
      if (idactual ==45 ){
        kings.add(1);
        kingcounter++;        
        }
      if (idactual ==46 ){
        kings.add(2);
        kingcounter++;
}
      if (idactual ==47 ){
        kings.add(3);
        kingcounter++;
}
      if (idactual ==48 ){
        kings.add(4);
        kingcounter++;
}





      


      
    });

  }
  void OnClicked2(){

    setState(() {
      imagenValor="Trasera_roja.jpg";
      nombreValor= "Comienza";
      descripcionValor=""; 
      //------------------------------data--------------


      


      
    });

  }




  @override
  Widget build(BuildContext context) {
    int counterMas=(counter+1).toInt();



    const fontSize30 = TextStyle( fontSize: 30 );
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Bebamos: Juego para beber con amigos'),
        elevation: 0,
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context,"MenuJuegos" );
          }, 
          icon: Icon(Icons.videogame_asset))
        ],
      ),



      


      body: 
      
      
      cuerpoKings(counterMas, fontSize30),
      
      

    

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        resetFn: reset
      ),
      






    );
  }

  Stack cuerpoKings(int counterMas, TextStyle fontSize30) {
    return Stack(
      children: [
        Container(
        decoration: BoxDecoration(
          color: Color(0xFFFDECEF)
    
      ),
      ),

        Center(




          child: Column(


            children: [
              SizedBox(height: 30,),

              



              //-------------------------------Contador de Kings---------------------------------------------------
              Row(
                children: [


                  Container(
                padding: const EdgeInsets.all(20),


              ),
                  Text("Kings sacados ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color:Colors.black),),
                  Text("$kingcounter   ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color:Colors.black),),
                  Text("                            "),
                  if (kings.contains(1) )
                  ImagenesKings(imagenValor: "K_Brillo.JPG"),
                  if (kings.contains(2) )
                  ImagenesKings(imagenValor: "K_Corazon.JPG"),    
                  if (kings.contains(3) )
                  ImagenesKings(imagenValor: "K_Negro.JPG"),           
                  if (kings.contains(4) )
                  ImagenesKings(imagenValor: "K_Trevol.JPG"),    

                ],
              ),

              SizedBox(height: 30,),




              Text("$nombreValor", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color:Colors.black),),
          
              SizedBox(height: 30,),
              Row(
              children: [
                

            //Al crear el expanded le dices con el flatbutton que pertenece al objeto en cuestion 
                Expanded(
            
                child:  FlatButton(
                onPressed: (){
                  increase();

                }, 
                

                child: 
                ClipRRect(
                 borderRadius: BorderRadius.circular(8.0),
                     child:
                
                Image.asset("assets/$imagenValor",height: 250,))
                ))

          ],),







              //----------------------------------------------------------------------------------------
          SizedBox(height: 30,),


//-------------------------Descripcion-----------------------------------
          
          Container(
            margin: EdgeInsets.symmetric(horizontal:30),
            child: Text("$descripcionValor",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color:Colors.black),)),
          SizedBox(height: 30,),

//-------------------------Cartas-----------------------------------
              Text( 'Cartas $counterMas/52', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color:Colors.black) ),
            ],
          ),
        ),
      ],
    );
  }
}

class ImagenesKings extends StatelessWidget {
  const ImagenesKings({
    Key? key,
    required this.imagenValor,
  }) : super(key: key);

  final Object? imagenValor;

  @override
  Widget build(BuildContext context) {
    return new Image(
    image: new AssetImage('assets/$imagenValor'),
    height: 60,
    alignment: Alignment.center);
  }
}



class CustomFloatingActions extends StatelessWidget {

  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingActions({
    Key? key, 
    required this.increaseFn, 
    required this.decreaseFn, 
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool submit = false;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children:  [

        FloatingActionButton(
          child: const Icon( Icons.arrow_left ),
          backgroundColor:Color(0xFFE928A0),
          onPressed: () => decreaseFn(),
        ),
        

        FloatingActionButton(
            child: const Icon( Icons.refresh ),
            backgroundColor:Color(0xFFE928A0),
            onPressed: () {

  

                            
               resetFn();
            },
          ),

        FloatingActionButton(
          child: const Icon( Icons.arrow_right ),
          backgroundColor:Color(0xFFE928A0),
          onPressed: () => increaseFn(),

        ),
      ],
    );
  }
}



List shuffle(List array) {
    var random = Random(); //import 'dart:math';

    // Go through all elementsof list
    for (var i = array.length - 1; i > 0; i--) {

      // Pick a random number according to the lenght of list
      var n = random.nextInt(i + 1);
      var temp = array[i];
      array[i] = array[n];
      array[n] = temp;
    }
    return array;
} 


