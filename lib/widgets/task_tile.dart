import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class TaskTile extends StatelessWidget {

   final bool isChecked ;
   final String name;
   final Function onChanged;
   final Function onLongPress;

   TaskTile({ this.isChecked, this.name , this.onChanged,this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: onLongPress,
      title: Text(name, style: TextStyle(
        decoration:isChecked ? TextDecoration.lineThrough: null,
      ),),
      trailing: Checkbox(
        activeColor: Colors.cyan,
        value: isChecked,
        onChanged: onChanged,
      ),
    );
  }
}

//
//class TaskCheck extends StatelessWidget {
//
//  final bool isChecked;
//  final Function onChanged;
//
//  TaskCheck({this.isChecked,this.onChanged});
//
//  @override
//  Widget build(BuildContext context) {
//    return Checkbox(
//      activeColor: Colors.cyan,
//      value: isChecked,
//      onChanged: onChanged,
//    );
//  }
//}
