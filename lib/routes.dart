import "package:flutter/material.dart";
import "package:noteapp/screen/add_note_screen.dart";
import "package:noteapp/screen/home_screen.dart";
import "package:noteapp/screen/note_detail_screen.dart";

class OurRoutes {
  static const String home = "/";
  static const String addnote = "/add_note";
  static const String notedetail = "note_detail";
  Map<String, WidgetBuilder> getRoutes() {
    return {
      home: (context) => HomeScreen(),
      addnote: (context) => AddNoteScreen(),
      notedetail: (context) => NoteDetail(),
    };
  }
}
