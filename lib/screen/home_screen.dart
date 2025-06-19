import "package:flutter/material.dart";
import "package:noteapp/models/note_models.dart";
import "package:noteapp/routes.dart";
import "package:provider/provider.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NoteProvider>(
      builder: (context, notemodel, child) => Scaffold(
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
            padding: EdgeInsets.all(20),
            itemCount: notemodel.notes.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  shape: Border.all(color: Colors.pinkAccent, width: 2),
                  title: Text(notemodel.notes[index].title),
                  subtitle: Text(notemodel.notes[index].description),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
