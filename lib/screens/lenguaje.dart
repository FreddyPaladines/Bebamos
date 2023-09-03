import 'package:bebemos/screens/personaProvider/provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LenguajePagina extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundInicio(),
          CuerpoInicio(),
          ListaIdioma(),
    
    
        ],
      ),
    );
  }
}





class BackgroundInicio extends StatelessWidget {
  const BackgroundInicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      
      decoration: BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/FondoColores.png"),
        fit: BoxFit.fill),
    ),
    );
  }
}


class CuerpoInicio extends StatelessWidget {
  const CuerpoInicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return Column(
        children: [
          SizedBox(height: size.height*0.08,),
          
          Center(
            child:Text("Bebamos",
                        style: GoogleFonts.greatVibes(
                          fontSize:90,
                          color: Colors.black,
                          ),
                        ), 
          ),
          SizedBox(height: size.height*0.03,),
          Padding(
              padding:  EdgeInsets.symmetric(horizontal: size.width*0.05),
              child: Container(
                height: size.height * 0.63,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
              ),
            ),

    
    
           
    
          
    
    
    
        ],
        
    

    );
  }
}



class ListaIdioma extends StatefulWidget {
  
  
  const ListaIdioma({Key? key}) : super(key: key);

  @override
  State<ListaIdioma> createState() => _ListaIdiomaState();
}

class _ListaIdiomaState extends State<ListaIdioma> {
  
  int selectIndex=-1;
  @override
  Widget build(BuildContext context) 
  {
    final size= MediaQuery.of(context).size;
    final listapersonaje = Provider.of<ListProvider>(context);
    
    List lenguaje=["Español","English"];
    return Column(
      children: [
        
        Container(height: size.height*0.27,),
        Text(listapersonaje.idioma==0?"Seleccionar idioma:":"Select language:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
         Container(height: size.height*0.05,),
        Wrap(
          direction: Axis.vertical,
          children: List.generate(2, (index) {
            return InkWell(
              child: GestureDetector(
                onTap: (){
                  setState((){
                      selectIndex=index;
                    }); 
                    listapersonaje.idioma=index;
                },
                child: Container(
                  width: size.width*0.8,
                  height: size.height*0.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: selectIndex==index?Color(0xFFE928A0):Colors.white
                  ),
                  margin: EdgeInsets.only(bottom: 10),
                  child: Center(child: Text("${lenguaje[index]}",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: selectIndex==index?Colors.black:Colors.black54),)),
                ),
              ),
            );
          }
          
          ),
        ),
        Container(height: size.height*0.2,),
        Container(
          height: size.height*0.05,
          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.black,
                              backgroundColor: Color(0xFFE928A0), // foreground
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, "Persona");
                            },
                            child: Text(listapersonaje.idioma==0?'Continuar':"Next",style: TextStyle(fontSize: 17,),),
                          ),
        ),


      ],

    );
  }
}
