import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: contdemo()));
}

class contdemo extends StatelessWidget {
  contdemo({super.key});

  TextEditingController txtuser = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container( margin: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
        child: TextField(
            controller: txtuser,
            decoration: InputDecoration(
                labelText: "enter username", icon: Icon(Icons.account_circle))),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print(txtuser.text);
        },
      ),
    );
  }
}
