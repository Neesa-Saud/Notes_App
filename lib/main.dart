import "package:flutter/material.dart";
import "package:noteapp/routes.dart";
import "package:noteapp/screen/home_screen.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Note App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink),
      initialRoute: OurRoutes.home,
      routes: OurRoutes().getRoutes(),
    );
  }
}
