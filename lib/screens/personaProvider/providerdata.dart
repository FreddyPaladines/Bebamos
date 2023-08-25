

import 'package:flutter/material.dart';

class Datajugadores with ChangeNotifier {

  var generoDrownList=["Masculino", "Femenino"];
  var selectedCGenreo;

  setGeneroValue(value){
    selectedCGenreo= value;
    notifyListeners();
  }

  
  
  }


class ListProvider with ChangeNotifier {
  List<String> list = [];

  void addItem(String item) {
    list.add(item);
    notifyListeners();
  }

  void deleteItem(int index) {
    list.removeAt(index);
    notifyListeners();
  }
}