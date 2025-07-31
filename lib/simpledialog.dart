import 'package:flutter/material.dart';
class SimpleDialogueExample extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Simple Dialog alertbox"),
      centerTitle: true,),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: (){
            showDialog(context: context, builder: (BuildContext context){
              return SimpleDialog(
                title: Text("do you want to continue?"),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: Text("yes")),
                      SizedBox(width: 5,),
                       ElevatedButton(onPressed: (){
                        Navigator.pop(context);
                      }, child: Text("no")),
                    ],
                  )
                ],
              );
            });
          }, child: Text("show simple dialog box"))
        ],),
      ),
    );
  }
}