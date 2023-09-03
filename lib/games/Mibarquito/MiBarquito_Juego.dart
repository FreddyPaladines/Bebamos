import 'package:flutter/material.dart';
import 'package:swipe_cards/swipe_cards.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../screens/personaProvider/provider.dart';


class Barquitojuego extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final listapersonaje = Provider.of<ListProvider>(context);
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          title: Text(listapersonaje.idioma==0?'Barquito':"little boat"),
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, "MenuJuegos");
                },
                icon: Icon(Icons.videogame_asset))
          ],
        ),
        body: Stack(
          children: [
            FondoInstrucciones(),
            Column(
              children: [
                Container(height: MediaQuery.of(context).size.height * 0.05),
                Padding(
                  padding: const EdgeInsets.only(left:20,right: 10),
                  child: Container(
                    child: Text(
                      listapersonaje.idioma==0?"Mi barquito viene cargado de:":"The Ship Comes Loaded",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.amaticSc(
                        fontWeight: FontWeight.bold,
                          fontSize:50,
                          color: Colors.black,
                          ),
                    ),
                    height: MediaQuery.of(context).size.height * 0.15,
                  ),
                ),
                Container(height: MediaQuery.of(context).size.height * 0.05),
                MyHomePage(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



class Content {
  final String? texto;
   final String? text;
  final String? image;
  final Color? color;

  Content({this.texto,this.text, this.color, this.image});
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<SwipeItem> _swipeItems = <SwipeItem>[];
  MatchEngine? _matchEngine;
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  List<String> _nombres = [
    "Marcas de carros",
    "Vegetales",
    "Paises",
    "Ciudades",
    "Animales de granja",
    "Marcas de maquillajes",
    "Animales marinos",
    "Aves",
    "Reptiles",
    "Marca de condones",
    "Videojuegos",
    "Peliculas",
    "Series de televisión",
    "Cafeterias",
    "Animes",
    "Paginas porno",
    "Titulos de libros",
    "Posiciones sexuales",
    "Insectos",
    "Pokemons",
    "Superheroes de DC",
    "Superheroes de Marvel",
    "Cantantes POP",
    "Actores o Actrices con Oscars",
    "Redes sociales",
    "Deportes",
    "Equipos de futbol",
    "Bebidas alcohólica",
    "Sinonimo de Pene",
    "Tipo de flores",
    "Profesiones",
    "Nombre de cientificos/as famosos",
  ];
  List<String> _names = [
       "Car Brands",
       "Vegetables",
       "Countries",
       "Cities",
       "Farm animals",
       "makeup brands",
       "Marine animals",
       "Birds",
       "reptiles",
       "Brand of condoms",
       "Videogame",
       "Films",
       "TV series",
       "Coffee shops",
       "anime",
       "porn pages",
       "Book Titles",
       "Sex Positions",
       "insects",
       "Pokemon",
       "DC Superheroes",
       "Marvel Superheroes",
       "Pop Singers",
       "Actors or Actresses with Oscars",
       "Social networks",
       "Sports",
       "Football teams",
       "alcoholic beverages",
       "synonymous with penis",
       "kind of flowers",
       "Professions",
       "Name of famous scientists",
  ];
  List<String> _image = [
    "Barquito_1.png",
    "Barquito_2.png",
    "Barquito_3.png",
    "Barquito_4.png",
    "Barquito_5.png",
    "Barquito_6.png",
    "Barquito_7.png",
    "Barquito_8.png",
    "Barquito_9.png",
    "Barquito_10.png",
    "Barquito_11.png",
    "Barquito_12.png",
    "Barquito_13.png",
    "Barquito_14.png",
    "Barquito_15.png",
    "Barquito_16.png",
    "Barquito_17.png",
    "Barquito_18.png",
    "Barquito_19.png",
    "Barquito_20.png",
    "Barquito_21.png",
    "Barquito_22.png",
    "Barquito_23.png",
    "Barquito_24.png",
    "Barquito_25.png",
    "Barquito_26.png",
    "Barquito_27.png",
    "Barquito_28.png",
    "Barquito_29.png",
    "Barquito_30.png",
    "Barquito_31.png",
    "Barquito_32.png",
  ];

  
  List<int> _indice = [
    0,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
    25,
    26,
    27,
    28,
    29,
    30,
    31
  ];

  @override
  void initState() {
    _indice.shuffle();
    for (int i in _indice) {
      if (i == 0) {}
      _swipeItems.add(SwipeItem(
        content: Content(texto: _nombres[i], image: _image[i],text: _names[i]),
      ));
    }

    _matchEngine = MatchEngine(swipeItems: _swipeItems);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final listapersonaje = Provider.of<ListProvider>(context);
    return Container(
        child: Stack(children: [
      Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.5,
          width: MediaQuery.of(context).size.width * 0.8,
          child: SwipeCards(
            matchEngine: _matchEngine!,
            itemBuilder: (BuildContext context, int index) {
              return Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),

                            //                 <--- border radius here
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54,
                              blurRadius: 4,
                              offset: Offset(8, 12), // Shadow position
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/${_swipeItems[index].content.image}',
                            height: MediaQuery.of(context).size.height * 0.4,
                            width: MediaQuery.of(context).size.width * 0.8,
                          ),
                          Expanded(
                            child: FittedBox(
                              child: Text(listapersonaje.idioma==0?_swipeItems[index].content.texto:_swipeItems[index].content.text,
                                style: GoogleFonts.amaticSc(
                        fontWeight: FontWeight.bold,
                          fontSize:50,
                          color: Colors.black,
                          ),
                                softWrap: false,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
            onStackFinished: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Stack Finished"),
                duration: Duration(milliseconds: 500),
              ));
            },
            itemChanged: (SwipeItem item, int index) {
              print("item: ${item.content.text}, index: $index");
            },
            leftSwipeAllowed: true,
            rightSwipeAllowed: true,
            upSwipeAllowed: true,
            fillSpace: false,
          ),
        ),
      ),
    ]));
  }
}



class FondoInstrucciones extends StatelessWidget {
  const FondoInstrucciones({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/FondoBarquito.png",),
        fit: BoxFit.fill,
        )
      ),


    );
  }
}