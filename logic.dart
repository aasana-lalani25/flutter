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
                labelText: "enter number", icon: Icon(Icons.numbers))),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          int no = int.parse(txtuser.text);
          int count=0;
          if(no % 2 ==0){
            print(" no: " +no.toString() +" is even");
          }
          else{
            print(" no: " +no.toString() +" is odd");
          }

          for(int cntr=1; cntr<=no; cntr++){
            if(no % cntr==0){
              count++;
            }
          }
          if(count==2){
            print("no: "+ no.toString()+" is prime");
          }
          else{
            print("no: "+ no.toString()+" is not prime");
          }
        },
      ),
    );
  }
}
