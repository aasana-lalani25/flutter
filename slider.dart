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
  bool swval = false;
  bool ckval1 = true;
  bool ckval2 = true;
  bool ckval3 = true;

  double slideval1 = 0;
  double slideval2 = 0;
  double slideval3 = 0;

  Color bgcolor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bgcolor,
        appBar: AppBar(
          title: Text("change the color"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(
              value: swval,
              onChanged: (value) {
                swval = value;
                setState(() {});
              },
            ),
            Checkbox(
              value: ckval1,
              onChanged: (value) {
                ckval1 = value!;
                if (swval == true) {
                  if (swval == true) {
                    bgcolor = Colors.red;
                  }
                }
                setState(() {});
              },
            ),
            Text(
              "Red",
              style: TextStyle(color: Colors.red),
            ),
            Checkbox(
              value: ckval2,
              onChanged: (value) {
                ckval2 = value!;
                if (swval == true) {
                  if (swval == true) {
                    bgcolor = Colors.green;
                  }
                }
                setState(() {});
              },
            ),
            Text(
              "Green",
              style: TextStyle(color: Colors.green),
            ),
            Checkbox(
              value: ckval3,
              onChanged: (value) {
                ckval3 = value!;
                if (swval == true) {
                  if (swval == true) {
                    bgcolor = Colors.blue;
                  }
                }
                setState(() {});
              },
            ),
            Text(
              "blue",
              style: TextStyle(color: Colors.blue),
            ),
            Slider(
              min: 0,
              max: 255,
              value: slideval1,
              onChanged: (value) {
                slideval1 = value;
                bgcolor=Color.fromRGBO(slideval1.toInt(), slideval2.toInt(), slideval3.toInt(), 0.1);
                setState(() {});
              },
            ),
            Slider(
              min: 0,
              max: 255,
              value: slideval2,
              onChanged: (value) {
                slideval2 = value;
                bgcolor=Color.fromRGBO(slideval1.toInt(), slideval2.toInt(), slideval3.toInt(), 0.1);
                setState(() {});
              },
            ),
            Slider(
              min: 0,
              max: 255,
              value: slideval3,
              onChanged: (value) {
                slideval3 = value;
                bgcolor=Color.fromRGBO(slideval1.toInt(), slideval2.toInt(), slideval3.toInt(), 0.1);
                setState(() {});
              },
            )
          ],
        ));
  }
}
