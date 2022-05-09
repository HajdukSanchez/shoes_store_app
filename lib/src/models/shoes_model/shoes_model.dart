import 'package:flutter/material.dart';

class ShoesModel with ChangeNotifier {
  String _assetImage = "assets/images/azul.png"; // Image of the shoe selected
  double _shoesSize = 9.0; // Size of the shoe selected

  String get assetImage => _assetImage;
  double get shoesSize => _shoesSize;

  set assetImage(String value) {
    _assetImage = value;
    notifyListeners();
  }

  set shoesSize(double value) {
    _shoesSize = value;
    notifyListeners();
  }
}
