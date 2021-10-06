import 'package:flutter/material.dart';



class Data extends ChangeNotifier {
  String data = 'plus';
  Color color = Colors.orange;

  void changeValue(String newValue) {
    data = newValue;
    notifyListeners();
  }

  void changeColor(Color newValue) {
    color = newValue;
    notifyListeners();
  }
}
