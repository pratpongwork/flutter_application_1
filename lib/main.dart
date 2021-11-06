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
      home: MyHomePage(),
      theme: ThemeData(primarySwatch: Colors.pink),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "สวัสดี",
              style: TextStyle(
                fontSize: 25,
                color: Colors.blue,
              ),
            ),
            Image(
              image: NetworkImage(
                  "https://cdn.pixabay.com/photo/2021/10/19/10/56/cat-6723256__340.jpg"),
            ),
            Image(
              image: AssetImage("download.jpg"),
            )
          ],
        ),
      ),
    );
  }
}
