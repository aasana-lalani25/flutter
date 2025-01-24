import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: firstapp()));
}

class firstapp extends StatelessWidget {
  const firstapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(child: Text("icon"))),
        body: Center(
          child: ElevatedButton.icon(onPressed: () {

          }, icon:Icon(Icons.call), label: Text("call")),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            int count=0;
            for( int i=1;i<=50;++i){
              for(int j=2;j<i;j++){
                if(i%j==0){
                  count++;
                  break;
                }
              }
              if(count==0 && i!=1){
                count++;
                print("$i");
              }
            }
          },
          child: Icon(Icons.call),
        ));
  }
}
