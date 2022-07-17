
import 'dart:math';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../games/Botella/intrucciones_Botella.dart';
import '../games/QueMemeSoy/QueMeme_Juego.dart';
import '../games/QueMemeSoy/intrucciones_Meme.dart';
import '../games/YoNunca/intrucciones_Nunca.dart';
import '../games/intrucciones_Kings.dart';
import '../games/intrucciones_Verdad.dart';
//import 'package:concentric_transition/concentric_transition.dart';

class Menujuego extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
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
        )
      ,
      body: Scaffold(
        body: Stack(
          children: [
            SplashScreen()

            ],),
      ),

      


    

    );
  }
}


class SplashScreen extends StatefulWidget {

  static const style = TextStyle(
    color: Colors.black,
    fontSize: 30,
    fontWeight: FontWeight.w600,
  );

  const SplashScreen({Key? key,
  
  }) : super(key: key);

  @override
  _SplashScreen createState() => _SplashScreen();
}





class _SplashScreen extends State<SplashScreen> {
  int page = 0;
  late LiquidController liquidController;
  late UpdateType updateType;
  

  @override
  void initState() {
    liquidController = LiquidController();
    super.initState();
  }

  final pages = [
    
    Container(
      color:  Color(0xFFFDECEF),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          GestureDetector(
            onTap: (){
              Get.to(() => InstruccionesKings());

            },
            child: Stack(
              children: [
                Center(
                  child: Lottie.asset(
                    "assets/confetti.json",
                    repeat: false,
                    height: 500,
                    width:400
                    
                    ),
                ),
                Column(
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/Kings.png',
                        fit: BoxFit.cover,
                        height:300,
                        width:300,
                      ),
                    
                    ),
                    SizedBox(height:200),
                  ],
                ),
              Column(
              children: const [
          
                SizedBox(height:400),
          
                Center(
                  child: Text(
                    "Happy Kings ",
                    style: SplashScreen.style,
                  ),
                ),
          
              ],
            ),
          
              
              ],
            ),
          ),

        ],
      ),
    ),





//Navigator.pushNamed(context,"kingv3" );

    Container(
      color: const Color(0xFFF12EA7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
        GestureDetector(
            onTap: (){
              Get.to(() => InstruccionesNunca());

            },
            child: Stack(
              children: [
                Center(
                  child: Lottie.asset(
                    "assets/BackgroundNunca.json",
                    repeat: true,
                    height: 300,
                    width:400
                    
                    ),
                ),
                Column(
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/Nunca.png',
                        fit: BoxFit.cover,
                        height:300,
                        width:300,
                      ),
                    
                    ),
                    SizedBox(height:200),
                  ],
                ),
              Column(
              children:  [
          
                SizedBox(height:330),
                Center(
                  child: Column(
              children:  [
                  Text(
                    "Yo",
                    style: SplashScreen.style,
                  ),
                  Text(
                    "Nunca",
                    style: SplashScreen.style,
                  ),
                  Text(
                    "Nunca",
                    style: SplashScreen.style,
                  ),
              ],
                  ),
                ),
          
              ],
            ),
          
              
              ],
            ),
          ),

        ],
      ),
    ),






    Container(
      color: Color(0xff28A5B6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>
        [
          GestureDetector(
            onTap: (){
              Get.to(() => InstruccionesVerdad());

            },
            child: Stack(
              children: [
                Center(
                  child: Lottie.asset(
                    "assets/BackgroundVerdad.json",
                    repeat: true,
                    height: 300,
                    width:300
                    
                    ),
                ),
                Column(
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/Verdad o reto2.png',
                        fit: BoxFit.cover,
                        height:300,
                        width:300,
                      ),
                    
                    ),
                    SizedBox(height:200),
                  ],
                ),
              Column(
              children:  [
          
                SizedBox(height:330),
                Center(
                  child: Column(
              children:  [
                  Text(
                    "Verdad",
                    style: SplashScreen.style,
                  ),
                  Text(
                    "o",
                    style: SplashScreen.style,
                  ),
                  Text(
                    "¡Reto!",
                    style: SplashScreen.style,
                  ),
              ],
                  ),
                ),
          
              ],
            ),
          
              
              ],
            ),
          ),

        ],


      ),
    ),






    Container(
      color: Color(0xffffffff),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          GestureDetector(
            onTap: (){
              Get.to(() => InstruccionesMeme());

            }
            ,
                

            child: Stack(
              
              children: [

                Column(
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/Meme.png',
                        fit: BoxFit.cover,
                        height:300,
                        width:300,
                      ),
                    
                    ),
                    SizedBox(height:200),
                  ],
                ),
              Column(
              children:  [

                SizedBox(height:330),
                Center(
                  child: Column(
              children:  [
                  Text(
                    "Adivina",
                    style: SplashScreen.style,
                  ),
                  Text(
                    "el",
                    style: SplashScreen.style,
                  ),
                  Text(
                    "MEME",
                    style: SplashScreen.style,
                  ),
              ],
                  ),
                ),

              ],
            ),

              
              ],
            ),
          ),

        ],
      ),
    ),








    Container(
      color: Color(0xff8C755E),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          GestureDetector(
            onTap: (){
              Get.to(() => InstruccionesBotella());
            },
            child: Stack(
              children: [
                Center(
                  child: Lottie.asset(
                    "assets/BackgroundBotella.json",
                    repeat: true,
                    height: 300,
                    width:400
                    
                    ),
                ),
                Column(
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/Botella.png',
                        fit: BoxFit.cover,
                        height:300,
                        width:300,
                      ),
                    
                    ),
                    SizedBox(height:200),
                  ],
                ),
              Column(
              children:  [
          
                SizedBox(height:330),
                Center(
                  child: Column(
              children:  [
                  Text(
                    "Juego",
                    style: SplashScreen.style,
                  ),
                  Text(
                    "de la",
                    style: SplashScreen.style,
                  ),
                  Text(
                    "Botella",
                    style: SplashScreen.style,
                  ),
              ],
                  ),
                ),
          
              ],
            ),
          
              
              ],
            ),
          ),

        ],
      ),
    ),
  ];



  //--------------------------------Paginas---------------------------

  Widget _buildDot(int index) {
    double selectedness = Curves.easeOut.transform(
      max(
        0.0,
        1.0 - ((page) - index).abs(),
      ),
    );
    double zoom = 1.0 + (2.0 - 1.0) * selectedness;
    return SizedBox(
      width: 25.0,
      child: Center(
        child: Material(
          color: Colors.black,
          type: MaterialType.circle,
          child: SizedBox(
            width: 8.0 * zoom,
            height: 8.0 * zoom,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Stack(
            children: <Widget>[
              LiquidSwipe(
                pages: pages,
                slideIconWidget: const Icon(Icons.arrow_back_ios),
                onPageChangeCallback: pageChangeCallback,
                waveType: WaveType.liquidReveal,
                liquidController: liquidController,
                enableSideReveal: true,
                ignoreUserGestureWhileAnimating: true,
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    const Expanded(child: SizedBox()),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List<Widget>.generate(pages.length, _buildDot),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: TextButton(
                    onPressed: () {
                      liquidController.animateToPage(
                          page: pages.length - 1, duration: 700);
                    },
                    child: const Text("Saltar hasta el final",
                        style: TextStyle(color: Colors.black)),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: TextButton(
                    onPressed: () {
                      liquidController.jumpToPage(
                          page: liquidController.currentPage + 1 >
                                  pages.length - 1
                              ? 0
                              : liquidController.currentPage + 1);
                    },
                    child: const Text("Siguiente",
                        style: TextStyle(color: Colors.black)),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  pageChangeCallback(int lpage) {
    setState(() {
      page = lpage;
    });
  }
}