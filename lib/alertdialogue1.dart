import 'package:flutter/material.dart';

class AlertBox extends StatelessWidget{
  AlertBox({super.key});

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Alert Box"),
      centerTitle: true,
      backgroundColor: Colors.blue,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              showDialog(context: context, builder: (BuildContext context){
                return AlertDialog(
                  title: Text("Alert BOx"),
                  content: Text("Do you want to continue"),
                  actions: [
                    ElevatedButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("yes")),
                    ElevatedButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("No"))
                  ],
                );
              });
            }, child: Text("Show alert box"))
          ],
        ),
      ),
    );
  }
}