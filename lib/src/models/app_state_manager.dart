import 'dart:async';

import 'package:flutter/material.dart';

class AppStateManager extends ChangeNotifier {
  bool _initialized = false;
  bool _loggedIn = false;

  bool get isInitialized => _initialized;
  bool get isLoggedIn => _loggedIn;
  void initializeApp() async {
    Timer(
      const Duration(milliseconds: 2000),
      () {
        _initialized = true;

        notifyListeners();
      },
    );
  }

  void login(String username, String password) {
    _loggedIn = true;

    notifyListeners();
  }
}
