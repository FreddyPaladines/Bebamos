
import 'dart:math';
import 'package:get/get.dart';
import 'package:launch_review/launch_review.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../games/Botella/intrucciones_Botella.dart';

import '../games/Mibarquito/intrucciones_Mibarquito.dart';
import '../games/ProbabilidadHay/intrucciones_probalidad.dart';
import '../games/YoNunca/intrucciones_Nunca.dart';
import '../games/King/intrucciones_Kings.dart';
import '../games/VerdadDesafio/intrucciones_Verdad.dart';
import '../screens/personaProvider/provider.dart';
//import 'package:concentric_transition/concentric_transition.dart';

class Menujuego extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final listapersonaje = Provider.of<ListProvider>(context);
    return Scaffold(

      body: Scaffold(
        body: Stack(
          children: [
            SplashScreen(),
            MessageRateUs(),


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

  final pagesEsp = [
    
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
              Get.to(() => InstruccionesBarquito());

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
                    "Mi barquito",
                    style: SplashScreen.style,
                  ),
                  Text(
                    "viene",
                    style: SplashScreen.style,
                  ),
                  Text(
                    "Cargado de",
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

    Container(
      color: Color.fromARGB(255, 150, 82, 218),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          GestureDetector(
            onTap: (){
              Get.to(() => InstruccionesProbabilidad());
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
                        'assets/Logo_probabilidad.gif',
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
                    "Que",
                    style: SplashScreen.style,
                  ),
                  Text(
                    "Probabilidad",
                    style: SplashScreen.style,
                  ),
                  Text(
                    "Hay",
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



  //Lista en ingles

  final pagesingles = [
    
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
                    "Never",
                    style: SplashScreen.style,
                  ),
                  Text(
                    "Have",
                    style: SplashScreen.style,
                  ),
                  Text(
                    "I ever",
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
                    "Truth ",
                    style: SplashScreen.style,
                  ),
                  Text(
                    "or",
                    style: SplashScreen.style,
                  ),
                  Text(
                    "Dare!",
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
              Get.to(() => InstruccionesBarquito());

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
                    "The",
                    style: SplashScreen.style,
                  ),
                  Text(
                    "Boat",
                    style: SplashScreen.style,
                  ),
                  Text(
                    "Game",
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
                    "Spin",
                    style: SplashScreen.style,
                  ),
                  Text(
                    "the",
                    style: SplashScreen.style,
                  ),
                  Text(
                    "bottle",
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
      color: Color.fromARGB(255, 150, 82, 218),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          GestureDetector(
            onTap: (){
              Get.to(() => InstruccionesProbabilidad());
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
                        'assets/Logo_probabilidad.gif',
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
                    "How",
                    style: SplashScreen.style,
                  ),
                  Text(
                    "Likely",
                    style: SplashScreen.style,
                  ),
                  Text(
                    "is it",
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
    final listapersonaje = Provider.of<ListProvider>(context);
    final pages= listapersonaje.idioma==0? pagesEsp:pagesingles;

                          
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                    child: Text(listapersonaje.idioma==0?"Saltar hasta el final":"skip to the end",
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
                    child: Text(listapersonaje.idioma==0?"Siguiente":"next",
                        style: TextStyle(color: Colors.black)),
                  ),
                ),
              )
            ],
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




class MessageRateUs extends StatefulWidget {
  const MessageRateUs({Key? key}) : super(key: key);

  @override
  State<MessageRateUs> createState() => _MessageRateUsState();
}

class _MessageRateUsState extends State<MessageRateUs> {
  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;

    return Column(
      children: [
        GestureDetector(
          onTap: (){
            LaunchReview.launch(
              androidAppId: "com.freddypaladines98.bebemos"
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height:size.height*0.09,
              width: size.width*0.18,
              decoration: BoxDecoration(
                            color: Colors.white, 
                            borderRadius: BorderRadius.circular(16),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: Offset(2,2)
                  
                  
                              )
                            ]
                            
              ),
              child: Stack(children: [
                Container(
                  alignment: AlignmentDirectional.topCenter,
                  child: Lottie.asset(
                          "assets/StartsRateUs.json",
                          height: size.height*0.65,
                          width:size.width*0.16,
                          repeat: false,
                          
                          ),
                ),
                Column(
                  children: [
                    Container(height: size.height*0.065,),
                    Text("Rated us",style: TextStyle(color: Color(0xFFE4AC07)),),
                  ],
                )
                  
                  
              ],),
                  
                  
               ),
          ),
        ) ],
    );
  }
}