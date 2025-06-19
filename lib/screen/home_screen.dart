import "package:flutter/material.dart";
import "package:noteapp/routes.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        centerTitle: true,
        title: const Text("Notes App", style: TextStyle(fontSize: 30)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, OurRoutes.addnote);
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile();
          },
        ),
      ),
    );
  }
}
