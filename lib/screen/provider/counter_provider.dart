

import 'package:flutter/material.dart';

class counter_Provider extends ChangeNotifier
{
  int i = 0;

  void increament()
  {
    i++;
    notifyListeners();
  }

  void decreament()
  {
    i--;
    notifyListeners();
  }

  void double()
  {
    i = i*2;
    notifyListeners();
  }

  void tripal()
  {
    i = i*3;
    notifyListeners();
  }

  void fourx()
  {
    i = i*4;
    notifyListeners();
  }

}