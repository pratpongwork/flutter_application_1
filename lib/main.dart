// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My app",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello"),
        ),
        body: Center(
          child: Text(
            "สวัสดี",
            style: TextStyle(
              fontSize: 25,
              color: Colors.blue,
            ),
          ),
        ),
      ),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}
