import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey_flutter/models/task_model.dart';

class AddTaskScreen extends StatefulWidget {

  final Function onPressed;


  AddTaskScreen({this.onPressed,});

  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {

  String textFieldValue;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  textFieldValue = value ;
                  print(textFieldValue);
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
//                onPressed(textFieldValue);
// it did not save the string until we made the widget state full
//              widget.onPressed('man');
//              print(textFieldValue);
                widget.onPressed(textFieldValue);
// and because we made it st full then we had to restart it
// then it worked but me being smart understood this thing right
// at the start.
                // TODO very important how to trigger some func
                // with no value
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
