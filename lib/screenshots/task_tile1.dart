//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//
//
//class TaskTile extends StatefulWidget {
//
//  @override
//  _TaskTileState createState() => _TaskTileState();
//}
//
//class _TaskTileState extends State<TaskTile> {
//
//  bool isChecked = false;
//
//  @override
//  Widget build(BuildContext context) {
//    return ListTile(
//      title: Text('this is a task', style: TextStyle(
//        decoration:isChecked ? TextDecoration.lineThrough: null,
//      ),),
//      trailing: TaskCheck(isChecked: isChecked,onChanged:(value){
//        setState(() {
//          isChecked = value;
//        });
//
//      }
//        ,),
//    );
//  }
//}
//
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
