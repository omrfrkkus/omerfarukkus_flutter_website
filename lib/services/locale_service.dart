import 'package:flutter/material.dart';

class LocaleService extends ChangeNotifier {
  Locale _currentLocale = const Locale('en');

  Locale get currentLocale => _currentLocale;

  void changeLocale(String languageCode) {
    _currentLocale = Locale(languageCode);
    notifyListeners();
  }
}
