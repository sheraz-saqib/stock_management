import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ShowAndHideAppBarProvider with ChangeNotifier {
  bool _visibleAppBar = true;
  final ScrollController _scrollController = ScrollController();
  bool get visibleAppBar => _visibleAppBar;
  ScrollController get scrollController => _scrollController;

  void showVisible() {
    _visibleAppBar = true;
  }

  void unvisible() {
    _visibleAppBar = false;
  }

  void scrollAppBarAnimationNav() {
    print('hell');
    _scrollController.addListener(() {
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        unvisible();
      } else {
        showVisible();
      }
      notifyListeners();
    });
  }
}
