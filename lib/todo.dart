import 'package:flutter/material.dart';
class ToDoExample extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("ToDo App"),
        
        backgroundColor: Colors.blueAccent,
      ),
       body: Center(child: Text("No Task Yet!")),
       
      
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
                        ),labelText: "Enter Task",
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                    ElevatedButton(onPressed: () {
                      Navigator.pop(context);
                    }, child: Text("Add")),
                    SizedBox(width: 5),
                    ElevatedButton(onPressed: () {
                      Navigator.pop(context);
                    }, child: Text("cancel")),
                      ],
                    ),
                  
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