//import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
//import 'package:todoey_flutter/widgets/task_list.dart';
//import 'package:todoey_flutter/screens/add_task_modal.dart';
//import 'package:todoey_flutter/models/task_model.dart';
//import 'package:todoey_flutter/widgets/task_tile.dart';
//
//class TasksScreen extends StatefulWidget {
//  @override
//  _TasksScreenState createState() => _TasksScreenState();
//}
//
//class _TasksScreenState extends State<TasksScreen> {
//  List<Task> meTaskList = [
//    Task(name: ' buy shits '),
//    Task(name: ' buy milk '),
//    Task(name: ' buy pants '),
//    Task(name: ' buy man '),
//  ];
//
//  String addedTaskName;
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      backgroundColor: Colors.cyan,
//      floatingActionButton: FloatingActionButton(
//        child: Icon(Icons.add),
//        onPressed: () {
//          //add some shit
//          showModalBottomSheet(
//              shape: RoundedRectangleBorder(
//                borderRadius: BorderRadius.only(
//                  topLeft: Radius.circular(30),
//                  topRight: Radius.circular(30),
//                ),
//              ),
//              context: context,
//              builder: (context) => AddTaskScreen(
//                onChanged: (value) {
//                  setState(() {
//                    addedTaskName = value;
//                  });
//                },
//                onPressed:
//                    (){
//                  setState(() {
//                    meTaskList.add(Task(name: addedTaskName));
//                  });
//                }
//                ,));
//        },
//      ),
//      body: Column(
//        crossAxisAlignment: CrossAxisAlignment.start,
//        children: <Widget>[
//          Container(
//            padding: EdgeInsets.only(top: 60, right: 30, left: 30, bottom: 30),
//            child: Column(
//              crossAxisAlignment: CrossAxisAlignment.start,
//              children: <Widget>[
//                CircleAvatar(
//                  child: Icon(
//                    Icons.list,
//                    size: 40,
//                    color: Colors.cyan,
//                  ),
//                  radius: 30,
//                  backgroundColor: Colors.white,
//                ),
//                SizedBox(
//                  height: 20,
//                ),
//                Text(
//                  'Todoey',
//                  style: TextStyle(
//                      color: Colors.white,
//                      fontSize: 35,
//                      fontWeight: FontWeight.w700),
//                ),
//                Text(
//                  '12 tasks',
//                  style: TextStyle(color: Colors.white, fontSize: 16),
//                )
//              ],
//            ),
//          ),
//          Expanded(
//            child: Container(
//              decoration: BoxDecoration(
//                  color: Colors.white,
//                  borderRadius: BorderRadius.only(
//                      topRight: Radius.circular(20),
//                      topLeft: Radius.circular(20))),
//              child: Padding(
//                padding: const EdgeInsets.only(left: 30, right: 20),
//                child: TaskList(
//                  taskListLength: meTaskList.length,
//                  taskListBuilder: (context, index) {
//                    return TaskTile(
//                        isChecked: meTaskList[index].isDone,
//                        name: meTaskList[index].name,
//                        onChanged: (value) {
//                          setState(() {
//                            meTaskList[index].toggleDone();
//                          });
//                        });
//                  },
//                ),
//              ),
//            ),
//          ),
//        ],
//      ),
//    );
//  }
//}
