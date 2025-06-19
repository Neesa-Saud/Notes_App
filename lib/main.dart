import "package:flutter/material.dart";
import "package:noteapp/models/note_models.dart";
import "package:noteapp/routes.dart";
import "package:provider/provider.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => NoteProvider())],
      child: MaterialApp(
        title: 'Note App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.pink),
        initialRoute: OurRoutes.home,
        routes: OurRoutes().getRoutes(),
      ),
    );
  }
}
