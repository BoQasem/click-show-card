import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> cards = [];

  String name = 'Qasem';
  String email = "qasem@gamil.com";
  String phone = "01000000011";
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(actions: [
          IconButton(
            onPressed: () {
              setState(() {
                cards.add(OurCard(name: name, email: email, phone: phone));
              });
            },
            icon: Icon(Icons.add, size: 30),
          ),
        ]),

        body: ListView.builder(
          itemCount: cards.length,
          itemBuilder: (context, index) {
            return cards[index];
          },
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
