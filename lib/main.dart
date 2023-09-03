
import 'package:bebemos/games/Botella/Juego_Botella.dart';
import 'package:bebemos/games/VerdadDesafio/Normal_Reto_Resp.dart';
import 'package:bebemos/games/VerdadDesafio/Normal_VerdadReto.dart';
import 'package:bebemos/games/VerdadDesafio/Normal_Verdad_Resp.dart';
import 'package:bebemos/games/Mibarquito/MiBarquito_Juego.dart';
import 'package:bebemos/games/YoNunca/YoNunca_Principal.dart';
import 'package:bebemos/games/King/kingV3.dart';
import 'package:bebemos/screens/personaProvider/personajes.dart';
import 'package:bebemos/screens/personaProvider/provider.dart';
import 'package:bebemos/widgets/Inicio.dart';
import 'package:bebemos/screens/lenguaje.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'games/Botella/intrucciones_Botella.dart';
import 'games/Mibarquito/intrucciones_Mibarquito.dart';
import 'games/ProbabilidadHay/intrucciones_probalidad.dart';
import 'games/ProbabilidadHay/probabilidad_juego.dart';
import 'games/YoNunca/intrucciones_Nunca.dart';
import 'games/King/intrucciones_Kings.dart';
import 'games/VerdadDesafio/intrucciones_Verdad.dart';
import 'widgets/menu_Juegos.dart';





void main() => runApp(MyApp());
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [ChangeNotifierProvider<ListProvider>(create:(_)=> ListProvider(),child: PersonaPagina(),)],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Bebemos",
        initialRoute: "home",
        home:Inicio(),
        routes: {
          "home": (_) => Inicio(),
          'Lenguaje': (_) =>LenguajePagina(),
          'Persona': ( _ ) => PersonaPagina(),
          "kingv3": ( _ ) =>KingjuegoV3(),
          "NoemalVerdadoReto": ( _ ) =>NormalVerdadoReto(),
          "NoemalVerdadoResp": ( _ ) =>NormalVerdadoResp(),
          "NoemalRetoResp": ( _ ) =>NormalRetoResp(),
          "Barquitojuego": ( _ ) =>Barquitojuego(),
          "YoNuncaPrincipal": ( _ ) =>YoNuncaPrincipal(),
          "JuegoBotella": ( _ ) =>Juego_Botella(),
          "JuegoProbabilidad": ( _ ) =>ProbabilidadJuego(),
          "MenuJuegos": ( _  ) =>Menujuego(),
          "InstruccionesKings": ( _ ) =>InstruccionesKings(),
          "InstruccionesVerdad": ( _ ) =>InstruccionesVerdad(),
          "InstruccionesBotella": ( _ ) =>InstruccionesBotella(),
          "InstruccionesBarquito": ( _ ) =>InstruccionesBarquito(),
          "InstruccionesNunca": ( _ ) =>InstruccionesNunca(),  
          "InstruccionesProbabilidad": ( _ ) =>InstruccionesProbabilidad(), 
          
           
          "PersonaPagina": ( _ ) =>PersonaPagina(), 
          
          
          
          
          
    
    
        },
        
    
        theme: ThemeData.light().copyWith(
          appBarTheme: AppBarTheme(color: Colors.indigo) 
          )
        
        
    
      ),
    );
    
  }
}