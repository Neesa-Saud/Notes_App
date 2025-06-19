import 'package:flutter/material.dart';

class Note {
  final String title;
  final String description;
  Note({required this.title, required this.description});
}

class NoteProvider extends ChangeNotifier {
  List<Note> notes = [];
  List<Note> get note => notes;
  void addNote(String title, String description) {
    notes.add(Note(title: title, description: description));
    notifyListeners();
  }
}
