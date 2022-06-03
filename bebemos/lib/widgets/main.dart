
import 'package:bebemos/games/Normal_Reto_Resp.dart';
import 'package:bebemos/games/Normal_VerdadReto.dart';
import 'package:bebemos/games/Normal_Verdad_Resp.dart';
import 'package:bebemos/games/QueMemeSoy/QueMeme_Juego.dart';
import 'package:bebemos/games/Verdad_Reto.dart';
import 'package:bebemos/games/kingV3.dart';
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
      initialRoute: "QueMemejuego",
      routes: {
        "home": (_) => Inicio(),
        'Lenguaje': (_) =>LenguajePagina(),
        'Persona': ( _ ) => PersonaPagina(),
        "kingv3": ( _ ) =>KingjuegoV3(),
        "VerdadoReto": ( _ ) =>VerdadoReto(),
        "NoemalVerdadoReto": ( _ ) =>NormalVerdadoReto(),
        "NoemalVerdadoResp": ( _ ) =>NormalVerdadoResp(),
        "NoemalRetoResp": ( _ ) =>NormalRetoResp(),
        "QueMemejuego": ( _ ) =>QueMemejuego(),

      },
      

      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(color: Colors.indigo) 
        )
      
      

    );
    
  }
}