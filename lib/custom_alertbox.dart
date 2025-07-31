import 'package:flutter/material.dart';

class CustomAlertbox extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Custom Alert box"),
      centerTitle: true,
      backgroundColor: Colors.cyanAccent,),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            showDialog(context: context, builder: (BuildContext context){
            return Dialog(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),);
          });
          }, child: Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(15),
        
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Do you want to continue?",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("yes")),
                    SizedBox(width: 5,),
                    ElevatedButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("No"))
                  ],
                )
                
              ],
            ),
          )),
  
        ],
      ),
    );
  }
}