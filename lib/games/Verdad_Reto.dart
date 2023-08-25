
import 'package:bebemos/widgets/background.dart';
import 'package:flutter/material.dart';

class VerdadoReto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff34006d),
        title: Text('Bebamos'),
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
            
            Background(),
            CuerpoVerdadoreto(),

            
            ],),
      ),








    

    );



}



}

class CuerpoVerdadoreto extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    final defaultsize= MediaQuery.of(context).size;


    //El size sirve para tomar el tamaño del dispositivo que se use


    return Column(
      children: 
        [
          Padding(
            padding: EdgeInsets.all(defaultsize.width*0.1),
            child:  Text("data", style: TextStyle(fontSize:16, fontWeight: FontWeight.bold ),)
          ,),


          Categoria(title: "Prueba 1", ruta: 'kingv3',),
          Categoria(title: "Prueba 2", ruta: 'kingv3',),
          Categoria(title: "Prueba 3", ruta: 'kingv3',),

  ]
    );
  }
}








class Categoria extends StatelessWidget {
  const Categoria({
    Key? key,
    required this.title,
    required this.ruta,
  }) : super(key: key);
  final String title;
  final String ruta;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        //width: defaultsize.width*0.8,
        
        width: 500,
        height: 100,
        child: AspectRatio (
          
          aspectRatio: 0.83,
          child: Stack(
            children: [

              
              Container(     
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.black,
              ),
              alignment: Alignment.center,
              child:  Text(title),
              

              ),
              GestureDetector(
                onTap: () {Navigator.pushNamed(context, ruta);}

              ),
              
          ],
          ),
          
          ),
          


      ),
    );
  }
}