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
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "สวัสดี",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.blue,
                  ),
                ),
                Text(
                  num.toString(),
                  style: TextStyle(fontSize: 60),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      num++;
                    });
                  },
                  child: Icon(Icons.add),
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      num == 0;
                    });
                  },
                  child: Icon(Icons.exposure_zero),
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      num--;
                    });
                  },
                  child: Icon(Icons.delete),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
