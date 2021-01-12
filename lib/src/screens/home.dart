import 'package:flutter/material.dart';
import '../widgets/commons.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: ListView(
        children: <Widget>[
          Text("What would you like to eat?", style: TextStyle(fontSize: 18))
        ],
      ),
    );
  }
}