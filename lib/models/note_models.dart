import 'package:flutter/material.dart';

class NoteProvider extends ChangeNotifier {
  String Title = "";
  String Description = "";
  void addTitle(String title) {
    Title = title;
    notifyListeners();
  }

  void addDescription(String description) {
    Description = description;
    notifyListeners();
  }
}
