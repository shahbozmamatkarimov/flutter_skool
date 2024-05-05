import 'package:flutter/material.dart';

class BottomBarProvider with ChangeNotifier {
  bool _bottomBar = true;

  hideBottomBar() {
    _bottomBar = false;
    notifyListeners();
  }

  showBottomBar() {
    _bottomBar = true;
    notifyListeners();
  }

  get bottomBar => _bottomBar;
}
