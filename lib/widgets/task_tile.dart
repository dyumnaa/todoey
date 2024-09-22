import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task.dart';

class TaskTile extends StatelessWidget {

  final bool isChecked;

  final String taskTitle;

  final void Function(bool?) checkboxCallback;

  final void Function()? longPressCallback;

  TaskTile({required this.isChecked, required this.taskTitle,required this.checkboxCallback,this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
        title: Text(
          taskTitle,
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null,
          ),
        ),
        trailing: Checkbox(
          value: isChecked,
          activeColor: Colors.lightBlueAccent,
          /*onChanged: toggleCheckboxState,*/ // Pass the callback directly
          onChanged: checkboxCallback,
        ),
    );
  }
}



