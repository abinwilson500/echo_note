import 'package:echo_note/add_newlist.dart';
import 'package:echo_note/add_newnote.dart';
import 'package:echo_note/add_newtask.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Echonote extends StatefulWidget {
  @override
  State<Echonote> createState() => _EchonoteState();
}

class _EchonoteState extends State<Echonote> 
{
  bool isFABVisble = true;
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
        floatingActionButton: isFABVisble
            ? FloatingActionButton(
                onPressed: () {
                  setState(() {
                    isFABVisble = false;
                  });
                },
                backgroundColor: const Color.fromARGB(255, 69, 163, 72),
                child: Text(
                  '+',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              )
            : null,
        floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
        body: Stack(
          children: <Widget>[
            if (!isFABVisble)
              Positioned(
                right: 30,
                bottom: 20,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    FloatingActionButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    AddNewtask()));
                      },
                      mini: true,
                      backgroundColor: const Color.fromARGB(255, 9, 234, 16),
                      child: Icon(Icons.add_task),
                    ),
                    SizedBox(height: 10),
                    FloatingActionButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    AddNewlist()));
                      },
                      backgroundColor: const Color.fromARGB(255, 9, 234, 16),
                      mini: true,
                      child: Icon(Icons.check_box),
                    ),
                    SizedBox(height: 10),
                    FloatingActionButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    AddNewnote()));
                      },
                      backgroundColor: const Color.fromARGB(255, 9, 234, 16),
                      child: Icon(Icons.menu),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
