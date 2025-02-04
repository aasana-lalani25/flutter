import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: profile(),
  ));
}

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
            "Profile",
          ),
          centerTitle: true),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Image.asset("assets/profile.jpg"),
            ),
            Text(
              "Aasana Lalani",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.blue),
            ),
            Text(
              "Web designer",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text("Hello! this is Aasana here .",
                style: TextStyle(fontSize: 20)),
            SizedBox(height: 5),
            Text("I am full stack web developer and working in flutter.",
                style: TextStyle(fontSize: 20)),
            SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "2435",
                  style: TextStyle(color: Colors.black38, fontSize: 20),
                ),
                Text(
                  "465",
                  style: TextStyle(color: Colors.black38, fontSize: 20),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "followers",
                  style: TextStyle(color: Colors.black38, fontSize: 20),
                ),
                Text(
                  "following",
                  style: TextStyle(color: Colors.black38, fontSize: 20),
                ),
              ],
            ),
            SizedBox(height: 30),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Follow",
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
