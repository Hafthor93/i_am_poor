import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// flutter run --debug

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Image.asset('images/pickaxe.png'),

          backgroundColor: Colors.grey,
        ),
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Center(
              child: Text("Press the pickaxe to mine the diamond!",
                  style: TextStyle(color: Colors.white))),
        ),
        body: Center(
          child: Image.asset('images/mcore.png'),
        ),
      ),
    ),
  );
}


