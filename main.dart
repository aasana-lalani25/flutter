import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: firstapp()));
}

class firstapp extends StatelessWidget {
  const firstapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: Text("icon"))),
        body: Center(child: Image.asset("assets/one.png")),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.call),
        ));
  }
}
