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
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Row(
              //to separate elements in row
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("What would you like to eat?",
                      style: TextStyle(fontSize: 18)),
                ),
                IconButton(
                    icon: Icon(Icons.notifications_none), onPressed: () {})
              ],
            )
          ],
        ),
      ),
    );
  }
}
