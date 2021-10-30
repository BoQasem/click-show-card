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
  String name = 'Qasem';
  String email = "qasem@gamil.com";
  String phone = "01000000011";
  int counter = 0;

  void click() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          body: ListView(
            children: [
            Container(
              color: Colors.blue,
              height: 68,
              child: Container(
                alignment: AlignmentDirectional.topEnd,
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(vertical: 7),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      click();
                    });
                  },
                  icon: Icon(
                    Icons.add,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            for (int i = 0; i < counter; i++)
              OurCard(name: name, email: email, phone: phone),
          ])),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
