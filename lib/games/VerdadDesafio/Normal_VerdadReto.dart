
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../screens/personaProvider/provider.dart';
import '../BackgroundInstruccionesGeneral.dart';

class NormalVerdadoReto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final listapersonaje=Provider.of<ListProvider>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text(listapersonaje.idioma==0?'¿Verdad o reto?':"Truth or Dare?"),
        elevation: 0,
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context,"MenuJuegos" );
          }, 
          icon: Icon(Icons.videogame_asset))
        ],
      ),
      body: Scaffold(
        body: Stack(
          children: [
            Container(
        decoration: BoxDecoration(
          color: Color(0xff28A5B6),
    
      ),),
            BotonVerdad(),
            BotonDesafio(),


            
            ],),
      ),
    );
}
}

class BotonVerdad extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final listapersonaje=Provider.of<ListProvider>(context);
     final size= MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: size.height*0.2,),


        Padding(
          padding: const EdgeInsets.all(30.0),

          child: SizedBox(
                    width: 500,
            height: 110,
            child: AspectRatio (
              
              aspectRatio: 0.83,
              child: Stack(
                children: [

                  
                  Container(     
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(7,8)


                          )
                        ]
                  ),


                  
                  

                  ),
                  GestureDetector(
                  onTap: () {Navigator.pushNamed(context, "NoemalVerdadoResp");},
                  child: Hero(
                  tag: 1, 
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    
                    
                    child: FadeInImage(
                      alignment: Alignment.center,
                      image: AssetImage(listapersonaje.idioma==0?"assets/Verdad.jpg":"assets/Truth.png"),
                      placeholder: AssetImage("assets/loading.gif")
                      ,
                      
                      ),
                  
                  
                  ),
                  ),

              ),
                  

                  
              ],
              ),
              
              ),
              


          

            

          ),
        ),
      ],
    );





  }




}


class BotonDesafio extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     final size= MediaQuery.of(context).size;
     final listapersonaje=Provider.of<ListProvider>(context);

    return Column(
      children: [
        SizedBox(height: size.height*0.45,),


        Padding(
          padding: const EdgeInsets.all(30.0),

          child: SizedBox(
                    width: 500,
            height: 110,
            child: AspectRatio (
              
              aspectRatio: 0.83,
              child: Stack(
                children: [

                  
                  Container(     
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(7,8)


                          )
                        ]
                  ),


                  
                  

                  ),
                  GestureDetector(
                  onTap: () {Navigator.pushNamed(context, "NoemalRetoResp");},
                  child: Hero(
                  tag: 2, 
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    
                    
                    child: FadeInImage(
                      alignment: Alignment.center,
                      image: AssetImage(listapersonaje.idioma==0?"assets/Desafio.jpg":"assets/Dare.png"),
                      placeholder: AssetImage("assets/loading.gif")
                      ,
                      
                      ),
                  
                  
                  ),
                  ),

              ),
                  

                  
              ],
              ),
              
              ),
              


          

            

          ),
        ),
      ],
    );




  }




}