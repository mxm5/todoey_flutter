//import 'package:flutter/material.dart';
//import 'package:todoey_flutter/models/task_model.dart';
//
//class TaskList extends StatelessWidget {
//
//  final int taskListLength;
//
//
//  final Function taskListBuilder;
//
//  TaskList({this.taskListLength,this.taskListBuilder});
//
//  @override
//  Widget build(BuildContext context) {
//    return ListView.builder(
//      itemBuilder:taskListBuilder ,
//      itemCount: taskListLength,
//    );
//  }
//}
//
////
////= [
////Task(name: ' buy shits '),
////Task(name: ' buy milk '),
////Task(name: ' buy pants '),
////Task(name: ' buy man '),
////]
//
//
//
////(val) {
////setState(() {
//////class val = func val;
////taskList[index].toggleDone();
////});
////}
//
//
////
////(context, index) {
////return TaskTile(
////isChecked: taskList[index].isDone,
////name: taskList[index].name,
////onChanged: onChecked,
////);
////}