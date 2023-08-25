

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';


class BackgroundgeneralInstru extends StatelessWidget {
  
  const BackgroundgeneralInstru({
    Key? key,
    required this.colorfondo,
    required this.imagen1,
    required this.imagen2
    }) : super(key: key);
    final Color colorfondo;
    final String imagen1;
    final String imagen2;

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return Stack(
      children: [
      Container(
        decoration: BoxDecoration(
          color: colorfondo
    
      ),
      ),
      Column(
        children: [
          SizedBox(height:size.height*0.05),
          Row(
            children: [
              SizedBox(width:size.width*0.7),


              Image.asset(
                            imagen1,
                            fit: BoxFit.cover,
                            height:200,
                            width:200,
                          ),
            ],
          ),
          SizedBox(height:size.height*0.45),

          Row(
            children: [
              SizedBox(width:size.width*0.05),
              Image.asset(
                            imagen2,
                            fit: BoxFit.cover,
                            height:150,
                            width:150,
                          ),
            ],
          ),



        ],
      )


    ]);
  }
}




class CuerpoInstruccionesGeneral extends StatelessWidget {
  const CuerpoInstruccionesGeneral({
    Key? key,
    required this.cuerpoInstricciones, 
    required this.imagenInstrucciones,
    required this.colorBotones,
    required this.rutapagina,
    required this.size
  }) : super(key: key);
  final String cuerpoInstricciones;
  final String imagenInstrucciones;
  final String rutapagina;
  final Color colorBotones;

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height:size.height*0.009),
        Padding(
          padding: EdgeInsets.all(12),
          child: Text ("INSTRUCCIONES", 
          style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.w600,
          ),

        
        
          )
          
          
          ),
        Padding(
        padding: EdgeInsets.all(10),
        child: Text (cuerpoInstricciones, 
          style: TextStyle(
                color: Colors.black,
                fontSize:20,
                fontWeight: FontWeight.w600,
          ),             
          )
        ),
        SizedBox(height:size.height*0.05),

        Container(
          child: Image.asset(
                imagenInstrucciones,
                fit: BoxFit.cover,
                height:size.height*0.28,
                width:size.width*0.55,
              ),
        ).animate().shimmer(delay: 400.ms, duration: 1800.ms),



        SizedBox(height:size.height*0.03),

            Container(
              margin: EdgeInsets.symmetric(horizontal: size.width*0.1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

              children: [
                



                   
/*                       onPressed: (){
                    Navigator.pushNamed(context,"MenuJuegos" );
                  },              */





                ElevatedButton(
                  
                  
                  child: Text("Comenzar",style: TextStyle(
                        color: Colors.black,
                        fontSize:20,
                        fontWeight: FontWeight.w600,)),
                  onPressed: (){
                    Navigator.pushNamed(context, rutapagina);
                  }, 
                   style: ElevatedButton.styleFrom(
                   primary: colorBotones,
                   padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                   textStyle: TextStyle(
                   fontSize: 30,
                   fontWeight: FontWeight.bold),
                   shadowColor: Colors.black ),
                   ),




              ],
          ),
            ),



      ],
//ok



    );
  }
}
