import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:rxdart/rxdart.dart';

import '../../screens/personaProvider/provider.dart';

class ProbabilidadJuego extends StatefulWidget {
  const ProbabilidadJuego({Key? key}) : super(key: key);

  @override
  State<ProbabilidadJuego> createState() => _ProbabilidadJuegoState();
}

class _ProbabilidadJuegoState extends State<ProbabilidadJuego> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          title: Text('Bebamos'),
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "MenuJuegos");
                },
                icon: Icon(Icons.keyboard_return))
          ],
        ),
        body: Stack(
          children: [
            FondoInstrucciones(),
            SpinWheel(),
            

          ],
        ),
      ),
    );
  }
}

class SpinWheel extends StatefulWidget {
  const SpinWheel({Key? key}) : super(key: key);

  @override
  State<SpinWheel> createState() => _SpinWheelState();
}

class _SpinWheelState extends State<SpinWheel> {
  final selected = BehaviorSubject<int>();
  String rewards = "0";
  bool desafioMostrar = false;
  bool mensajeMostrar = false;
  String nombre="Aleatorio";

  List<String> items = [
    "Freddy",
    "Dayanna",
    "Jeimy",
    "Carlos",
    "Alejandro",
    "Carla"
  ];

  List textoDesafio(String nombre, List segNombre){
    List newlist=[];
    newlist = List.from(segNombre);
    newlist.remove(nombre);
    newlist.shuffle();
    List cant=[0,1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48,49,50]
;
    List<String> desafios = [
     "${nombre} has una posición sexual",
    "${nombre} cuenta una historia vergonzosa de alguien de los presentes",
    "${nombre} cuéntanos tu primera vez",
    "Tomen todos los que no cumplen en el mismo mes que ${nombre}",
    "${nombre} toman los del sexo contrario a ti",
    "${newlist[0]} adivina la película favorita de ${nombre} si no toma",
    "${nombre} juega pidra papel o tijera con ${newlist[0]} el que pierde toma",
    "${nombre} creo que ${newlist[0]} tiene sed, dale un shot",
    "${nombre} toma tu pareja o tu casi algo, si no tomas por soltero/a",
    "Duelo de miradas entre ${nombre} y ${newlist[0]}, el que pestañe pierde",
    "${nombre} escribe en el buscador de WhatsApp de ${newlist[0]} una palabra,${newlist[0]} tiene que mostrar los resultado, si no toma",
    "${nombre} eres inmune a tomar por una ronda, tu elijes quien toma por ti",
    "${nombre} elijes la música ahora, si no te dejan toman todos",
    "${nombre} toman todos los que consideres que eran del otro equipo",
    "Toman todos los que tienen más seguidores en Instagram que ${nombre}",
    "${nombre} Escribe una palabra en el estado de Instagram de ${newlist[0]} toma un shot si no se deja",
    "${nombre} dale de tomar a ${newlist[0]} sin usar las manos",
    "${nombre} manda un emoji a tu jefe, si no toma",
    "${nombre} Demuestra un talento oculto que tengas.",
    "¡Rápido ${nombre} eres una vaca, muge!",
    "cuéntanos tu opinión ${nombre}, que significa para ti, ser bueno en la cama.",
    "${nombre} escríbele a tu ex, si no toma dos shots",
    "${nombre} comparte una mentira que hayas dicho que se salió de control.",
    "${nombre} escribe una mímica que ${newlist[0]} hará después",
    "${nombre} dile que es hermosa a ${newlist[0]}",
    "${nombre} azota a ${newlist[0]}, si alguien se niega toma",
    "${nombre} dale 5 vueltas ${newlist[0]}",
    "${nombre} Perrea, ${newlist[0]} ponle la musica con la que perrearas",
    "${nombre} juega toda una ronda agarrado/a de la mano de ${newlist[0]}",
    "${nombre} juega toda una ronda agarrado/a de la botella",
    "${nombre} si tienes un preservativo regálale a ${newlist[0]} puede que tenga suerte",
    "${nombre} crees que ${newlist[0]} tenga talento para ser actor/actriz porno?",
    "${nombre} adivina el color de rompa interior de ${newlist[0]}",
    "${nombre} pon una canción que tú y ${newlist[0]} se sepan, y canteen al grupo",
    "Nadie le puede hablar a ${nombre} por una ronda el que lo hace toma",
    "${nombre} hazle un oral a una botella, ${newlist[0]} califa si lo hiciste bien",
    "${nombre} hazle un oral a una fruta, ${newlist[0]} califa si lo hiciste bien",
    "${nombre} intercambia una prenda con ${newlist[0]}",
    "Háblanos de tu ultima ruptura amorosa ${nombre}, si no tienes toma dos shots",
    "Todos los de la mesa tiene que nombrar a ${nombre} como MI AMOR, si se equivocan toma",
    "${nombre} nombra 5 cosas que harías con un pene",
    "${nombre} carga en peso a ${newlist[0]} si no puede, toma. y si esa persona te carga a ti, tomas el doble",
    "${newlist[0]} tiene que adivinar el superhéroe de ${nombre}, tiene tres intentos",
    "${nombre} juega con los ojos cerrados durante una ronda",
    "Los mayores de edad que ${nombre} tienen que tomar",
    "Los menores de edad que ${nombre} tienen que tomar",
    "Pelea de pulgares entre ${nombre} y ${newlist[0]} el que pierde toma",
    "Todo los de la mesa tienen que adivinar el videojuego favorito de ${nombre}",
    "${nombre} baila la canción que está sonando, puede acompañarte ${newlist[0]}",
    "${nombre} dale el trago que tiene a ${newlist[0]}",
    "${nombre} no puede hablar durante dos rondas"


  ];

  List<String> titulo=[
    "Kamasutra",
"Confidencial",
"Rico ",
"Feliz cumpleaños",
"Igualdad",
"Netflix",
"Duelo a muerte",
"Hace calor",
"El amor",
"Que miras",
"Nada teme",
"Luz al final",
"DJ",
"Del closet",
"Influencer",
"Nada debe",
"Profesionales",
"Aumento",
"Una estrella",
"La granja",
"Fuego",
"Son dos shots",
"Pinocho",
"Sombra",
"Eres preciosa",
"Niña mala",
"Tornado",
"Bailarina ",
"Pegamento",
"Pegamento",
"Protegete ",
"Apoyo",
"calzones",
"Amigos",
"Marginado",
"Talento",
"Talento",
"Cambio",
"Sin llorar",
"Mi amor",
"Sinonimo",
"Fuerza",
"Superheroe",
"Ciego/a",
"Mayores",
"Menores",
"Pulgarcito ",
"Videojuego",
"Sigue",
"Ayudame",
"Silencio"

  ]; 

    List<String> imagen = [
"Neon4.png",
"Neon2.png",
"Neon3.png",
"Neon15.png",
"Neon29.png",
"Neon30.png",
"Neon31.png",
"Neon26.png",
"Neon8.png",
"Neon33.png",
"Neon34.png",
"Neon9.png",
"Neon6.png",
"Neon12.png",
"Neon19.png",
"Neon16.png",
"Neon27.png",
"Neon2.png",
"Neon11.png",
"Neon5.png",
"Neon7.png",
"Neon16.png",
"Neon32.png",
"Neon38.png",
"Neon38.png",
"Neon37.png",
"Neon15.png",
"Neon5.png",
"Neon35.png",
"Neon35.png",
"Neon4.png",
"Neon17.png",
"Neon13.png",
"Neon6.png",
"Neon36.png",
"Neon26.png",
"Neon26.png",
"Neon39.png",
"Neon1.png",
"Neon1.png",
"Neon40.png",
"Neon27.png",
"Neon41.png",
"Neon42.png",
"Neon28.png",
"Neon28.png",
"Neon43.png",
"Neon44.png",
"Neon6.png",
"Neon26.png",
"Neon1.png",
  ];
    cant.shuffle();



    return ["${desafios[cant[0]]}","${imagen[cant[0]]}","${titulo[cant[0]]}"];
   
  }

  @override
  void dispose() {
    selected.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final listapersonaje=Provider.of<ListProvider>(context);

    List datos=textoDesafio(nombre,listapersonaje.listapersonaje);

    return Stack(
      children: [
        Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 300,
                  child: FortuneWheel(
                    indicators: <FortuneIndicator>[
                      FortuneIndicator(
                        alignment: Alignment
                            .topCenter, // <-- changing the position of the indicator
                        child: TriangleIndicator(
                          color: Color(0xFFF436E4), // <-- changing the color of the indicator
                        ),
                      ),
                    ],
                    selected: selected.stream,
                    animateFirst: false,
                    //items

                    items: [
                      for (int i = 0; i < listapersonaje.listapersonaje.length; i++) ...<FortuneItem>{
                        FortuneItem(child: Text(listapersonaje.listapersonaje[i].toString(),style: GoogleFonts.tiltNeon(
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                          ),) ),
                      },
                    ],
                    styleStrategy: UniformStyleStrategy(
                      borderColor: Colors.black,
                      color: Color(0xFFAE00FF),
                      borderWidth: 2
                      ),
                    onAnimationEnd: () {
                      Timer(const Duration(seconds: 1), () {
                        setState(() {
                          desafioMostrar = true;
                          nombre = listapersonaje.listapersonaje[selected.value];
                        });
                      });
                    },
                  ),
                ),
                Container(
                  height: size.height*0.1,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selected.add(Fortune.randomInt(0, items.length));
                    });
                  },
                  child: Container(
                    height: 40,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 204, 0, 255),
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                            color: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(7, 8))
                      ]),
                    child: Center(
                      child: Text("Rodar",style: TextStyle(color: Colors.white,),),
                    


                    ),
                  ),
                ),
              ],
            ),
          ),

        Visibility(
          visible: desafioMostrar,
          child: Stack(
            children: [
              Center(
                child: Container(
                  height: size.height * 0.6,
                  width: size.width * 0.8,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                            image: AssetImage("assets/Intrucciones_fondo_desafio.png"),
                            fit: BoxFit.fill,
                          ),
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(7, 8))
                      ]),
                  child: Column(
                    children: [
                      Container(height: size.height*0.03,),
                      Container(
                        height: size.height * 0.05,
                        width: size.width * 0.6,
                        //${datos[2]}
                        child:Text("${datos[2]}",
                        textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 27,
                                  fontWeight: FontWeight.w600,
                                ),
                        ),
                        
                      ),
                      Container(
                        height: size.height * 0.2,
                        width: size.width * 0.65,
                        child:Text("${datos[0]}",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                ),
                        ),
                        
                      ),
                      Container(
                        height: size.height * 0.20,
                        width: size.width * 0.41,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/${datos[1]}"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              Column(
                children: [
                  Container(
                      height: size.height*0.74,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                                desafioMostrar = false;
                                mensajeMostrar = false;


                              });
                      },
                      child: Container(
                        height: 40,
                        width: 140,
                        child: Center(
                          child: Text("HECHO"),
                        ),
                        decoration: BoxDecoration(
                      color: Color.fromARGB(255, 204, 0, 255),
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(7, 8))
                      ]),
                      ),
                    ),
                ],
              ),





            ],
          ),
        )
      ],
    );
  }
}


class FondoInstrucciones extends StatelessWidget {
  const FondoInstrucciones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/FondoProbabilidad.png",),
        fit: BoxFit.fill,
        )
      ),


    );
  }
}
