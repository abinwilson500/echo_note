import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Echonote extends StatefulWidget {
  @override
  State<Echonote> createState() => _EchonoteState();
}

class _EchonoteState extends State<Echonote> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 66, 163, 69),
          title: Text(
            "Echo Note",
            style: TextStyle(
                color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          bottom: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              indicatorColor: Colors.white,
              tabs: <Widget>[
                Tab(text: 'Text'),
                Tab(text: 'list'),
                Tab(text: 'Task'),
              ]),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 69, 163, 72),
          onPressed: () {},
          child: Text('+'),
        ),
      ),
    );
  }
}
