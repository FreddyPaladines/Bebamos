import 'package:bebemos/screens/personaProvider/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../games/kingV3.dart';
import '../../widgets/Inicio.dart';
import 'model.dart';

List<int> newListEmojiIn = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9,10,11,12,13,14,15];
List newListEmoji = shuffle(newListEmojiIn);

class PersonaPagina extends StatefulWidget {
  @override
  State<PersonaPagina> createState() => _PersonaPaginaState();
}

class _PersonaPaginaState extends State<PersonaPagina> {
  late GlobalKey<FormState> _formKey;
  late TextEditingController _controller;
  var taskItems;
  int counter = 0;
  int counterImage = 0;
  late DynamicList listClass;
  late DynamicListImage listClassImage;

//data
  final dataEmoji = [
    {"id": 0, "Imagen": "Emoji_1.png"},
    {"id": 1, "Imagen": "Emoji_2.png"},
    {"id": 2, "Imagen": "Emoji_3.png"},
    {"id": 3, "Imagen": "Emoji_4.png"},
    {"id": 4, "Imagen": "Emoji_5.png"},
    {"id": 5, "Imagen": "Emoji_6.png"},
    {"id": 6, "Imagen": "Emoji_7.png"},
    {"id": 7, "Imagen": "Emoji_8.png"},
    {"id": 8, "Imagen": "Emoji_9.png"},
    {"id": 9, "Imagen": "Emoji_10.png"},
    {"id": 10, "Imagen": "Emoji_11.png"},
    {"id": 11, "Imagen": "Emoji_12.png"},
    {"id": 12, "Imagen": "Emoji_13.png"},
    {"id": 13, "Imagen": "Emoji_14.png"},
    {"id": 14, "Imagen": "Emoji_15.png"},
    {"id": 15, "Imagen": "Emoji_16.png"},
  ];
  void shuffleemoji() {
    newListEmoji.shuffle();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _formKey = GlobalKey();
    _controller = TextEditingController();
    taskItems = Provider.of<ListProvider>(context, listen: false);
    listClassImage = DynamicListImage(taskItems.listImage);
    listClass = DynamicList(taskItems.list);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final listapersonaje = Provider.of<ListProvider>(context);
    final _scaffoldKey = GlobalKey<ScaffoldState>();

    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(0xFFFDECEF),
        body: Stack(
          children: [
            BackgroundInicio(),
            BackgroundPersonajes(),
            Container(
              child: Column(
                children: [
                  Container(
                    height: size.height * 0.03,
                  ),
                  Row(
                    children: [
                      Container(
                        width: size.width * 0.02,
                      ),
                      Container(
                        child: Text(
                          listapersonaje.idioma==0?
                          "Añadir jugadores:":"Write the players",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Form(
                      key: _formKey,
                      child: TextFormField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          filled: true, //<-- SEE
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(10),
                            borderSide: new BorderSide(color: Colors.white),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 2.0,
                            ),
                          ),
                        ),
                        controller: _controller,
                        onSaved: (val) {
                          taskItems.addItemImage(
                              dataEmoji[newListEmoji[counterImage]]["Imagen"]
                                  .toString());
                          taskItems.addItem(val);
                          counterImage++;
                          //taskItems.addItemImage(dataEmoji[newListEmoji[counter]]["Imagen"].toString());
                        },
                        validator: (val) {
                          if (counterImage > 9) {
                            return listapersonaje.idioma==0?
                          "Cantidad máxima":"Maximum players";
                          } else if (val!.length > 0) {
                            return null;
                          } else
                           return listapersonaje.idioma==0?
                          "Añade mínimo dos jugadores":"Add minimum two players";
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: Color(0xFFE928A0), // foreground
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          _controller.clear();
                        }
                      },
                      child: Text(listapersonaje.idioma==0?
                          "Agregar":"Add players"),
                    ),
                  ),
                  Container(
                    height: size.height * 0.05,
                  ),
                  Consumer<ListProvider>(
                      builder: (context, provider, listTile) {
                    return Container(
                      height: size.height * 0.6,
                      child: ListView.builder(
                        itemCount: listClass.list.length,
                        itemBuilder: buildList,
                      ),
                    );
                  }),
                  Container(
                    height: size.height * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Color(0xFFE928A0), // foreground
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, "MenuJuegos");
                          
                          },
                          child: Text(listapersonaje.idioma==0?
                          "Omitir":"Skip"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.black,
                            backgroundColor: Color(0xFFE928A0), // foreground
                          ),
                          onPressed: () {
                            if (listapersonaje.list.length>1) {
                              Navigator.pushNamed(context, "MenuJuegos");
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                backgroundColor: Color(0xFFE928A0),
                                content: Text(listapersonaje.idioma==0?
                          "Agregar al menos dos jugador":"Add at least two player",style: TextStyle(color: Colors.black87),),
                                duration: const Duration(seconds: 3),
                                
                              ));
                            }
                          },
                          child: Text(listapersonaje.idioma==0?
                          "Ir a jugar":"Go to play"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  Widget buildList(BuildContext context, int index) {
    counter++;
    return Dismissible(
        key: Key(counter.toString()),
        direction: DismissDirection.startToEnd,
        onDismissed: (direction) {
          taskItems.deleteItem(index);
          counterImage--;
        },
        child: Container(
          margin: EdgeInsets.all(10),
          child: ListTile(
            title: Text(
              listClass.list[index].toString(),
              style: GoogleFonts.caveat(
                fontSize: 25,
                color: Colors.black,
              ),
            ),
            trailing: Icon(Icons.keyboard_arrow_right),
            leading: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: 44,
                minHeight: 44,
                maxWidth: 64,
                maxHeight: 64,
              ),
              child: Image.asset(
                  "assets/${listClassImage.listImage[index].toString()}",
                  fit: BoxFit.cover).animate().shake(duration: 1.seconds),
            ),
          ),
        ));
  }
}

class BackgroundPersonajes extends StatelessWidget {
  const BackgroundPersonajes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listapersonaje = Provider.of<ListProvider>(context);
    final size = MediaQuery.of(context).size;
    return Container(
      child: Column(children: [
        Container(
          height: size.height * 0.2,
        ),
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                height: size.height * 0.65,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Center(
                  child: Container(
                child: Text(
                  listapersonaje.idioma==0?
                          "JUGADORES":"PLAYERS",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              )),
            ),
          ],
        )
      ]),
    );
  }
}
