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
  String txt="";
  TextEditingController txt1 = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              TextField(
                controller: txt1,
                decoration: InputDecoration(
                  labelText: "Enter text",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    txt= txt1.text;
                    setState(() {});
                  },
                  child: Text("print text")),
              SizedBox(
                height: 20,
              ),
              Text(
                txt,
                style: TextStyle(fontSize: 30, color: Colors.redAccent),
              )
            ],
          ),
        ));
  }
}
