
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'dart:core';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.grey),
        home: HomeScreen()
    );
  }
}
  class HomeScreen extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        bottomNavigationBar: Image.asset('images/mcore.png'),
        backgroundColor: Colors.grey,
        appBar: AppBar(title: Text('Press the pickaxe to mine!')),
        body: FloatingActionButton(
          child: Image.asset('images/pickaxe.png'),
          onPressed: () {
            _navigateToNextScreen(context);
          },
        ),
      );
    }
  }

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => NewScreen()));
  }


class NewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(title: Text('Diamond!')),
      body: Center(
        child: Image.asset('images/diamondmc.png'),
      ),
    );
  }
}
