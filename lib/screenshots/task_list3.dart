//import 'package:flutter/material.dart';
//import 'package:todoey_flutter/models/task_model.dart';
//import 'package:todoey_flutter/widgets/task_tile.dart';
//
//class TaskList extends StatefulWidget {
//
//  final List<Task> taskList;
//
//
//  // final String id ='mamama';
//
//  TaskList({this.taskList});
//
//  @override
//  _TaskListState createState() => _TaskListState();
//}
//
//class _TaskListState extends State<TaskList> {
//
//  // TODO: final List<Task> meTaskList = widget.taskList; //not working
//  // TODO: we cant use non statics in initializer
//
//  @override
//  Widget build(BuildContext context) {
//    return ListView.builder(
//      itemBuilder:(context, index) {
//        return TaskTile(
//            isChecked: widget.taskList[index].isDone,
//            name: widget.taskList[index].name,
//            onChanged: (value) {
//              setState(() {
//                widget.taskList[index].toggleDone();
//              });
//            });
//      } ,
//      itemCount: widget.taskList.length,
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