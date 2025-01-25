import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: contdemo()));
}

class contdemo extends StatelessWidget {
  const contdemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          child: Container(
            child: Text(
              "this is inside continer",
              style: TextStyle(fontSize: 30),
            ),
            padding: EdgeInsets.all(30),
            margin: EdgeInsets.all(40),
            color: Colors.red,
          ),
          color: Colors.blue,
          margin: EdgeInsets.all(50),
          padding: EdgeInsets.all(40)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
