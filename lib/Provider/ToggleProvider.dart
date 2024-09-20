import 'package:flutter/material.dart';

class Toggleprovider with ChangeNotifier{
  bool _togglevalue = true;
  bool get togglevalue => _togglevalue;

  void setToggleValue(){
    _togglevalue = !_togglevalue;
    notifyListeners();
  }
}