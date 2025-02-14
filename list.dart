import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("List")),
        body: Column(
          children: [
            TextField(
              decoration: InputDecoration(label: Text("Enter list elemenet")),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(onPressed: () {}, child: Text("add element")),
                Text("The no. Of Elemets are:")
              ],
            ),
            TextField(
              decoration: InputDecoration(label: Text("enter the index")),
            ),
            Row(
              children: [
                ElevatedButton(onPressed: () {}, child: Text("Index")),
                Text("The element at index is:"),
              ],
            ),
            TextField(
              decoration: InputDecoration(label: Text("enter the element:")),
            ),
            Row(
              children: [
                ElevatedButton(onPressed: () {}, child: Text("first")),
                ElevatedButton(onPressed: () {}, child: Text("next")),
                ElevatedButton(onPressed: () {}, child: Text("previous")),
                ElevatedButton(onPressed: () {}, child: Text("last"))
              ],
            )
          ],
        ));
  }
}
