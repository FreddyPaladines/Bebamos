
import 'package:bebemos/widgets/background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NormalVerdadoReto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff34006d),
        title: Text('Bebamos: Juego para beber con amigos'),
        elevation: 0,
        actions: [
          IconButton(onPressed: (){}, 
          icon: Icon(Icons.add_box))
        ],
      ),
      body: Scaffold(
        body: Stack(
          children: [
            
            Background(),
            
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
    return Column(
      children: [
        SizedBox(height: 100,),


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
                      image: AssetImage("assets/Verdad.jpg"),
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
    return Column(
      children: [
        SizedBox(height: 300,),


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
                      image: AssetImage("assets/Desafio.jpg"),
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