import 'dart:core';

class JuegosCarta {
  final int position;
  final String nombre;
  final String descripcion;
  final String imaganes;

  JuegosCarta (
    this.position, {
    required this.nombre,
    required this.descripcion,
    required this.imaganes

    });
}

List<JuegosCarta> juegos = [
  JuegosCarta(1,
  nombre: "Kings",
  descripcion: "Mientras el Tercer Reich se derrumba a su alrededor, la secretaria de Adolfo Hitler presencia los últimos diez días de la vida del dictador nazi.",
  imaganes:  "Hola2",


  ),
  JuegosCarta(2,
  nombre: "Kings1",
  descripcion: "Política : la caída de Bucaram y el incierto camino de la reforma política (Coyuntura). En: Ecuador Debate. Globalización: Realidades y Falacia",
  imaganes:  "Hola2"

  ),
  JuegosCarta(3,
  nombre: "Kings2",
  descripcion: "La Caida. Albert Camus. Página 2 de 45 obra maestra. Pues bien, yo estuve presente cuando el amo de este lugar lo recibió y luego cuando lo cedió.",
  imaganes:  "Hola2"
  

  ),
  

  

];
