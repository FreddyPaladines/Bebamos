/* import 'package:bebemos/widgets/Datos.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';




class Card_swiperPrueba  extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {




    final size= MediaQuery.of(context).size;
    //El size sirve para tomar el tamaño del dispositivo que se use


    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: 
        [
        Container(

          
          
          width: double.infinity,
          height: size.height*0.9,
          child: Swiper(
            itemCount: juegos.length,
            layout: SwiperLayout.STACK,
            itemWidth: size.width*0.6,
            itemHeight: size.height*0.9,
            itemBuilder: (BuildContext context, int index){
              return Column(



                children: 

                    [
                    // Titulo
                    Text(juegos[index].nombre, 
                      style: GoogleFonts.greatVibes(fontSize:60)
                      ),
                    
                    //Imagen

                    GestureDetector(
                      onTap: ()=> Navigator.pushNamed(context, juegos[index].ruta),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: FadeInImage(
                          placeholder: AssetImage("assets/loading.gif"),
                          image: AssetImage("assets/no-image.jpg"),
                          fit:BoxFit.cover,
                      
                          
                          
                        ),
                      ),
                    ),

                    //Descripcion 

                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      child: Text(juegos[index].descripcion),
                      color: Colors.black,
                    )










                  ],
              );
            
            },
            
          ),
        ),
      ],
    );
    
  }
} */