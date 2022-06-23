import 'dart:core';

class JuegosCarta {
  final int position;
  final String nombre;
  final String descripcion;
  final String imaganes;
  final String ruta;

  JuegosCarta (
    this.position, {
    required this.nombre,
    required this.descripcion,
    required this.imaganes, 
    required this.ruta, 

    });
}

List<JuegosCarta> juegos = [
  JuegosCarta(1,
  nombre: "Kings",
  descripcion: "Mientras el Tercer Reich se derrumba a su alrededor, la secretaria de Adolfo Hitler presencia los últimos diez días de la vida del dictador nazi.",
  imaganes:  "assets/AS_Trevol.JPG",
  ruta: "kingv3",


  ),
  JuegosCarta(2,
  nombre: "Sabe todo",
  descripcion: "Política : la caída de Bucaram y el incierto camino de la reforma política (Coyuntura). En: Ecuador Debate. Globalización: Realidades y Falacia",
  imaganes:  "assets/AS_Trevol.JPG",
  ruta: "",

  ),
  JuegosCarta(3,
  nombre: "Loco",
  descripcion: "La Caida. Albert Camus. Página 2 de 45 obra maestra. Pues bien, yo estuve presente cuando el amo de este lugar lo recibió y luego cuando lo cedió.",
  imaganes: "assets/AS_Trevol.JPG",
  ruta: "",
  

  ),
  

  

];



class JuegosYoNunca {
  final int position;

  final String descripcion;
  final String imaganes;
  final String ruta;

  JuegosYoNunca (
    this.position, {

    required this.descripcion,
    required this.imaganes, 
    required this.ruta, 

    });
}

List<JuegosYoNunca> juegosYoNunca = [
  JuegosYoNunca(1,

  descripcion: "1 Yo nunca he trabajado borracho.",
  imaganes:  "assets/AS_Trevol.JPG",
  ruta: "kingv3",


  ),
  JuegosYoNunca(2,

  descripcion: "2 Yo nunca he dicho que me gustaba mucho un regalo y luego lo he devuelto.",
  imaganes:  "assets/2_Corazon.JPG",
  ruta: "",

  ),

  JuegosYoNunca(3,

  descripcion: "3 Yo nunca he hecho o recibido un baile erótico.",
  imaganes: "assets/3_Corazon.JPG",
  ruta: "",
  
  

  ),

  JuegosYoNunca(4,

  descripcion: "4 Yo nunca he borrado una foto de una red social por no gustarme cómo salgo.",
  imaganes: "assets/4_Corazon.JPG",
  ruta: "",
  
  

  ),

  JuegosYoNunca(5,

  descripcion: "5 Yo nunca pensé que soy la persona más bella de este grupo.",
  imaganes: "assets/5_Corazon.JPG",
  ruta: "",
  
  

  ),

  

];




class JuegosBotella {
  final int position;

  final String descripcion;


  JuegosBotella (
    this.position, {

    required this.descripcion,

    });
}



List<JuegosBotella> juegosBotella = [
  JuegosBotella(1,

  descripcion: "Besa en la mejilla, si no toma un shot",


  ),
  JuegosBotella(2,

  descripcion: "Un pico en la boca, si no toma dos shots",

  ),

  JuegosBotella(3,

  descripcion: "Hazle un baile erótico, si no toma dos shots.",


  ),

  JuegosBotella(4,

  descripcion: "Lamele",

  

  ),

  JuegosBotella(5,

  descripcion: "5 Yo nunca pensé que soy la persona más bella de este grupo.",


  ),

  

];