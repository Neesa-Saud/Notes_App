import 'package:flutter/material.dart';
import 'package:noteapp/models/note_models.dart';
import 'package:provider/provider.dart';

class AddNoteScreen extends StatefulWidget {
  const AddNoteScreen({super.key});

  @override
  State<AddNoteScreen> createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _desController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          centerTitle: true,
          title: const Text("Add Note", style: TextStyle(fontSize: 30)),
        ),
        body: Container(
          child: Column(
            children: [
              SizedBox(height: 20),
              TextField(
                controller: _titleController,
                decoration: const InputDecoration(
                  labelText: "Title",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _desController,
                decoration: const InputDecoration(
                  labelText: "Description",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_titleController.text.isNotEmpty &&
                      _desController.text.isNotEmpty) {
                    Provider.of<NoteProvider>(
                      context,
                      listen: false,
                    ).addNote(_titleController.text, _desController.text);
                    Navigator.pop(context);
                  }
                },
                child: Text('Save Note'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
