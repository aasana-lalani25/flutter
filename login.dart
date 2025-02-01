import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
   TextEditingController txtemail = new TextEditingController();
   TextEditingController txtpass = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "MyApp",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/logo.png",
                height: 75,
                width: 75,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                controller: txtemail,
                decoration: InputDecoration(
                    labelText: "Enter email", icon: Icon(Icons.person)),
              ),
              TextField(
                controller: txtpass,
                decoration: InputDecoration(
                    labelText: "Enter password", icon: Icon(Icons.lock)),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton.icon(
                  onPressed: () {
                   String text=txtemail.text;
                   int count=0;
                   int len=text.length;

                   for (int i=0;i<len;i++){
                     String char=text[i].toLowerCase();
                     if(char=='a'||char=='e'||char=='i'||char=='o'||char=='u'){
                       count++;
                     }
                   }
                   print(count);
                   if(count%2==0){
                      print("Success");
                   }
                   else {
                     print("Fail");
                   }

                   int pass=int.parse(txtpass.text);
                   int temp=pass;
                   int sum=0;
                   int len1=pass.toString().length;

                   while(temp!=0){
                     int digit=temp%10;
                     sum +=pow(digit,len1);
                     temp=(temp/10).toInt();
                   }
                   if (sum==num){
                     print("$pass is an amstrong");
                   }
                   else{
                     print("else not amstrong");
                   }
                  },
                  icon: Icon(Icons.login),
                  label: Text("Login")),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: () {}, child: Text("Forget Password")),
                  ElevatedButton(onPressed: () {}, child: Text("SignUp"))
                ],
              )
            ],
          ),
        ));
  }
}
