import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController txtnm = new TextEditingController();
  TextEditingController txtcnt = new TextEditingController();
  List<int> element = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("List")),
        body: Column(
          children: [
            TextField(
              controller: txtnm,
              decoration: InputDecoration(label: Text("Enter list element:")),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      int ele = int.parse(txtnm.text);
                      element.add(ele);
                      setState(() {});
                    },
                    child: Text("add element")),
                Text(
                  "The no. Of Elements are:" + element.length.toString(),
                  style: TextStyle(color: Colors.redAccent),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: txtcnt,
              decoration: InputDecoration(label: Text("Enter the index:")),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      int eleno = int.parse(txtcnt.text);
                      element..indexOf(2);
                      setState(() {});
                    },
                    child: Text("Index")),
                Text("The element at index is:"+ txtcnt.toString()),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(label: Text("Enter the element:")),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
