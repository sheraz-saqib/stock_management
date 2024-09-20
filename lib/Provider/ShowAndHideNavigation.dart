import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ShowAndHideNavigationProvider with ChangeNotifier {
  bool _visibleNavigationBar = true;
  final ScrollController _scrollController = ScrollController();
  bool get visibleNavigation => _visibleNavigationBar;
  ScrollController get scrollController => _scrollController;

  void showVisibleNav() {
    _visibleNavigationBar = true;
  }

  void unvisibleNav() {
    _visibleNavigationBar = false;
  }

  void scrollAnimationNav() {
    _scrollController.addListener(() {
    
      if (_scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        showVisibleNav();
      } else {
        unvisibleNav();
      }
      notifyListeners();
    });
  }
}
