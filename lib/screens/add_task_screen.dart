import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String newTaskTitle='';

    return Container(
      color:Color(0xff2f5972),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft:Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.lightBlueAccent),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                )
              ),
              textAlign: TextAlign.center,
              onChanged:(newText){
                  newTaskTitle=newText;
              } ,
            ),
            SizedBox(height: 10.0,),
            TextButton(
                child: Text(
                    'Add',
                  style: TextStyle(
                    color:Colors.white,
                  ),
                ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent, // Background color
                padding: EdgeInsets.all(15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero, // Makes it a rectangle
                  ),// Padding inside the button
              ),
              onPressed: (){
                  context.read<TaskData>().addTask(newTaskTitle);
                  Navigator.pop(context);
              },
            ),
          ],
        ) ,
      ),
    );
  }
}
