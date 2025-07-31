import 'package:flutter/material.dart';
class SnackBarExample extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("Show snackbar"),
      centerTitle: true,
      backgroundColor: Colors.blueGrey,),
      body: Center(
        child: ElevatedButton(onPressed: (){
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content:Text("this is snack bar"),
            duration:Duration(seconds: 3),
            backgroundColor:Colors.green
          ));
        }, child: Text("Show snackbar")),
      ),
    );
  }
}