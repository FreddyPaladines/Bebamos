import 'package:bebemos/games/king.dart';
import 'package:bebemos/screens/Inicio.dart';
import 'package:bebemos/screens/lenguaje.dart';
import 'package:bebemos/screens/personas.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Bebemos",
      initialRoute: "king",
      routes: {
        "home": (_) => Inicio(),
        'Lenguaje': (_) =>LenguajePagina(),
        'Persona': ( _ ) => PersonaPagina(),
        "king": ( _ ) => Kingjuego(),
      },
      

      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(color: Colors.indigo) 
        )
      
      

    );
    
  }
}