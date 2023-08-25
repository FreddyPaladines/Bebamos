
import 'package:flutter/foundation.dart';

class ListProvider with ChangeNotifier {
  List<String> listImage = [];
  List<String> list = [];
  int idioma=0;


  get listapersonaje {
    return list;
  }
  




  void addItem(String item) {
    list.add(item);
    notifyListeners();
  }
  void addItemImage(String item) {

    listImage.add(item);
    notifyListeners();
  }

  void deleteItem(int index) {
    list.removeAt(index);
    listImage.removeAt(index);
    notifyListeners();
  }



  List<int> newListEmoji = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
   
  final dataEmoji = [
     {"id" : 1, "Imagen" : "Emoji_1.png"},
     {"id" : 2, "Imagen" : "Emoji_2.png"},
     {"id" : 3, "Imagen" : "Emoji_3.png"},
     {"id" : 4, "Imagen" : "Emoji_4.png"},
     {"id" : 5, "Imagen" : "Emoji_5.png"},
     {"id" : 6, "Imagen" : "Emoji_6.png"},
     {"id" : 7, "Imagen" : "Emoji_7.png"},
     {"id" : 8, "Imagen" : "Emoji_8.png"},
     {"id" : 9, "Imagen" : "Emoji_9.png"},
     {"id" : 10, "Imagen" : "Emoji_10.png"},

  ];
  void shuffleemoji() {
    newListEmoji.shuffle();
    notifyListeners();

  }
  String seleccionaremoji(int counter) {
    notifyListeners();
    return dataEmoji[newListEmoji[counter]]["Imagen"].toString(); 
  }




}