//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'package:todoey_flutter/models/task_model.dart';
//
//class AddTaskScreen extends StatelessWidget {
//
//  final Function onPressed;
//  final Function onChanged;
//
//  AddTaskScreen({this.onPressed,this.onChanged,});
//
//
//  @override
//  Widget build(BuildContext context) {
//    return Container(
//      child: Padding(
//        padding: const EdgeInsets.only(top: 10.0 ,right: 25,left: 25),
//        child: Column(
//          crossAxisAlignment: CrossAxisAlignment.stretch,
//          children: <Widget>[
//            Text(
//              'Add Task',
//              textAlign: TextAlign.center,
//              style: TextStyle(
//                color: Colors.cyan,
//                fontSize: 20,
//              ),
//            ),
//            Theme(
//              data: ThemeData(
//                primarySwatch: Colors.cyan,
//              ),
//              child: TextField(
//                onChanged: onChanged,
//                textAlign: TextAlign.center,
//                cursorColor: Colors.cyan,
////            autofocus: true,
//              ),
//            ),
//            SizedBox(
//              height: 14,
//            ),
//            FlatButton(
//              onPressed: onPressed,
//              child: Text(
//                'Add',
//                style: TextStyle(color: Colors.white),
//              ),
//              color: Colors.cyan,
//            )
//          ],
//        ),
//      ),
//    );
//  }
//}
//
//
////(value){
////set ...
////addedTaskName = value ;
////}
