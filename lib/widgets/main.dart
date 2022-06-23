
import 'package:bebemos/games/Botella/Juego_Botella.dart';
import 'package:bebemos/games/Normal_Reto_Resp.dart';
import 'package:bebemos/games/Normal_VerdadReto.dart';
import 'package:bebemos/games/Normal_Verdad_Resp.dart';
import 'package:bebemos/games/QueMemeSoy/QueMeme_Juego.dart';
import 'package:bebemos/games/Verdad_Reto.dart';
import 'package:bebemos/games/YoNunca/YoNunca_Principal.dart';
import 'package:bebemos/games/kingV3.dart';
import 'package:bebemos/widgets/Inicio.dart';
import 'package:bebemos/screens/lenguaje.dart';
import 'package:bebemos/screens/personas.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'menu_Juegos.dart';





void main() => runApp(MyApp());
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Bebemos",
      initialRoute: "home",
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
        "YoNuncaPrincipal": ( _ ) =>YoNuncaPrincipal(),
        "JuegoBotella": ( _ ) =>Juego_Botella(),
        "MenuJuegos": ( _ ) =>Menujuego(),
        
        
        


      },
      

      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(color: Colors.indigo) 
        )
      
      

    );
    
  }
}