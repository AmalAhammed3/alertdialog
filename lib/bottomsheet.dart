import 'package:flutter/material.dart';
class BottomsheetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Sheet"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(context: context, builder: (BuildContext context){
            return Container(
              height: 250,
              width: 400,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),labelText: "username",
                      ),
                    ),
                    SizedBox(height: 10,),
                    TextField(
                       decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),labelText: "password",
                      ),
                    ),
                    SizedBox(height: 10,),
                    ElevatedButton(onPressed: () {
                      Navigator.pop(context);
                    }, child: Text("submit"))
                  ],
                ),
              ),
            );
          });
        },
        child: Text("+"),),
    );
  }
}