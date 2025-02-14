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
  TextEditingController num1 = new TextEditingController();
  TextEditingController num2 = new TextEditingController();
  String result = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Calculator"), centerTitle: true),
        body: Column(
          children: [
            TextField(
              controller: num1,
              decoration: InputDecoration(label: Text("Number1")),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: num2,
              decoration: InputDecoration(label: Text("Number1")),
            ),
            SizedBox(
              height: 20,
            ),
            Text("Result: $result",
                style: TextStyle(color: Colors.red, fontSize: 20)),
            SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      int n1 = int.parse(num1.text);
                      int n2 = int.parse(num2.text);
                      setState(() {
                        result = (n1 + n2).toString();
                      });
                    },
                    child: Text("+")),
                ElevatedButton(
                    onPressed: () {
                      int n1 = int.parse(num1.text);
                      int n2 = int.parse(num2.text);
                      setState(() {
                        result = (n1 - n2).toString();
                      });
                    },
                    child: Text("-")),
                ElevatedButton(
                    onPressed: () {
                      int n1 = int.parse(num1.text);
                      int n2 = int.parse(num2.text);
                      setState(() {
                        result = (n1 / n2).toString();
                      });
                    },
                    child: Text("/")),
                ElevatedButton(
                    onPressed: () {
                      int n1 = int.parse(num1.text);
                      int n2 = int.parse(num2.text);
                      setState(() {
                        result = (n1 * n2).toString();
                      });
                    },
                    child: Text("*")),
              ],
            )
          ],
        ));
  }
}
