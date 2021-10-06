import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:todoey_flutter/models/task_model.dart';

String _textFieldValue = '';
//TODO : IF WE DECLARE OR STRING VALUE IN THE TOP OF THE CLASS AND MAKE IT PRIVATE WE CAN USE THIS ACROSS THIS FILE AND SOLVED BY MAKING IN PRIVATE BECAUSE STATE LESS WIDGET DELETES IT AND CANT MAKE A CHANGE IN IT

class AddTaskScreen extends StatelessWidget {

//  final Function onPressed;
//
//
//  AddTaskScreen({this.onPressed,});
//
//  @override
//  _AddTaskScreenState createState() => _AddTaskScreenState();
//}
//
//class _AddTaskScreenState extends State<AddTaskScreen> {



  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0x00FFFFFF),

//      height: 300,
      child: Padding(
        padding: const EdgeInsets.only(top: 10.0 ,right: 25,left: 25),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.cyan,
                fontSize: 20,
              ),
            ),
            Theme(
              data: ThemeData(
                primarySwatch: Colors.cyan,
              ),
              child: TextField(
                onChanged: (value){
                  _textFieldValue = value ;
                  print(_textFieldValue);

                  //TODO: we make this without state this does'nt need
                },
                textAlign: TextAlign.center,
                cursorColor: Colors.cyan,
//            autofocus: true,
              ),
            ),
            SizedBox(
              height: 14,
            ),
            FlatButton(
              onPressed: (){
                if (_textFieldValue != null) {
                  Provider.of<TaskData>(context, listen: false).addTask(
                      _textFieldValue);
                }
                print(_textFieldValue); // TODO : WORKS WITH VAL OUTSIDE OF ST LESS CLASS AND ALL OF ITS THINS
                _textFieldValue = null;
                Navigator.pop(context);
              },
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.cyan,
            )
          ],
        ),
      ),
    );
  }
}


//(value){
//set ...
//addedTaskName = value ;
//}
