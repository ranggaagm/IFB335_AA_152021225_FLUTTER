import 'package:flutter/material.dart';

void main() {
  runApp(NotesScreen());
}

class NotesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NotesPage(),
    );
  }
}

class NotesPage extends StatefulWidget {
  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  List<String> notes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notes App'),
        backgroundColor: Color(0xFF062AAA), // Set app bar color
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: notes.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(notes[index]),
                  onLongPress: () {
                    // Delete note on long press
                    setState(() {
                      notes.removeAt(index);
                    });
                  },
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Open a dialog to add a new note
          _showAddNoteDialog(context);
        },
        child: Icon(Icons.add),
        backgroundColor: Color(0xFF062AAA), // Set floating action button color
      ),
    );
  }

  // Function to show a dialog for adding a new note
  Future<void> _showAddNoteDialog(BuildContext context) async {
    String newNote = '';

    _handleAddNote() {
      setState(() {
        notes.add(newNote);
      });
      Navigator.of(context).pop();
    }

    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add a new note'),
          content: TextField(
            onChanged: (value) {
              newNote = value;
            },
            decoration: InputDecoration(
              hintText: 'Enter your note',
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // Close the dialog
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: _handleAddNote,
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }
}
