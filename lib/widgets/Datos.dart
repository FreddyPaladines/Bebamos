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

  descripcion: "Yo nunca he trabajado borracho.",
  imaganes:  "assets/YoNunca/Borracho.png",
  ruta: "",


  ),
  JuegosYoNunca(2,

  descripcion: "Yo nunca he dicho que me gustaba mucho un regalo y luego lo he devuelto.",
  imaganes: "assets/YoNunca/Regalo.png",
  ruta: "",

  ),

  JuegosYoNunca(3,

  descripcion: "Yo nunca he hecho o recibido un baile erótico.",
  imaganes: "assets/YoNunca/Baile_Mujer.png",
  ruta: "",
  
  

  ),

  JuegosYoNunca(4,

  descripcion: "Yo nunca he borrado una foto de una red social por no gustarme cómo salgo.",
  imaganes: "assets/YoNunca/NoMegusta.png",
  ruta: "",
  
  

  ),

  JuegosYoNunca(5,

  descripcion: "Yo nunca pensé que soy la persona más bella de este grupo.",
  imaganes: "assets/YoNunca/Belleza.png",
  ruta: "",
  
  

  ),
    JuegosYoNunca(6,

  descripcion: "Yo nunca he estado con un extraño.",
  imaganes: "assets/YoNunca/1_Extrano.png",
  ruta: "",
  
  

  ),

  JuegosYoNunca(7,

  descripcion: "Yo nunca he consumido drogas.",
  imaganes: "assets/YoNunca/2_Droga.png",
  ruta: "",
  
  

  ),

  JuegosYoNunca(8,

  descripcion: "Yo nunca envié una mensaje fuerte o descarado a la persona equivocada.",
  imaganes: "assets/YoNunca/3_Mensaje.png",
  ruta: "",
  
  

  ),

  JuegosYoNunca(9,

  descripcion: "Yo nunca he estado esposado (por cualquier motivo).",
  imaganes: "assets/YoNunca/4_Esposa.png",
  ruta: "",
  
  

  ),

  JuegosYoNunca(10,

  descripcion: "Yo nunca he olido mi propia ropa interior para ver si está limpia o sucia.",
  imaganes: "assets/YoNunca/5_RopaInterior.png",
  ruta: "",
  
  

  ),

  JuegosYoNunca(11,

  descripcion: "Yo nunca he robado nada en una tienda.",
  imaganes: "assets/YoNunca/6_Robar.png",
  ruta: "",
  
  

  ),

  JuegosYoNunca(12,

  descripcion: "Yo nunca he jugado a Stranger Things con las luces de casa o las del árbol de Navidad.",
  imaganes: "assets/YoNunca/7_Stranger.png",
  ruta: "",
  
  

  ),

  JuegosYoNunca(13,

  descripcion: "Yo nunca he hecho un spoiler de Juego de Tronos, sin querer o a propósito.",
  imaganes: "assets/YoNunca/8_Tronos.png",
  ruta: "",
  
  

  ),

  JuegosYoNunca(14,

  descripcion: "Yo nunca he mentido a mis amigos.",
  imaganes: "assets/YoNunca/9_Mentir.png",
  ruta: "",
  
  

  ),
  JuegosYoNunca(15,

  descripcion: "Yo nunca he entrado a una fiesta sin estar invitado.",
  imaganes: "assets/YoNunca/10_Fiesta.png",
  ruta: "",
  
  

  ),

  JuegosYoNunca(16,

  descripcion: "Yo nunca he recibido una bofetada en público.",
  imaganes: "assets/YoNunca/11_Cachetada.png",
  ruta: "",
  
  

  ),

  JuegosYoNunca(17,

  descripcion: "Yo nunca he escuchado reggaetón en sesión privada en Spotify para que nadie me descurbiera.",
  imaganes: "assets/YoNunca/12_Spotify.png",
  ruta: "",
  
  

  ),

  JuegosYoNunca(18,

  descripcion: "Yo nunca he dicho el nombre equivocado durante las relaciones sexuales.",
  imaganes: "assets/YoNunca/13_Oops.png",
  ruta: "",
  
  

  ),

  JuegosYoNunca(19,

  descripcion: "Yo nunca he estado con nadie de mi familia.",
  imaganes: "assets/YoNunca/14_Family.png",
  ruta: "",
  
  

  ),

  JuegosYoNunca(20,

  descripcion: "Yo nunca envié un mensaje caliente a un número equivocado.",
  imaganes: "assets/YoNunca/15_Celular.png",
  ruta: "",
  
  

  ),

  JuegosYoNunca(21,

  descripcion: "Yo nunca he tenido relaciones sexuales con alguien que me doblaba la edad.",
  imaganes: "assets/YoNunca/16_Abuela.png",
  ruta: "",
  
  

  ),

  JuegosYoNunca(22,

  descripcion: "Yo nunca pensé que podría tener una ETS.",
  imaganes: "assets/YoNunca/17_Virus.png",
  ruta: "",
  
  

  ),
  JuegosYoNunca(23,

  descripcion: "Yo nunca he usado un objeto común como juguete sexual y lo he devuelto a su sitio.",
  imaganes: "assets/YoNunca/18_dildo.png",
  ruta: "",
  
  

  ),

  JuegosYoNunca(24,

  descripcion: "Yo nunca he hecho un trío.",
  imaganes: "assets/YoNunca/19_Trio.png",
  ruta: "",
  
  

  ),

  JuegosYoNunca(25,

  descripcion: "Yo nunca he tenido sexo más de 5 veces en una noche.",
  imaganes: "assets/YoNunca/20_Conejo.png",
  ruta: "",
  
  

  ),

  JuegosYoNunca(26,

  descripcion: "Yo nunca quise tener relaciones con una persona del mismo sexo.",
  imaganes: "assets/YoNunca/19_Trio.png",
  ruta: "",
  
  

  ),
  JuegosYoNunca(27,

  descripcion: "Yo nunca me he masturbado al aire libre.",
  imaganes: "assets/YoNunca/21_Libertad.png",
  ruta: "",
  
  

  ),

  JuegosYoNunca(28,

  descripcion: "Yo nunca me he exhibido por webcam.",
  imaganes: "assets/YoNunca/22_Camara.png",
  ruta: "",
  
  

  ),

  JuegosYoNunca(29,

  descripcion: "Yo nunca he sido infiel.",
  imaganes: "assets/YoNunca/23_Infidelidad.png",
  ruta: "",
  
  

  ),

  JuegosYoNunca(30,

  descripcion: "Yo nunca nadé desnudo.",
  imaganes: "assets/YoNunca/24_Nadar.png",
  ruta: "",
  
  

  ),
  JuegosYoNunca(31,

  descripcion: "Yo nunca me he liado con el ex de un/a amigo/a.",
  imaganes: "assets/YoNunca/25_Amigos.png",
  ruta: "",
  
  

  ),

  JuegosYoNunca(32,

  descripcion: "Yo nunca he vuelto con mi expareja.",
  imaganes: "assets/YoNunca/26_Aceptar.png",
  ruta: "",
  
  

  ),

  JuegosYoNunca(33,

  descripcion: "Yo nunca he estado con alguien este grupo.",
  imaganes: "assets/YoNunca/27_Ojitos.png",
  ruta: "",
  
  

  ),

  JuegosYoNunca(34,

  descripcion: "Yo nunca he tenido sexo con alguien este grupo.",
  imaganes: "assets/YoNunca/27_Ojitos.png",
  ruta: "",
  
  

  ),

  JuegosYoNunca(35,

  descripcion: "Yo nunca me he metido en una pelea a puñetazos",
  imaganes: "assets/YoNunca/28_Golpe.png",
  ruta: "",
  
  

  ),


  JuegosYoNunca(36,

  descripcion: "Yo nunca he llorado durante una película de Pixar",
  imaganes: "assets/YoNunca/29_Pixar.png",
  ruta: "",
  
  

  ),


  JuegosYoNunca(37,

  descripcion: "Yo nunca me he vestido como del sexo opuesto",
  imaganes: "assets/YoNunca/30_Ropa.png",
  ruta: "",
  
  

  ),


  JuegosYoNunca(38,

  descripcion: "Yo nunca he fingido tener novio o novia",
  imaganes: "assets/YoNunca/31_Novios.png",
  ruta: "",
  
  

  ),


  JuegosYoNunca(39,

  descripcion: "Yo nunca he llorado en el baño de la escuela, colegio o universidad",
  imaganes: "assets/YoNunca/32_CorazonRoto.png",
  ruta: "",
  
  

  ),


  JuegosYoNunca(40,

  descripcion: "Nunca jamás he dudado de mi orientación sexual",
  imaganes: "assets/YoNunca/33_Dudar.png",
  ruta: "",
  
  

  ),





  

  

];




class JuegosBotella {
  final int position;

  final String descripcion;
  final String imagen;


  JuegosBotella (
    this.position, {

    required this.descripcion,
    required this.imagen,

    });
}



List<JuegosBotella> juegosBotella = [
  JuegosBotella(1,
  descripcion: "Besa en la mejilla, si no toma un shot",
  imagen:"assets/Shot1.png",),
  JuegosBotella(2,
  descripcion: "Un pico en la boca, si no toma dos shots",
  imagen:"assets/Shot2.png",),
  JuegosBotella(3,
  descripcion: "Hazle un baile erótico, si no toma dos shots.",
  imagen:"assets/Shot3.png",),
  JuegosBotella(4,
  descripcion: "Lamele",
  imagen:"assets/Shot1.png",),
  JuegosBotella(5,
  descripcion: "Yo nunca pensé que soy la persona más bella de este grupo.",
  imagen:"assets/Shot1.png",),
  JuegosBotella(6,
  descripcion: "Meterse en el baño durante una ronda con la persona",
  imagen:"assets/Shot3.png",),
  JuegosBotella(7,
  descripcion: "Ver el chat de whatsap por 30 segundo de la persona, si no se deja bebe 2 shots",
  imagen:"assets/Shot2.png",),
  JuegosBotella(8,
  descripcion: "Llamar a tu pareja y decirle que estás embarazada, si no toma 2 shots",
  imagen:"assets/Shot2.png",),
  JuegosBotella(9,
  descripcion: "Manda un emoji a tu jefe., si no toma um shot",
  imagen:"assets/Shot1.png",),
  JuegosBotella(0,
  descripcion: "Admite cuál es el mayor ridículo que has hecho nunca, si no toma un shot",
  imagen:"assets/Shot1.png",),
  JuegosBotella(11,
  descripcion: "Hazte pasar por la persona que giro la botella durante las siguientes 2 rondas del juego, si no toma tres shots",
  imagen:"assets/Shot3.png",),
  JuegosBotella(12,
  descripcion: "Demuestra un talento oculto que tengas.",
  imagen:"assets/Shot2.png",),
  JuegosBotella(13,
  descripcion: "Comenta una foto de Facebook de algún conocido. Haz que el comentario sea algo picante.",
  imagen:"assets/Shot3.png",),
  JuegosBotella(14,
  descripcion: "Enviar una foto sugerente a algún contacto de WhatsApp que elija el resto del grupo.",
  imagen:"assets/Shot1.png",),
  JuegosBotella(15,
  descripcion: "Bebe un chupito de tequila de la parte del cuerpo de la persona que giro la botella, si no se deja tres shots.",
  imagen:"assets/Shot3.png",),
  JuegosBotella(16,
  descripcion: "Cuenta un sueño erótico que hayas tenido y que recuerdes.",
  imagen:"assets/Shot1.png",),
  JuegosBotella(17,
  descripcion: "Admítelo: ¿alguna vez has deseado estar con alguna persona del grupo?",
  imagen:"assets/Shot2.png",),
  JuegosBotella(18,
  descripcion: "Pásate un cubo de hielo con otra persona durante un minuto hasta que se deshaga.",
  imagen:"assets/Shot3.png",),
  JuegosBotella(19,
  descripcion: "Pasa la lengua por el cuello de alguien del grupo.",
  imagen:"assets/Shot1.png",),
  JuegosBotella(20,
  descripcion: "Muestra cuál es tu juguete preferido.",
  imagen:"assets/Shot1.png",),
  JuegosBotella(21,
  descripcion: "Busca por Internet alguna postura extraña que desconozcas e intenta imitarla con los objetos que tengas a mano.",
  imagen:"assets/Shot2.png",),
  JuegosBotella(22,
  descripcion: "Susurra algo atrevido y sugerente al oído de otra persona.",
  imagen:"assets/Shot1.png",),
  JuegosBotella(23,
  descripcion: "Sé la mascota del que giro la botella durante los siguientes 5 minutos.",
  imagen:"assets/Shot3.png",),
  JuegosBotella(24,
  descripcion: "Bailale al que giro la botella",
  imagen:"assets/Shot1.png",),
  JuegosBotella(25,
  descripcion: "Deja que el que giro la botella te haga un nuevo peinado.",
  imagen:"assets/Shot1.png",),
  JuegosBotella(26,
  descripcion: "Insulta durante 20 segundos.",
  imagen:"assets/Shot1.png",),
  JuegosBotella(27,
  descripcion: "Baila con una canción que el que giro la botella elija.",
  imagen:"assets/Shot1.png",),
  JuegosBotella(28,
  descripcion: "Rompe un huevos sobre tu cabeza.",
  imagen:"assets/Shot1.png",),
  JuegosBotella(29,
  descripcion: "Métete 1 cubo de hielo en los pantalones.",
  imagen:"assets/Shot1.png",),
  JuegosBotella(30,
  descripcion: "Si eres un chico, ponte maquillaje. Si eres una chica, quítate el maquillaje.",
  imagen:"assets/Shot1.png",),
  JuegosBotella(31,
  descripcion: "Representa la vida humana mediante un baile interpretativo.",
  imagen:"assets/Shot1.png",),
  JuegosBotella(32,
  descripcion: "Haz sonreír a todos los presentes (sí, todos).",
  imagen:"assets/Shot2.png",),
  JuegosBotella(33,
  descripcion: "Véndele un pedazo de basura a alguien del grupo. Usa tus mejores habilidades de vendedor",
  imagen:"assets/Shot1.png",),
  JuegosBotella(34,
  descripcion: "Imita a un famoso durante 1 minuto.",
  imagen:"assets/Shot1.png",),
  JuegosBotella(35,
  descripcion: "Elige a una persona y deja que te dé una bofetada.",
  imagen:"assets/Shot1.png",),
  JuegosBotella(36,
  descripcion: "Imita algún video de YouTube hasta que alguien adivine el nombre del video.",
  imagen:"assets/Shot1.png",),
  JuegosBotella(37,
  descripcion: "Publica tu fotografía menos favorecedora en alguna red social de tu elección.",
  imagen:"assets/Shot2.png",),
  JuegosBotella(38,
  descripcion: "Haz una cara graciosa y mantenla durante 2 minutos mientras el juego continúa.",
  imagen:"assets/Shot3.png",),
  JuegosBotella(39,
  descripcion: "Abre una bolsa o lo que tenga a la mano usando únicamente tu boca.",
  imagen:"assets/Shot1.png",),
  JuegosBotella(40,
  descripcion: "Actúa como animal durante 1 minuto. Alguien debe elegir el animal por ti.",
  imagen:"assets/Shot1.png",),
  

];