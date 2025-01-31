import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp2()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("this is text"),
            Container(
                child: Text("this is contianer"),
                padding: EdgeInsets.all(30),
                color: Colors.blue),
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ));
  }
}

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              child: Text("1"),
              color: Colors.cyanAccent,
              padding: EdgeInsets.all(20),
            ),
            Container(
              child: Text("2"),
              color: Colors.red,
              padding: EdgeInsets.all(30),
            ),
            Container(
              child: Text("3"),
              color: Colors.blueAccent,
              padding: EdgeInsets.all(40),
            )
          ],
        ));
  }
}
