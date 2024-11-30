import 'package:echo_note/echonote.dart';
import 'package:flutter/material.dart';

class AddNewnote extends StatefulWidget {
  @override
  State<AddNewnote> createState() => _AddnewnoteState();
}

class _AddnewnoteState extends State<AddNewnote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 9, 234, 16),
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Echonote()));
            },
            icon: Icon(Icons.arrow_back)),
        title: Text(
          "add new Note",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.check, color: Colors.white),
          )
        ],
      ),
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Title',
                labelStyle: TextStyle(
                  color: const Color.fromARGB(255, 9, 234, 16),
                ),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              maxLines: 25,
              decoration: InputDecoration(
                labelText: 'content',
                labelStyle: TextStyle(
                  color: const Color.fromARGB(255, 9, 234, 16),
                ),
                border: OutlineInputBorder(),
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}
